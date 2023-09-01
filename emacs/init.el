(require 'package)

;;; MELPA

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


;;; Modify C-w to kill whole line or region

(unless (package-installed-p 'whole-line-or-region)
  (package-install 'whole-line-or-region))

(require 'whole-line-or-region)
(whole-line-or-region-global-mode t)


;;; Languages

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
(smartparens-mode t)
(add-hook 'emacs-lisp-mode-hook #'adjust-parens-mode)
(add-hook 'clojure-mode-hook #'adjust-parens-mode)


;;; LSP

(unless (package-installed-p 'eglot)
  (package-install 'eglot))

(require 'eglot)

(add-hook 'clojure-mode-hook 'eglot-ensure)

(define-key eglot-mode-map (kbd "C-c C-a") 'eglot-code-actions)


;;; Git

(unless (package-installed-p 'magit)
  (package-install 'magit))

;;; Other setup

(scroll-bar-mode -1)
(tool-bar-mode -1)

(fido-vertical-mode t)
(icomplete-vertical-mode t)

(global-set-key (kbd "M-i") 'imenu)


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
   '(smart-parens adjust-parens smartparens org solarized magit which-key flymake flymake-kondor editorconfig eglot projectile cider clojure-mode solarized-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
