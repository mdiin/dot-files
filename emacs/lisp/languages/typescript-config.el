;;- Typescript

(use-package prettier)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))

(defun config/typescript-setup ()
  (eglot-ensure)
  (config/maybe-treesit-install-language-grammar 'typescript))

(add-hook 'typescript-ts-mode 'config/typescript-setup)
