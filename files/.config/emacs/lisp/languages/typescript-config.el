;;- Typescript

(use-package prettier)

(defun config/typescript-setup ()
  (eglot-ensure)
  (config/maybe-treesit-install-language-grammar 'typescript))

(use-package typescript-ts-mode
  :ensure nil
  :mode "\\.ts\\'"
  :hook ((typescript-ts-mode . config/typescript-setup)))

(use-package tsx-ts-mode
  :ensure nil
  :mode "\\.tsx\\'")
