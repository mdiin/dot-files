(use-package auth-source-kwallet
  :load-path "lisp/"
  :init
  (auth-source-kwallet-enable)

  :config
  (setq auth-source-kwallet-wallet "kdewallet")
  (setq auth-source-kwallet-folder "emacs")
  (setq auth-source-kwallet-executable "distrobox-host-exec kwallet-query")
  )
