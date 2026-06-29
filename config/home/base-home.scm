(define-module (config home base-home)
  #:use-module (gnu)
  #:use-module (gnu home)
  #:use-module (gnu home services dotfiles)
  #:use-module (gnu home services ssh)
  #:use-module (gnu home services shells)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages librewolf)
  #:use-module (gnu packages rust-apps)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages fonts)
  #:use-module (gnu packages shellutils)
  #:use-module (gnu system shadow)
  #:use-module (nongnu packages clojure)
  #:export (base-home))

(define base-home
  (home-environment
   (packages
    (list
     emacs-pgtk
     babashka
     ripgrep
     librewolf
     git
     font-nerd-fantasque-sans
     direnv))

   (services (list (service home-ssh-agent-service-type
                            (home-ssh-agent-configuration
                             (extra-options '("-t" "1h30m"))))

                   (service home-dotfiles-service-type
                            (home-dotfiles-configuration
                             (directories '("../../files"))))))))
