(use-package elfeed
  :pin "melpa-stable"
  :config
  (setq elfeed-feeds '(
                       ;; Programming / ethics / common sense
                       ("https://ludic.mataroa.blog/rss/" ludic)

                       ;; Programming languages
                       ("https://clojure.org/feed.xml" clojure)
                       ("https://polar.sh/aarhus-clj/rss" aarhus-clj)
                       ))
  (setq-default elfeed-search-filter "@20-days-ago +unread")
  (setq-default elfeed-search-title-max-width 100)
  (setq-default elfeed-search-title-min-width 100))
