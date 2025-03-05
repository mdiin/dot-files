(use-package lsp-mode
  :init
  ;; (setq lsp-keymap-prefix "C-c l")
  (setq read-process-output-max (* 1024 1024))

  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package consult-lsp)
