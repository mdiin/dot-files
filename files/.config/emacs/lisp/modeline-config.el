(defvar my/line-selected-window (frame-selected-window))
(defun my/line-set-selected-window (&rest _args)
  (when (not (minibuffer-window-active-p (frame-selected-window)))
    (setq my/line-selected-window (frame-selected-window))
    (force-mode-line-update)))
(defun my/line-unset-selected-window ()
  (setq my/line-selected-window nil)
  (force-mode-line-update))
(add-hook 'window-configuration-change-hook #'my/line-set-selected-window)
(add-hook 'focus-in-hook #'my/line-set-selected-window)
(add-hook 'focus-out-hook #'my/line-unset-selected-window)
(advice-add 'handle-switch-frame :after #'my/line-set-selected-window)
(advice-add 'select-window :after #'my/line-set-selected-window)
(defun my/line-selected-window-active-p ()
  (eq my/line-selected-window (selected-window)))

(setq-default mode-line-format
              (list
               mode-line-misc-info ; for eyebrowse

               '(:eval (when-let (vc vc-mode)
                         (list " "
                               (propertize (substring vc 5)
                                           'face 'font-lock-comment-face)
                               " ")))

               '(:eval (list
                        ;; the buffer name; the file name as a tool tip
                        (propertize " %b" 'face 'font-lock-type-face
                                    'help-echo (buffer-file-name))
                        (when (buffer-modified-p)
                          (propertize
                           " "
                           'face (if (my/line-selected-window-active-p)
                                     'my/line-modified-face
                                   'my/line-modified-face-inactive)))
                        (when buffer-read-only
                          (propertize
                           ""
                           'face (if (my/line-selected-window-active-p)
                                     'my/line-read-only-face
                                   'my/line-read-only-face-inactive)))
                        " "))

               ;; relative position in file
               ;; '(:eval (list (nyan-create))) ;; from the nyan-mode package
               (propertize "%p" 'face 'font-lock-constant-face)

               ;; spaces to align right
               '(:eval (propertize
                        " " 'display
                        `((space :align-to (- (+ right right-fringe right-margin)
                                              ,(+ 3 (string-width mode-name)))))))

               ;; the current major mode
               (propertize " %m " 'face 'font-lock-string-face)))
