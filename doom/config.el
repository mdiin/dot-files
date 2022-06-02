;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(nvm-use "16.13.1")
(load-theme 'gruvbox-light-medium t)

(setq deft-directory "~/kasten")

(general-define-key
  :prefix "SPC"
  :non-normal-prefix "C-SPC"
  :states '(normal visual motion emacs)
  :keymaps 'override
  "d"  '(nil :wk "deft")
  "dd" '(deft :wk "deft")
  "dD" '(zetteldeft-deft-new-search :wk "new search")
  "dR" '(deft-refresh :wk "refresh")
  "ds" '(zetteldeft-search-at-point :wk "search at point")
  "dc" '(zetteldeft-search-current-id :wk "search current id")
  "df" '(zetteldeft-follow-link :wk "follow link")
  "dF" '(zetteldeft-avy-file-search-ace-window :wk "avy file other window")
  "d." '(zetteldeft-browse :wk "browse")
  "dh" '(zetteldeft-go-home :wk "go home")
  "dl" '(zetteldeft-avy-link-search :wk "avy link search")
  "dL" '(zetteldeft-insert-list-links-block :wk "insert list of links")
  "dt" '(zetteldeft-avy-tag-search :wk "avy tag search")
  "dT" '(zetteldeft-tag-buffer :wk "tag list")
  "d#" '(zetteldeft-tag-insert :wk "insert tag")
  "d$" '(zetteldeft-tag-remove :wk "remove tag")
  "d/" '(zetteldeft-search-tag :wk "search tag")
  "di" '(zetteldeft-find-file-id-insert :wk "insert id")
  "d C-i" '(zetteldeft-full-search-id-insert :wk "insert id full search")
  "dI" '(zetteldeft-find-file-full-title-insert :wk "insert full title")
  "d C-I" '(zetteldeft-full-search-full-title-insert :wk "insert title full search")
  "do" '(zetteldeft-find-file :wk "find file")
  "d C-o" '(zetteldeft-full-search-find-file :wk "find full search")
  "dn" '(zetteldeft-new-file :wk "new file")
  "dN" '(zetteldeft-new-file-and-link :wk "new file & link")
  "dB" '(zetteldeft-new-file-and-backlink :wk "new file & backlink")
  "db" '(zetteldeft-backlink-add :wk "add backlink")
  "dr" '(zetteldeft-file-rename :wk "rename")
  "dx" '(zetteldeft-count-words :wk "count words"))

(after! lsp-mode
  (lsp-register-client
   (make-lsp-client :new-connection (lsp-stdio-connection
                                     (-const "reason-language-server"))
                    :major-modes '(reason-mode)
                    :notification-handlers (ht ("client/registerCapability" 'ignore))
                    :priority 1
                    :server-id 'reason-ls)))

(after! reason-mode
  (add-hook! reason-mode #'lsp)
  ;(add-hook! reason-mode (add-hook 'before-save-hook #'lsp-format-buffer nil t))
  (add-hook! reason-mode (add-hook 'before-save-hook #'refmt-before-save nil t))
  (when (featurep! :checkers syntax)
    (customize-set-variable 'flycheck-check-syntax-automatically
                            '(save idle-change idle-buffer-switch mode-enabled)))
  )
