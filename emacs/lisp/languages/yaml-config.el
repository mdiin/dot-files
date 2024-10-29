;;; YAML

;; (unless (package-installed-p 'yaml-mode)
;;   (package-install 'yaml-mode))

(use-package yaml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-mode))
  (config/maybe-treesit-install-language-grammar 'yaml))
