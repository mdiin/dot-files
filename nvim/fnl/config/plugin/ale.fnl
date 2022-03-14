(module config.plugin.ale
  {autoload {nvim aniseed.nvim}})

(set nvim.g.ale_enabled 1)
(set nvim.g.ale_javascript_eslint_executable "eslint_d")
(set nvim.g.ale_javascript_eslint_use_global 1)
(set nvim.g.ale_linters {:typescript ["eslint"]
                         :typescriptreact ["eslint"]
                         :clojure ["clj-kondo"]})
(set nvim.g.ale_fixers {:javascript ["eslint"]
                        :typescriptreact ["prettier" "eslint"]
                        :typescript ["prettier" "eslint"]})
(set nvim.g.ale_sign_error "")
(set nvim.g.ale_sign_warning "")
(set nvim.g.ale_sign_info "")
(set nvim.g.ale_sign_hint "")
(set nvim.g.ale_fix_on_save 1)
(set nvim.g.ale_disable_lsp 1)

