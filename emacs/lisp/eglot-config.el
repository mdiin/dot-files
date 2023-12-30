;;- LSP

(use-package eglot
  :pin melpa-stable
  :hook ((clojure-mode . eglot-ensure)
         (kotlin-mode . eglot-ensure))
  :bind (("C-c C-a" . eglot-code-actions))

  :init
  (setq eglot-managed-mode-hook (list (lambda () (eldoc-mode -1)))))

(use-package eldoc-box
  :bind (("C-c K" . eldoc-box-help-at-point)))
