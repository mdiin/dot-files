;;- Java

(use-package eglot-java-lombok
  :load-path "lisp/packages/"
  :autoload (eglot-java-lombok
             eglot-java-lombok-download))

(use-package eglot-java
  :requires eglot-java-lombok
)

(defun config/java-setup ()
  (config/maybe-treesit-install-language-grammar 'java)
  (eglot-ensure)
  (eglot-java-mode)
 (eglot-java-lombok)
  )

(add-to-list 'auto-mode-alist '("\\.java\\'" . java-ts-mode))

;; (add-hook 'java-mode-hook 'config/java-setup)

(add-hook 'java-ts-mode-hook 'config/java-setup)
