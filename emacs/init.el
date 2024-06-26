;; Load the shared config
(load "~/.config/emacs/lisp/config.el")

;; Allow the rest of this file for installation-specific customizations.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-show-error-buffer nil)
 '(custom-safe-themes
   '("51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "524fa911b70d6b94d71585c9f0c5966fe85fb3a9ddd635362bfabd1a7981a307" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" default))
 '(org-babel-load-languages '((emacs-lisp . t) (shell . t) (clojure . t)))
 '(package-selected-packages
   '(logview cider clojure-mode forge auth-source-kwallet ansible-vault ansible-doc ansible jinja2-mode multiple-cursors expand-region avy eldoc-box corfu consult-eglot consult-projectile embark-consult embark consult marginalia orderless vertico kotlin-mode company lsp-metals sbt-mode scala-mode use-package yaml-mode rg whole-line-or-region smart-parens adjust-parens smartparens org solarized magit which-key flymake flymake-kondor editorconfig eglot projectile solarized-theme))
 '(sql-postgres-login-params
   '((user :default "mvi")
     server
     (database :default "mvi" :completion
               #[771 "\211\242\302=\206\12\0\211\303=?\2053\0r\300\204\27\0p\202(\0\304 \305\1!\203%\0\306\1!\202&\0p\262\1q\210\307\1\301\5!\5\5$)\207"
                     [nil
                      #[257 "\300 \207"
                            [sql-postgres-list-databases]
                            2 "\12\12(fn _)"]
                      boundaries metadata minibuffer-selected-window window-live-p window-buffer complete-with-action]
                     8 "\12\12(fn STRING PRED ACTION)"]
               :must-match confirm)
     port))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
