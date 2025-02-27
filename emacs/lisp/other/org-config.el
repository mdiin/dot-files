;;; Org

(use-package verb)

(use-package org
  :ensure nil
  :init
  (add-hook 'org-mode-hook (lambda () (variable-pitch-mode 1)))

  :bind (("C-c C-x :" . org-capture)
         ("C-c C-x C-:" . org-capture)
         ("C-c C-x c" . org-clock-out)
         ("C-c C-x C-c" . org-clock-out)
         ("C-c C-x r" . org-clock-in-last)
         ("C-c C-x C-r" . org-clock-in-last))
  :config
  (define-key org-mode-map (kbd "C-c C-r") verb-command-map)
  (set-face-attribute 'default nil :font "Fantasque Sans Mono" :weight 'light :height 120)
  (set-face-attribute 'fixed-pitch nil :font "Fantasque Sans Mono" :weight 'light :height 120)
  (set-face-attribute 'variable-pitch nil :font "Noto Sans" :weight 'light :height 1.3)
;  (set-face-attribute 'variable-pitch nil :font "Poppins" :weight 'light :height 1.3)
  (setq org-hide-emphasis-markers t)
  (dolist (face '((org-level-1 . (1.1 . nil))
                  (org-level-2 . (1.0 . nil))
                  (org-level-3 . (1.0 . nil))
                  (org-level-4 . (1.0 . nil))
                  (org-level-5 . (1.0 . nil))
                  (org-level-6 . (1.0 . nil))
                  (org-level-7 . (1.0 . nil))
                  (org-level-8 . (1.0 . nil))))
    (set-face-attribute (car face) nil :font "Noto Sans" :weight 'medium :height (cadr face) :foreground (cddr face)))

  ;; Make the document title a bit bigger
  (set-face-attribute 'org-document-title nil :font "Noto Sans" :weight 'bold :height 1.3)

  ;; Make sure certain org faces use the fixed-pitch face when variable-pitch-mode is on
  (set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-table nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-formula nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)

  ;; Tweaks to how org inserts
  (setq org-insert-heading-respect-content t)
  (setq org-log-into-drawer t)
  (setq org-log-done 'time)
  (setq org-M-RET-may-split-line '((default . nil)))
  (setq org-todo-keywords
        '((sequence "TODO(t)" "DOING(D!)" "WAIT(w!)" "|" "MEETING(m!)" "CANCEL(c!)" "DONE(d!)")))
  )

(require 'org-faces)

;; (use-package visual-fill-column
;;   :init
;;   (add-hook 'org-mode-hook 'visual-line-fill-column-mode)

;;   :config
;;   (setq visual-fill-column-width 110
;;         visual-fill-column-center-text 't)
;;   )

;; (use-package org-superstar
;;   :pin "nongnu"
;;   :init
;;   (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))
