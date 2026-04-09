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
                           (directories '("../../files")))))))
