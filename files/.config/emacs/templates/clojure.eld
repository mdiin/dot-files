clojure-mode clojure-ts-mode

(event "(defevent " p n> ":type " p n> ":schema [" p "]" n> ":tags [" p "]" ")" >)
(view "(l/defview " p n> "(ev/" (p "event" "event-name") ")" n> "(fn " (s "event-name") "-reducer" n> "[acc event]" n> p ")" p ")")
(evred "(ev/" (p "event" "event-name") ")" n> "(fn " (s "event-name") "-reducer" n> "[acc event]" n> p ")")
