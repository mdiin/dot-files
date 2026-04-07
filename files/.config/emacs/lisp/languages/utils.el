(defun config/maybe-treesit-install-language-grammar (lang)
  (unless (treesit-language-available-p lang)
    (treesit-install-language-grammar lang)))
