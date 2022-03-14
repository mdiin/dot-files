(module config.init
  {autoload {core aniseed.core
             nvim aniseed.nvim
             util config.util
             str aniseed.string}})

;generic mapping leaders configuration
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")
(nvim.ex.syntax "on")
(nvim.ex.filetype ["plugin" "indent" "on"])

;don't wrap lines
(nvim.ex.set :nowrap)

(nvim.ex.set :expandtab)
(nvim.ex.set :number)

;extra filetypes
(nvim.ex.augroup ["myvimrc_filetypes"
                  "au BufNewFile,BufRead *.cljc setlocal ft=clojure"
                  "au BufNewFile,BufRead *.md setlocal ft=markdown"
                  "au BufNewFile,BufRead *fish_funced* setlocal ft=fish"
                  ])

; Hack (??) to clear a lingering pop-up
; Assumption is that the popup will always be the last window ('$')
(nvim.ex.command "PClear :call win_execute(win_getid(winnr('$')), ':q')")

;sets a nvim global options
(let [options
      {;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;case insensitive search
       :ignorecase true
       ;smart search case
       :smartcase true
       ;shared clipboard with linux
       :clipboard "unnamedplus"
       :tabstop 2
       :shiftwidth 2
       :encoding :utf8
       :inccommand :nosplit
       }]
  (each [option value (pairs options)]
    (core.assoc nvim.o option value)))

;import plugin.fnl
(require :config.plugin)
