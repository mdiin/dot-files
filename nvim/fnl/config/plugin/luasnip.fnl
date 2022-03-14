(module config.plugin.luasnip
  {autoload {nvim aniseed.nvim
             luasnip luasnip
             extras luasnip.extras}})

;; Short-hands for writing snippets
(def c luasnip.choice_node)
(def i luasnip.insert_node)
(def s luasnip.snippet)
(def sn luasnip.snippet_node)
(def t luasnip.text_node)
(def rep extras.rep)

;; Git snippets

(def commit-types ["chore"
                   "doc"
                   "feat"
                   "fix"
                   "test"])

(defn commit-snippet [type]
  (s type [(t type)
           (t "(")
           (i 1)
           (t "): ")
           (i 2)]))

(def git-commit-snippets
  [(commit-snippet :chore)
   (commit-snippet :feat)
   (commit-snippet :doc)
   (commit-snippet :fix)])

;; JS/TS snippets

(defn console-log-snippet []
  (s "clog" [(t "console.log('")
                (i 1)
                (t "');")]))

(defn mirror-log-snippet []
  (s "mlog" [(t "console.log('")
      (i 1)
      (t "', ")
      (rep 1)
      (t ");")]))

(def ts-js-snippets [(mirror-log-snippet) (console-log-snippet)])

(def snippets {"gitcommit" git-commit-snippets
               "javascript" ts-js-snippets
               "typescript" ts-js-snippets
               "typescriptreact" ts-js-snippets})

(set luasnip.snippets snippets)
