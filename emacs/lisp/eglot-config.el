;;- LSP

(defun my--eglot-format-buffer-before-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))

(use-package eglot
  :pin melpa-stable
  :hook ((clojure-mode . eglot-ensure)
         (flix-mode . eglot-ensure)
         (go-mode . eglot-ensure)
         (go-mode . my--eglot-format-buffer-before-save)
         ((js-ts-mode typescript-ts-mode tsx-ts-mode) . eglot-ensure)
         (typst-ts-mode . eglot-ensure))
  :bind (("C-c l a" . eglot-code-actions)
         ("C-c l r" . eglot-rename)
         ("C-c l f i" . eglot-find-implementation)
         ("C-c l f d" . eglot-find-declaration)
         ("C-c l f t" . eglot-find-typeDefinition)
         ("C-c l = =" . eglot-format-buffer)
         ("C-c l = r" . eglot-format))

  :init
  (setq eglot-managed-mode-hook (list (lambda () (eldoc-mode -1))))

  :config
  (add-to-list 'eglot-server-programs
               '(flix-mode . flix-mode-server-path)
               '((js-ts-mode typescript-ts-mode tsx-ts-mode) . ("typescript-language-server" "--stdio"))))

(use-package eglot-booster
  :after eglot
  :config (eglot-booster-mode)
  )

(use-package eldoc-box
  :bind (("C-c K" . eldoc-box-help-at-point)))

(use-package eglot-semtok
  :load-path "elpa/eglot-supplements/"
  :hook ((eglot-connect . eglot-semtok-on-connected)
         (flix-mode . eglot-semtok-font-lock-init))
  :config
  (setq eglot-semtok-faces
        '("class"
          (("" "" font-lock-type-face))
          "interface"
          (("" "" font-lock-type-face))
          "typeParameter"
          (("" "" font-lock-type-face))
          "parameter"
          (("" "" font-lock-variable-name-face))
          "variable"
          (("" "" font-lock-variable-name-face))
          "property"
          (("" "" font-lock-constant-face))
          "enumMember"
          (("" "" font-lock-constant-face))
          "function"
          (("" "" font-lock-function-name-face))
          "method"
          (("" "" font-lock-function-name-face))
          "member"
          (("" "" font-lock-property-name-face))
          "keyword"
          (("" "" font-lock-keyword-face))
          "modifier"
          (("" "" default))
          "decorator"
          (("" "" font-lock-keyword-face))
          "annotation"
          (("" "" font-lock-keyword-face))
          "type"
          (("" "" font-lock-type-face))
          "string"
          (("" "" font-lock-string-face))
          "number"
          (("" "" font-lock-number-face))
          "comment"
          (("" "" font-lock-comment-face)))))
