(module config.plugin.test
  {autoload {nvim aniseed.nvim}})

(defn set-keymap []
  (do
    (nvim.set_keymap :n :<leader>tn ":UltestNearest<CR>" {:noremap true})
    (nvim.set_keymap :n :<leader>tf ":Ultest<CR>" {:noremap true})
    (nvim.set_keymap :n :<leader>ts ":UltestSummary<CR>" {:noremap true})
    (nvim.set_keymap :n :<leader>ts! ":UltestSummary!<CR>" {:noremap true})
    (nvim.set_keymap :n :<leader>to ":UltestOutput<CR>" {:noremap true})))

(set-keymap)
