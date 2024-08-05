(use-package visual-fill-column
  :config
  (setq visual-fill-column-width 110
        visual-fill-column-center-text 't))

(defun my/org-present-start ()
  (interactive)
  (visual-line-fill-column-mode 1)
  (menu-bar-mode 0)


  (setq-local face-remapping-alist '((default (:height 1.5) variable-pitch)
                                     (header-line (:height 4.0) variable-pitch)
                                     (org-document-title (:height 1.75) org-document-title)
                                     (org-code (:height 1.55) org-code)
                                     (org-verbatim (:height 1.55) org-verbatim)
                                     (org-block (:height 1.25) org-block)
                                     (org-block-begin-line (:height 0.7) org-block)))

  (setq header-line-format " ")
  )

(defun my/org-present-end ()
  (interactive)
  (menu-bar-mode 1)
  (visual-line-fill-column-mode 0)

  (setq-local face-remapping-alist nil)

  (setq header-line-format nil)
  )

(set-face-attribute 'default nil :font "Fantasque Sans Mono" :weight 'light :height 120)
(set-face-attribute 'fixed-pitch nil :font "Fantasque Sans Mono" :weight 'light :height 120)
(set-face-attribute 'variable-pitch nil :font "Noto Sans" :weight 'light :height 1.3)

;; Hide emphasis markers on formatted text
(setq org-hide-emphasis-markers t)

;; Resize Org headings
(dolist (face '((org-level-1 . 1.2)
                (org-level-2 . 1.1)
                (org-level-3 . 1.05)
                (org-level-4 . 1.0)
                (org-level-5 . 1.1)
                (org-level-6 . 1.1)
                (org-level-7 . 1.1)
                (org-level-8 . 1.1)))
  (set-face-attribute (car face) nil :font "Noto Sans" :weight 'medium :height (cdr face)))

;; Make the document title a bit bigger
(set-face-attribute 'org-document-title nil :font "Noto Sans" :weight 'bold :height 1.3)

;; Make sure certain org faces use the fixed-pitch face when variable-pitch-mode is on
(set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
(set-face-attribute 'org-table nil :inherit 'fixed-pitch)
(set-face-attribute 'org-formula nil :inherit 'fixed-pitch)
(set-face-attribute 'org-code nil :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)

(require 'org-faces)

(use-package org-present
  :after visual-fill-column
  :init
  (add-hook 'org-present-mode-hook 'my/org-present-start)
  (add-hook 'org-present-mode-quit-hook 'my/org-present-end)
  )
