;;- Flix
(use-package toml)

(use-package flix-mode
  :mode "\\.flix\\'"

  :hook ((flix-mode . flix-mode-ensure))

  :commands flix-mode
  )
