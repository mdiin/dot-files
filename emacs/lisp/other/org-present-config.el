(defconst my/stored-mode-line-format mode-line-format)

(defun my/org-present-start ()
  (interactive)

  (menu-bar-mode 0)

  (setq-local face-remapping-alist '((default (:height 1.5) variable-pitch)
                                     (header-line (:height 4.0) variable-pitch)
                                     (org-document-title (:height 1.75) org-document-title)
                                     (org-code (:height 1.55) org-code)
                                     (org-verbatim (:height 1.55) org-verbatim)
                                     (org-block (:height 1.25) org-block)
                                     (org-block-begin-line (:height 0.7) org-block)))

  (setq header-line-format " ")

  (setq mode-line-format nil)

  (org-display-inline-images)
  )

(defun my/org-present-end ()
  (interactive)
  (org-remove-inline-images)
  (menu-bar-mode 1)

  (setq-local face-remapping-alist nil)

  (setq header-line-format nil)

  (setq mode-line-format my/stored-mode-line-format)
  )

(defun my/org-present-prepare-slide (buffer-name heading)
  ;; Show only top-level headlines
  (org-overview)

  ;; Unfold the current entry
  (org-show-entry)

  ;; Show only direct subheadings of the slide but don't expand them
  (org-show-children)
  )

(use-package org-present
  :init
  (add-hook 'org-present-mode-hook 'my/org-present-start)
  (add-hook 'org-present-mode-quit-hook 'my/org-present-end)
  (add-hook 'org-present-after-navigate-functions 'my/org-present-prepare-slide)
  )
