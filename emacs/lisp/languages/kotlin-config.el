;;- Kotlin

(use-package kotlin-mode
  :after (eglot)
  :hook ((kotlin-mode . eglot-ensure))
  :config
  (when (package-installed-p 'projectile)
    (require 'projectile)
    (projectile-register-project-type 'gradle-kts '("build.gradle.kts")
                                      :project-file "build.gradle.kts"
                                      :compile "./gradlew build"
                                      :test "./gradlew test"
                                      :run "./gradlew bootRun"))
  ;; :init
  ;; (add-to-list 'eglot-server-programs
  ;;              `(kotlin-mode . ("kotlin-language-server" :initializationOptions
  ;;                               (:storagePath ,(cdr (project-current))
  ;;                                ;; "/home/mvi/testkls"
  ;;                                             ))))
  )
