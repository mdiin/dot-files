(define-module (config systems base)
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
  #:export (base-system))

(define base-system
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
   
   (services (list (service home-openssh-service-type
                            (home-openssh-configuration
                             (add-keys-to-agent "yes")
                             (hosts (list
                                     (openssh-host
                                      (name "ssh.dev.azure.com")
                                      (identity-file "/home/mvi/.ssh/id_rn_rsa")
                                      (extra-content "  IdentitiesOnly yes\n  LogLevel FATAL"))))))

                   (service home-ssh-agent-service-type
                            (home-ssh-agent-configuration
                             (extra-options '("-t" "1h30m"))))

                   (service home-dotfiles-service-type
                            (home-dotfiles-configuration
                             (directories '("../../files"))))))))
