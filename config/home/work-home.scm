(define-module (config home work-home)
  #:use-module (gnu home)
  #:use-modules (config home base-home))

(home-environment
 (inherit base-home)

 (services (list (service home-openssh-service-type
                          (home-openssh-configuration
                           (add-keys-to-agent "yes")
                           (hosts (list
                                   (openssh-host
                                    (name "ssh.dev.azure.com")
                                    (identity-file "/home/mvi/.ssh/id_rn_rsa")
                                    (extra-content "  IdentitiesOnly yes\n  LogLevel FATAL")))))))))
