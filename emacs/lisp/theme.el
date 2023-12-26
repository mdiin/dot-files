;;; Theme

(unless (package-installed-p 'solarized)
  (package-install 'solarized-theme))

(require 'solarized-theme)
(load-theme 'solarized-zenburn t)
