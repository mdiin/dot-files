(use-package denote
  :pin "gnu"
  :ensure t
  :hook (dired-mode . denote-dired-mode-in-directories)
  :bind
  (("C-c n n" . denote)
   ("C-c n r" . denote-rename-file)
   ("C-c n l" . denote-link)
   ("C-c n b" . denote-backlinks)
   ("C-c n d" . denote-dired)
   ("C-c n g" . denote-grep))
  :config
  (setq denote-directory (list (file-truename "~/denotes/work")
                               (file-truename "~/denotes/personal")))
  (setq denote-dired-directories (denote-directories))
  (setq denote-known-keywords '("emacs" "arbejde" "filosofi"))
  (setq denote-infer-keywords t)
  (setq denote-sort-keywords t)

  ;; Automatically rename Denote buffers when opening them so that
  ;; instead of their long file name they have, for example, a literal
  ;; "[D]" followed by the file's title.  Read the doc string of
  ;; `denote-rename-buffer-format' for how to modify this.
  (denote-rename-buffer-mode 1))
