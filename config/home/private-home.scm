(define-module (config home private-home)
  #:use-module (gnu home)
  #:use-module (gnu home services)
  #:use-module (gnu home services shells)
  #:use-module (gnu home services ssh)
  #:use-module (gnu home services dotfiles)
  #:use-module (gnu services)
  #:use-module (config home base-home))

(home-environment
 (inherit base-home)

 (services
  (append
   (list
    (service home-bash-service-type)

    (service home-ssh-agent-service-type)

    ;; (service home-openssh-service-type
    ;;          (home-openssh-configuration
    ;;           (add-keys-to-agent "yes")))
    )

   %base-home-services)))
