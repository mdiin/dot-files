(define-module (config home private-desktop-home)
  #:use-module (gnu home)
  #:use-module (gnu home services)
  #:use-module (gnu home services shells)
  #:use-module (gnu home services ssh)
  #:use-module (gnu home services dotfiles)
  #:use-module (gnu packages kde-graphics)
  #:use-module (gnu services)
  #:use-module (config home base-home))

(home-environment
 (inherit base-home)

 (packages
  (list
   krita))

 (services
  (append
   (list
    (service home-ssh-agent-service-type)

    (service home-dotfiles-service-type
             (home-dotfiles-configuration
              (directories '("../../files")))))

   %base-home-services)))
