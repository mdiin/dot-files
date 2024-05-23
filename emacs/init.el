;;; Package management

(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-defer t
      use-package-always-ensure t)

(add-to-list 'load-path "~/.config/emacs/lisp")

;;; Config parts

(load "~/.config/emacs/lisp/editorconfig-config.el")
(load "~/.config/emacs/lisp/ripgrep-config.el")
(load "~/.config/emacs/lisp/conveniences.el")
(load "~/.config/emacs/lisp/theme-config.el")
(load "~/.config/emacs/lisp/eglot-config.el")
(load "~/.config/emacs/lisp/languages/clojure-config.el")
(load "~/.config/emacs/lisp/languages/kotlin-config.el")
(load "~/.config/emacs/lisp/languages/yaml-config.el")
(load "~/.config/emacs/lisp/languages/structurizr-config.el")
(load "~/.config/emacs/lisp/other/eshell-config.el")
(load "~/.config/emacs/lisp/other/git-config.el")
(load "~/.config/emacs/lisp/other/org-config.el")
(load "~/.config/emacs/lisp/other/projectile-config.el")
(load "~/.config/emacs/lisp/other/completion-config.el")

(eval-after-load "sql"
  '(load-library "sql-indent"))

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
   '(ansible-vault ansible-doc ansible jinja2-mode multiple-cursors expand-region avy eldoc-box corfu consult-eglot consult-projectile embark-consult embark consult marginalia orderless vertico kotlin-mode company lsp-ui lsp-metals lsp-mode sbt-mode scala-mode use-package yaml-mode rg whole-line-or-region smart-parens adjust-parens smartparens org solarized magit which-key flymake flymake-kondor editorconfig eglot projectile cider clojure-mode solarized-theme))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
