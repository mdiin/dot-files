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

;;; Editorconfig

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))


;;; YAML

(unless (package-installed-p 'yaml-mode)
  (package-install 'yaml-mode))

;;; Ripgrep

(unless (package-installed-p 'rg)
  (package-install 'rg))

;;; Modify C-w to kill whole line or region

(unless (package-installed-p 'whole-line-or-region)
  (package-install 'whole-line-or-region))

(require 'whole-line-or-region)
(whole-line-or-region-global-mode t)


;;; Languages

;;- LSP

(use-package eglot
  :pin melpa-stable
  :hook ((clojure-mode . eglot-ensure)
	 (kotlin-mode . eglot-ensure))
  :bind (("C-c C-a" . eglot-code-actions)))

;;- Kotlin

(use-package kotlin-mode)


;;- Clojure

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

(unless (package-installed-p 'cider)
  (package-install 'cider))

;;; Theme

(unless (package-installed-p 'solarized)
  (package-install 'solarized-theme))

(require 'solarized-theme)
(load-theme 'solarized-zenburn t)

;;; Projectile

(unless (package-installed-p 'projectile)
  (package-install 'projectile))

(add-to-list 'package-pinned-packages '(projectile . "melpa-stable") t)

(require 'projectile)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-global-mode +1)

;;; Org

(unless (package-installed-p 'org)
  (package-install 'org))

(require 'org)

;;; Eshell

(defun eshell-new()
  "Open a new instance of eshell."
  (interactive)
  (eshell 'N))


;;; Smart parens

(unless (package-installed-p 'smartparens)
  (package-install 'smartparens))

(unless (package-installed-p 'adjust-parens)
  (package-install 'adjust-parens))

(unless (package-installed-p 'dash)
  (package-install 'dash))

(require 'smartparens)
(require 'adjust-parens)
(smartparens-global-mode t)
(add-hook 'emacs-lisp-mode-hook #'adjust-parens-mode)
(add-hook 'clojure-mode-hook #'adjust-parens-mode)


;;; Git

(unless (package-installed-p 'magit)
  (package-install 'magit))

;;; Other setup

(scroll-bar-mode -1)
(tool-bar-mode -1)

(fido-vertical-mode t)
(icomplete-vertical-mode t)

(global-set-key (kbd "M-i") 'imenu)

;; Avy
(global-set-key (kbd "C-M-g") 'avy-goto-word-1)
(global-set-key (kbd "C-M-s-g") 'avy-goto-word-0)

(add-to-list 'load-path "~/.config/emacs/lisp")
(require 'structurizr-mode)

;; Whitespace handling
(setq-default indent-tabs-mode nil)

(defun my/after-save-actions ()
  "Used in 'after-save-hook'."
  (when (memq this-command '(save-buffer save-some-buffers save-buffers-kill-emacs write-file))
    (whitespace-cleanup)))

(add-hook 'after-save-hook 'my/after-save-actions)

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
   '(kotlin-mode company lsp-ui lsp-metals lsp-mode sbt-mode scala-mode use-package yaml-mode rg whole-line-or-region smart-parens adjust-parens smartparens org solarized magit which-key flymake flymake-kondor editorconfig eglot projectile cider clojure-mode solarized-theme))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
