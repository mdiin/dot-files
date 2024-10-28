;;- Typescript

(use-package prettier)

(add-hook 'typescript-ts-mode 'eglot-ensure)

(defun myconf/setup-typescript-mode ()
  "Setup of Typescript mode."
  (interactive)
  (setq ))

(add-hook 'typescript-ts-mode 'myconf/setup-typescript-mode)
