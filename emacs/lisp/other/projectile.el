;;; Projectile

(unless (package-installed-p 'projectile)
  (package-install 'projectile))

(add-to-list 'package-pinned-packages '(projectile . "melpa-stable") t)

(require 'projectile)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-global-mode +1)
