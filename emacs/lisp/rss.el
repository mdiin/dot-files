(use-package elfeed
  :pin "melpa-stable"
  :config
  (setq elfeed-feeds '(
                       ;; Programming / ethics / common sense
                       ("https://ludic.mataroa.blog/rss/" ludic)
                       ("https://world.hey.com/dhh/feed.atom" dhh-hey-world)
                       ("https://world.hey.com/jason/feed.atom" jason-fried-hey-world)

                       ;; Programming languages
                       ("https://clojure.org/feed.xml" clojure)
                       ("https://polar.sh/aarhus-clj/rss" aarhus-clj)

                       ;; Web design
                       ("https://piccalil.li/feed.xml" piccalilli)
                       ))
  (setq-default elfeed-search-filter "@20-days-ago +unread")
  (setq-default elfeed-search-title-max-width 100)
  (setq-default elfeed-search-title-min-width 100))
