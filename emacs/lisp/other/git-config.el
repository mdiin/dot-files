;;; Git

(use-package magit)

(add-to-list 'package-pinned-packages '(magit . "melpa") t)

(use-package forge
  :after magit)

(add-to-list 'package-pinned-packages '(forge . "melpa") t)
