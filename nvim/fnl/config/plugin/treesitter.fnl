(module config.plugin.treesitter
  {autoload {treesitter nvim-treesitter.configs}})

(treesitter.setup {:highlight {:enable true}
                   :indent {:enable true}
                   :ensure_installed ["bash"
                                      "clojure"
                                      "css"
                                      "dockerfile"
                                      "dot"
                                      "fennel"
                                      "fish"
                                      "hcl"
                                      "html"
                                      "http"
                                      "javascript"
                                      "jsdoc"
                                      "json"
                                      "lua"
                                      "regex"
                                      "tsx"
                                      "typescript"
                                      "yaml"]})
