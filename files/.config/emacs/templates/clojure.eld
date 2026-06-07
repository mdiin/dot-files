clojure-mode clojure-ts-mode

(event "(defevent " p n> ":type " p n> ":schema [" p "]" n> ":tags [" p "]" ")" >)
(view "(l/defview " (p "view-name") " " (p "accumulator") n> "(ev/" (p "event" eventname) ")" n> "(fn " (s eventname) "-reducer" n> "[acc event]" n> p ")" p ")")
(evred "(ev/" (p "event" eventname) ")" n> "(fn " (s eventname) "-reducer" n> "[acc event]" n> p ")")
