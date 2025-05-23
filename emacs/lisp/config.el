;;; Package management

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-pin "melpa-stable")

(add-to-list 'load-path "~/.config/emacs/lisp")
(add-to-list 'load-path "~/.config/emacs/lisp/packages")

(setq use-package-always-ensure t)

;;; General config

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
(setq confirm-kill-emacs 'yes-or-no-p)

;;; Config parts

(load "~/.config/emacs/lisp/other/azure-cli-interaction.el")
(load "~/.config/emacs/lisp/editorconfig-config.el")
(load "~/.config/emacs/lisp/ripgrep-config.el")
(load "~/.config/emacs/lisp/conveniences.el")
(load "~/.config/emacs/lisp/theme-config.el")
(load "~/.config/emacs/lisp/eglot-config.el")
(load "~/.config/emacs/lisp/tree-sitter-config.el")
(load "~/.config/emacs/lisp/format-on-save.el")
(load "~/.config/emacs/lisp/languages/utils.el")
(load "~/.config/emacs/lisp/languages/typescript-config.el")
(load "~/.config/emacs/lisp/languages/clojure-config.el")
(load "~/.config/emacs/lisp/languages/java-config.el")
(load "~/.config/emacs/lisp/languages/kotlin-config.el")
(load "~/.config/emacs/lisp/languages/yaml-config.el")
(load "~/.config/emacs/lisp/languages/structurizr-config.el")
(load "~/.config/emacs/lisp/languages/flix-config.el")
(load "~/.config/emacs/lisp/languages/lsp-config.el")
(load "~/.config/emacs/lisp/other/eshell-config.el")
(load "~/.config/emacs/lisp/other/git-config.el")
(load "~/.config/emacs/lisp/other/completion-config.el")
(load "~/.config/emacs/lisp/other/org-config.el")
(load "~/.config/emacs/lisp/other/org-present-config.el")
(load "~/.config/emacs/lisp/rss.el")

(eval-after-load "sql"
  '(load-library "sql-indent"))
