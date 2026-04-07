(use-package lsp-mode
  ;; :hook ((flix-mode . (lambda ()
  ;;                       (setq lsp-semantic-tokens-enable t)
  ;;                       (setq lsp-semantic-token-faces
  ;;                             (append lsp-semantic-token-faces '(("modifier" . lsp-face-semhl-static)
  ;;                                                                ("decorator" . lsp-face-semhl-type))))))
  ;;        (flix-mode . lsp)
  ;;        (flix-mode . lsp-semantic-tokens-mode)

  ;;        )

  :init
  ;; (setq lsp-keymap-prefix "C-c l")
  (setq read-process-output-max (* 1024 1024))

  :config
  (add-to-list 'lsp-language-id-configuration
               '(flix-mode . "flix"))

  (lsp-register-client
   (make-lsp-client :new-connection (lsp-stdio-connection (lambda ()
                                                            (flix-mode--ensure)
                                                            (flix-mode-server-path nil)))
                    :activation-fn (lsp-activate-on "flix")
                    :server-id 'flix-lsp))

  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package consult-lsp)
