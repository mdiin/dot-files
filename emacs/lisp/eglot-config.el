;;- LSP

(defun my--eglot-flix-hook ()
  (eglot-ensure)
  (eglot-semtok-font-lock-init))

(use-package eglot
  :pin melpa-stable
  :hook ((clojure-mode . eglot-ensure)
         (flix-mode . my--eglot-flix-hook)
         )
  :bind (("C-c l a" . eglot-code-actions)
         ("C-c l r" . eglot-rename)
         ("C-c l f i" . eglot-find-implementation)
         ("C-c l f d" . eglot-find-declaration)
         ("C-c l f t" . eglot-find-typeDefinition)
         ("C-c l = =" . eglot-format-buffer)
         ("C-c l = r" . eglot-format))

  :init
  (setq eglot-managed-mode-hook (list (lambda () (eldoc-mode -1))))

  :config
  (add-to-list 'eglot-server-programs
               '(flix-mode . flix-mode-server-path))
  )

(use-package eglot-booster
  :after eglot
  :config (eglot-booster-mode)
  )

(use-package eldoc-box
  :bind (("C-c K" . eldoc-box-help-at-point)))

(use-package eglot-semtok
  :load-path "elpa/eglot-supplements/"
  :after eglot
  :hook ((eglot-connect . eglot-semtok-on-connected)))
