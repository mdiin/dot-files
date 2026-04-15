(defun my-csharp/set-eglot-program ()
  (setq-local eglot-server-programs
              (list '((csharp-mode csharp-ts-mode) . ("/home/mvi/.local/share/omnisharp/OmniSharp" "-lsp")))))

(use-package csharp-ts-mode
  :ensure nil
  :mode "\\.cs\\'"
  :hook ((csharp-mode . my-csharp/set-eglot-program)
         (csharp-ts-mode . my-csharp/set-eglot-program)))
