(require 'json)

(defun my--json-from-program-run (program &rest args)
  (let ((output-buffer (generate-new-buffer "*JSON Program Buffer*"))
        (json-output))
    (with-current-buffer output-buffer
      (erase-buffer)
      (apply 'call-process program nil t nil args)
      (goto-char (point-min))
      (setq json-output (json-read)))
    json-output))

(defun my--az-keyvault-secret (vault-name secret-name)
  (let ((result (my--json-from-program-run "az" "keyvault" "secret" "show" "--vault-name" vault-name "-n" secret-name)))
    (cdr (assoc 'value result))))

(defun my--az-postgres-db-string (keyvault username-secret password-secret jdbc-url-secret)
  (let* ((input (my--az-keyvault-secret keyvault jdbc-url-secret))
         (re-match (string-match "^jdbc:postgresql://\\([^:]+\\):\\([0-9]+\\)/\\([^?]+\\)" input))
         (host (match-string 1 input))
         (port (match-string 2 input))
         (database (match-string 3 input))
         (user (my--az-keyvault-secret keyvault username-secret))
         (password (my--az-keyvault-secret keyvault password-secret)))
    (concat "postgresql://" user ":" password "@" host ":" port "/" database)))

;; (my--az-postgres-db-string "vestasvoqakv" "tlib-datasource-username" "tlib-datasource-password" "tlib-datasource-jdbc-url")
