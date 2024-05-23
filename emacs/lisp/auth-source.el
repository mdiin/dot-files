;;; How-to kdewallet an auth-source
;;;
;;; - name the password: <USER>^<PACKAGE>@<HOST>
;;; - provide the secret in the contents
;;;
;;; Example:
;;;
;;; - password name: mdiin^forge@api.github.com
;;; - password contents: abcdefghijklmn

(use-package auth-source-kwallet
  :load-path "lisp/"
  :init
  (auth-source-kwallet-enable)

  :config
  (setq auth-source-kwallet-wallet "kdewallet")
  (setq auth-source-kwallet-folder "emacs")
  (setq auth-source-kwallet-executable "distrobox-host-exec kwallet-query")
  )
