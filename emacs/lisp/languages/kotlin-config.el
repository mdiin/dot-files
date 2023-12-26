;;- Kotlin

(use-package kotlin-mode)

(when (package-installed-p 'projectile)
  (require 'projectile)
  (projectile-register-project-type 'gradle-kts '("build.gradle.kts")
                                    :project-file "build.gradle.kts"
                                    :compile "./gradlew build"
                                    :test "./gradlew test"
                                    :run "./gradlew bootRun"))
