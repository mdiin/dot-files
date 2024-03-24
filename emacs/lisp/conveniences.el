;;; Expand region

(use-package expand-region
  :bind ("C-=" . er/expand-region))

;;; Modify C-w to kill whole line or region

(unless (package-installed-p 'whole-line-or-region)
  (package-install 'whole-line-or-region))

(require 'whole-line-or-region)
(whole-line-or-region-global-mode t)

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

;;; Other setup

(scroll-bar-mode -1)
(tool-bar-mode -1)

;; (fido-vertical-mode t)
;; (icomplete-vertical-mode t)

(global-set-key (kbd "M-i") 'imenu)

;; Avy - Jumping to other windows and visible words
(use-package avy
  :bind (("M-G c" . avy-goto-char-timer)
         ("M-G w" . avy-goto-word-1)))

;; Whitespace handling
(setq-default indent-tabs-mode nil)

(defun my/after-save-actions ()
  "Used in 'after-save-hook'."
  (when (memq this-command '(save-buffer save-some-buffers save-buffers-kill-emacs write-file))
    (whitespace-cleanup)))

(add-hook 'after-save-hook 'my/after-save-actions)
