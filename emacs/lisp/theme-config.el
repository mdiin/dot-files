;;; Theme

(unless (package-installed-p 'solarized)
  (package-install 'solarized-theme))

(require 'solarized-theme)
;; (load-theme 'solarized-zenburn t)

(use-package modus-themes
  :config
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil)
  (load-theme 'modus-vivendi-tinted t))

(use-package alabaster-themes
  :ensure t
  :commands (alabaster-themes-select))
