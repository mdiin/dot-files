(module config.plugin.lightline
  {autoload {nvim aniseed.nvim}})

(nvim.ex.set :noshowmode)

(set nvim.g.lightline {:colorscheme :gruvbox
                       :active {:left [[:mode :paste]
                                       [:gitbranch :readonly :filename :modified]]}
                       :component_function {:gitbranch :FugitiveHead}})

