;;- Flix
(use-package toml
  :vc (:url "https://github.com/mdiin/emacs-toml"
            :branch "master"))

(use-package flix-mode
  :vc (:url "https://codeberg.org/mdiin/flix-mode"
            :branch "main")
  :mode "\\.flix\\'"

  :hook ((flix-mode . flix-mode-ensure))

  :commands flix-mode
  )
