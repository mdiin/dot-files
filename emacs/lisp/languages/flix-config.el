;;- Flix
(use-package toml)

(use-package flix-mode
  :mode "\\.flix\\'"
  ;; :requires eglot
  ;; :init
  ;; (add-to-list 'eglot-server-programs
  ;;              `(flix-mode . flix-mode-server-path))
  ;; :hook ((flix-mode . eglot-ensure)
  ;;        (flix-mode . eglot-semtok-font-lock-init)))

  :requires lsp-mode

  ;; :config
  ;; (setq-local lsp-semantic-token-faces
  ;;             (append 'lsp-semantic-token-faces '(("modifier" . lsp-face-semhl-static)
  ;;                                                 ("decorator" . lsp-face-semhl-type))))

  ;; :config
  ;; (with-eval-after-load 'lsp-mode
  ;;   (add-to-list 'lsp-language-id-configuration
  ;;                '(flix-mode . "flix"))

  ;;   (lsp-register-client
  ;;    (make-lsp-client :new-connection (lsp-stdio-connection (lambda ()
  ;;                                                             (flix-mode--ensure)
  ;;                                                             (flix-mode-server-path nil)))
  ;;                     :activation-fn (lsp-activate-on "flix")
  ;;                     :server-id 'flix-lsp)))
  :commands flix-mode
  )

(add-to-list 'auto-mode-alist '("\\.flix\\'" . flix-mode))
