;;; tools/present/config.el -*- lexical-binding: t; -*-

;; Based on https://systemcrafters.net/emacs-tips/presentations-with-org-present/

(defun my-org-present/org-present-prepare-slide (buffer-name heading)
  (org-overview)
  (org-show-entry)
  (org-show-children))

(defvar -my-org-present/previous-theme nil
  "Variable to hold the previous theme such that exiting presentation mode reverts
to that.")

(defvar -my-org-present/previous-line-numbers nil
  "Hold the previous value of the display line numbers setting.")

(defcustom my-org-present/theme 'doom-palenight
  "Configure the presentation theme using this var."
  :group 'tools/present
  :type 'symbol)

(defun my-org-present/org-present-start ()
  (setq-local face-remapping-alist '((default (:height 1.5) variable-pitch)
                                     (header-line (:height 8.0) variable-pitch)
                                     (org-document-title (:height 1.75) org-document-title)
                                     (org-code (:height 1.55) org-code)
                                     (org-verbatim (:height 1.55) org-verbatim)
                                     (org-block (:height 1.25) org-block)
                                     (org-block-begin-line (:height 0.7) org-block)))

  ;; Allow background to bleed through
  (set-frame-parameter (selected-frame) 'alpha '(80 . 100))

  ;; Set a blank header line string to create blank space at the top
  (setq header-line-format " ")

  ;; Hide line numbers
  (setq -my-org-present/previous-line-numbers (symbol-value 'line-number-mode))
  (when -my-org-present/previous-line-numbers
    (display-line-numbers-mode -1))

  ;; Store previous theme and set presentation theme
  (setq -my-org-present/previous-theme (symbol-value 'doom-theme))
  (load-theme (symbol-value 'my-org-present/theme) t)

  ;; Display inline images automatically
  (org-display-inline-images)

  ;; Center the presentation and wrap lines
  (visual-fill-column-mode 1)
  (visual-line-mode 1))

(setq visual-fill-column-width 110
      visual-fill-column-center-text 1)

(defun my-org-present/org-present-end ()
  (setq-local face-remapping-alist '((default variable-pitch default)))

  ;; Prevent background from bleeding through
  (set-frame-parameter (selected-frame) 'alpha '(100 . 100))

  ;; Restore line numbers
  (when -my-org-present/previous-line-numbers
    (display-line-numbers-mode -my-org-present/previous-line-numbers))

  ;; Restore previous theme
  (load-theme (symbol-value '-my-org-present/previous-theme) t)

  ;; Clear the header line string so that it isn't displayed
  (setq header-line-format nil)

  ;; Stop displaying inline images
  (org-remove-inline-images)

  ;; Stop centering the document
  (visual-fill-column-mode 0)
  (visual-line-mode 0))

(use-package! org-present
  :init
  (require 'org-faces)

  :config

  (add-hook! 'org-mode-hook 'variable-pitch-mode)
;  (add-hook! 'org-mode-hook (lambda () (display-line-numbers-mode -1)))
  (add-hook! 'org-present-mode-hook 'my-org-present/org-present-start)
  (add-hook! 'org-present-mode-quit-hook 'my-org-present/org-present-end)
  (add-hook! 'org-present-after-navigate-functions 'my-org-present/org-present-prepare-slide))
