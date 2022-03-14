(module config.plugin.theme
  {autoload {nvim aniseed.nvim}})

(set nvim.o.background "dark")
(nvim.ex.colorscheme :gruvbox)

(when (nvim.fn.has "termguicolors")
  (set nvim.o.termguicolors true))

(nvim.ex.highlight ["Comment"
                    "ctermfg=1*"
                    "cterm=italic"
                    "guifg=#FFD273"
                    "guibg=#028E9B"
                    "gui=italic"])
