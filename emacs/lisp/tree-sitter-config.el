;;- Tree-sitter

(use-package treesit-auto)

(defun os/setup-install-grammars ()
  "Install Tree-sitter grammars if they are absent."
  (interactive)
  (dolist (grammar
           '(
             (bash "https://github.com/tree-sitter/tree-sitter-bash")
             (c "https://github.com/tree-sitter/tree-sitter-c")
             (cmake "https://github.com/uyha/tree-sitter-cmake")
             (css . ("https://github.com/tree-sitter/tree-sitter-css" "v0.20.0"))
             (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
             (elisp "https://github.com/Wilfred/tree-sitter-elisp")
             (go "https://github.com/tree-sitter/tree-sitter-go" "v0.20.0")
             (html . ("https://github.com/tree-sitter/tree-sitter-html" "v0.20.1"))
             (java "https://github.com/tree-sitter/tree-sitter-java" "v0.20.2")
             (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript" "v0.21.2" "src"))
             (json . ("https://github.com/tree-sitter/tree-sitter-json" "v0.20.2"))
             (kotlin . ("https://github.com/fwcd/tree-sitter-kotlin" "0.3.8"))
             (make "https://github.com/alemuller/tree-sitter-make")
             (markdown "https://github.com/ikatyang/tree-sitter-markdown")
             (prisma "https://github.com/victorhqc/tree-sitter-prisma")
             (python . ("https://github.com/tree-sitter/tree-sitter-python" "v0.20.4"))
             (toml "https://github.com/tree-sitter/tree-sitter-toml")
             (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.4" "tsx/src"))
             (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.4" "typescript/src"))
             (yaml . ("https://github.com/ikatyang/tree-sitter-yaml" "v0.5.0"))
             ))
    (add-to-list 'treesit-language-source-alist grammar)
    ;; Only install `grammar' if we don't already have it
    ;; installed. However, if you want to *update* a grammar then
    ;; this obviously prevents that from happening.
    (unless (treesit-language-available-p (car grammar))
      (treesit-install-language-grammar (car grammar)))))

;; (os/setup-install-grammars)
