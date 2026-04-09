(use-modules (gnu)
             (gnu home)
             (gnu home services dotfiles)
             (gnu home services ssh)
             (gnu home services shells))

(home-environment
 (packages (specifications->packages
            (list "git"
                  "emacs"
                  "direnv"
                  "librewolf")))

 (services (list (service home-openssh-service-type
                          (home-openssh-configuration
                           (add-keys-to-agent "yes")))

                 (service home-ssh-agent-service-type
                          (home-ssh-agent-configuration
                           (extra-options '("-t" "1h30m"))))

                 (service home-dotfiles-service-type
                          (home-dotfiles-configuration
                           (directories '("../../files")))))))
