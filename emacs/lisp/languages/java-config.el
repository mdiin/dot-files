;;- Java

(use-package eglot-java)

(defun config/java-setup ()
  (config/maybe-treesit-install-language-grammar 'java)
  (eglot-ensure)
  (eglot-java-mode))

(add-to-list 'auto-mode-alist '("\\.java\\'" . java-ts-mode))

;; (add-hook 'java-mode-hook 'config/java-setup)

(add-hook 'java-ts-mode-hook 'config/java-setup)
