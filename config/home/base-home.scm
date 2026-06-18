(define-module (config home base-home)
  #:use-modules (gnu)
  #:use-modules (gnu home)
  #:use-modules (gnu home services dotfiles)
  #:use-modules (gnu home services ssh)
  #:use-modules (gnu home services shells)
  #:use-modules (gnu packages emacs)
  #:use-modules (gnu packages librewolf)
  #:use-modules (gnu packages rust-apps)
  #:use-modules (gnu packages version-control)
  #:use-modules (gnu packages fonts)
  #:use-modules (gnu packages shellutils)
  #:use-modules (nongnu packages clojure)
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
