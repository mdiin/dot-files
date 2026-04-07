(use-modules (gnu)
             (gnu home)
             (gnu home services dotfiles)
             (gnu home services ssh)
             (gnu home services shells))

(home-environment
 (packages (specifications->packages
            (list "git"
                  "direnv")))

 (services (list (service home-bash-service-type
                          (home-bash-configuration
                           (environment-variables '(("PS1" . "\\[\\e[1;32m\\]\\u \\[\\e[1;34m\\]\\w \\[\\e[0m\\]λ ")
                                                    ("EDITOR" . "emacsclient")
                                                    ("TESTCONTAINERS_RYUK_DISABLED" . "true")))
                           (bash-profile (list
                                          (plain-file "direnv-hook.sh" "eval \"$(direnv hook bash)\"")))))

                 (service home-openssh-service-type
                          (home-openssh-configuration
                           (add-keys-to-agent "yes")))

                 (service home-ssh-agent-service-type
                          (home-ssh-agent-configuration
                           (extra-options '("-t" "1h30m"))))

                 (service home-dotfiles-service-type
                          (home-dotfiles-configuration
                           (directories '("../../files")))))))
