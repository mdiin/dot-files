;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(nvm-use "16.15.1")
(load-theme 'gruvbox-light-medium t)

(setq calendar-week-start-day 1)
(setq deft-directory "~/kasten")

(map!
 :leader
 (:prefix-map ("z" . "zettelkasten")
  (:desc "open deft" "d" #'deft
   :desc "new search" "/" #'zetteldeft-deft-new-search
   :desc "refresh" "R" #'deft-refresh
   :desc "search at point" "s" #'zetteldeft-search-at-point
   :desc "follow link" "f" #'zetteldeft-follow-link
   :desc "rename note" "r" #'zetteldeft-file-rename
   :desc "new note" "n" #'zetteldeft-new-file
   (:prefix ("N" . "new note with link")
    :desc "with link" "l" #'zetteldeft-new-file-and-link
    :desc "with backlink" "b" #'zetteldeft-new-file-and-backlink)
   (:prefix ("t" . "tags")
    :desc "add" "a" #'zetteldeft-tag-insert
    :desc "remote" "r" #'zetteldeft-tag-remove
    :desc "search" "/" #'zetteldeft-search-tag
    :desc "list" "l" #'zetteldeft-tag-buffer)
   (:prefix ("l" . "links")
    :desc "insert id" "i" #'zetteldeft-find-file-id-insert
    :desc "insert id+title" "t" #'zetteldeft-find-file-full-title-insert
    :desc "insert backlink" "b" #'zetteldeft-backlink-add)
   )))

;; (after! lsp-mode
;;   (lsp-register-client
;;    (make-lsp-client :new-connection (lsp-stdio-connection
;;                                      (-const "reason-language-server"))
;;                     :major-modes '(reason-mode)
;;                     :notification-handlers (ht ("client/registerCapability" 'ignore))
;;                     :priority 1
;;                     :server-id 'reason-ls)))

(after! rescript-mode
  (setq lsp-rescript-server-command
        '("/home/mvi/.nvm/versions/node/v16.13.1/bin/node" "/home/mvi/Programs/Rescript-LSP/out/server.js" "--stdio"))
  ;; Tell `lsp-mode` about the `rescript-vscode` LSP server
  (require 'lsp-rescript)
  ;; Enable `lsp-mode` in rescript-mode buffers
  (add-hook 'rescript-mode-hook 'lsp-deferred)
  ;; Enable display of type information in rescript-mode buffers
  (require 'lsp-ui)
  (add-hook 'rescript-mode-hook 'lsp-ui-doc-mode))

(map! :nv "M-h" 'sp-backward-slurp-sexp
      :nv "M-l" 'sp-forward-slurp-sexp
      :nv "M-j" 'sp-backward-barf-sexp
      :nv "M-k" 'sp-forward-barf-sexp)

(map!
 :leader
 (:prefix-map ("c" . "code")
  (:prefix ("p" . "parentheses")
   :desc "rewrap" "R" #'sp-rewrap-sexp
   :desc "raise" "r" #'sp-raise-sexp)))

;; Guide eshell to use full-blown terminal emulator for these commands, subcommands and options
;(add-to-list 'eshell-visual-commands '("git"))
;(add-to-list 'eshell-visual-options '("git" "--help"))
;(add-to-list 'eshell-visual-subcommands '("git" "log" "diff" "show"))

;; CIDER customizations
(setq cider-show-error-buffer nil)

;; Meow customizations
(setq meow-paren-keymap (make-keymap))

(meow-define-state paren
  "meow state for interacting with smart-parens"
  :lighter " [P]"
  :keymap meow-paren-keymap)

(setq meow-cursor-type-paren 'hollow)

(meow-define-keys 'paren
  '("<escape>" . meow-normal-mode)
  '("u" . meow-undo)
  '("h" . sp-backward-sexp)
  '("j" . sp-down-sexp)
  '("k" . sp-up-sexp)
  '("l" . sp-forward-sexp)
  '("M-h" . sp-backward-slurp-sexp)
  '("C-h" . sp-backward-barf-sexp)
  '("M-l" . sp-forward-slurp-sexp)
  '("C-l" . sp-forward-barf-sexp))

(map! :map meow-normal-state-keymap
      ;; Extremely high frequency keybindings
      "K" "C-c c k"
      "P" #'meow-paren-mode
      "$" #'repeat)

(map! :map meow-keypad-state-keymap
      ;;
      ;; High-frequency keybindings
      "e" "C-x C-e"

      ;; Window management
      "w" #'other-window
      "W" #'window-swap-states
      "o" #'delete-other-windows
      "|" #'split-window-horizontally
      "-" #'split-window-vertically
      "z" #'recenter

      ;; High-frequency commands
      ";" #'comment-dwim)
