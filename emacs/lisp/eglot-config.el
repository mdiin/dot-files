;;- LSP

(use-package eglot
  :pin melpa-stable
  :hook ((clojure-mode . eglot-ensure)
         (kotlin-mode . eglot-ensure))
  :bind (("C-c C-a" . eglot-code-actions)))
