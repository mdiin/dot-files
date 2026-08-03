;;- Typescript

(use-package prettier)

(defun config/typescript-setup ()
  (eglot-ensure)
  (config/maybe-treesit-install-language-grammar 'typescript)
  (setq-local eglot-server-programs
              (list '((typescript-mode typescript-ts-mode tsx-ts-mode tsx-mode) . ("npx" "typescript-language-server" "--stdio")))))

(use-package typescript-ts-mode
  :ensure nil
  :mode "\\.ts\\'"
  :hook ((typescript-ts-mode . config/typescript-setup)))

(use-package tsx-ts-mode
  :ensure nil
  :mode "\\.tsx\\'"
  :hook ((tsx-ts-mode . config/typescript-setup)))
