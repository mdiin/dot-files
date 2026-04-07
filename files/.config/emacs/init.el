;; Load the shared config
(load "~/.config/emacs/lisp/config.el")

;; Allow the rest of this file for installation-specific customizations.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-show-error-buffer nil)
 '(custom-safe-themes
   '("4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3"
     "2e7dc2838b7941ab9cabaa3b6793286e5134f583c04bde2fba2f4e20f2617cf7"
     "a75aff58f0d5bbf230e5d1a02169ac2fbf45c930f816f3a21563304d5140d245"
     "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077"
     "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633"
     "c32fbcb7c68d9a3cddf5e213e58afc9c29c55ff3835d10562280e4a690292590"
     "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773"
     "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1"
     "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7"
     "524fa911b70d6b94d71585c9f0c5966fe85fb3a9ddd635362bfabd1a7981a307"
     "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c"
     default))
 '(ignored-local-variable-values
   '((sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url"))))))
 '(org-agenda-files
   '("~/Documents/tasks.org"
     "/home/mvi/Projects/Vestas/Digital Customer Channels/Project/Documents/search-as-a-service-options.org"))
 '(org-babel-load-languages '((emacs-lisp . t) (shell . t) (clojure . t)))
 '(org-capture-templates
   '(("v" "Ny Vestas-note" entry (file "~/Projects/Vestas/notes.org") ""
      :empty-lines 1)
     ("n" "Ny personlig note" entry (file "~/MEGA/notes.org") ""
      :empty-lines 1)
     ("o" "Ny personlig opgave" entry (file "~/MEGA/tasks.org")
      "* TODO %^{opgave}" :immediate-finish t :empty-lines-before 1)
     ("p" "Capture new project task" entry
      (file "~/org/timeregistrations.org") "* %^{customer} / %^{task}"
      :immediate-finish t :empty-lines-before 1 :clock-in t
      :clock-keep t)
     ("t" "Capture new task" entry (file "~/Documents/tasks.org") ""
      :empty-lines-before 1)))
 '(org-refile-targets '((org-agenda-files :maxlevel . 2)))
 '(package-selected-packages nil)
 '(package-vc-selected-packages
   '((typst-ts-mode :url
                    "https://codeberg.org/meow_king/typst-ts-mode.git")
     (flix-mode :vc-backend Git :url
                "https://codeberg.org/mdiin/flix-mode.git")
     (toml :vc-backend Git :url
           "https://github.com/mdiin/emacs-toml.git")
     (consult-eglot :vc-backend Git :url
                    "https://github.com/mohkale/consult-eglot.git")
     (consult-lsp :vc-backend Git :url
                  "https://github.com/gagbo/consult-lsp.git")
     (eglot-supplements :vc-backend Git :url
                        "https://codeberg.org/harald/eglot-supplements/")
     (eglot-booster :vc-backend Git :url
                    "https://github.com/jdtsmith/eglot-booster")))
 '(safe-local-variable-values
   '((sql-connection-alist
      (elevdatabasen-local (sql-product 'postgres)
                           (sql-database
                            "postgresql://elevdatabasen:Netcompany123@localhost:5432/elevdatabasen")))
     (sql-connection-alist
      (persondata-local (sql-product 'postgres)
                        (sql-database
                         "postgresql://persondatamodulet:Persondata123@localhost:5432/persondatamodulet")))
     (sql-connection-alist
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (tlib-prod (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "vestasvoprodkv"
                                             "tlib-datasource-username"
                                             "tlib-datasource-password"
                                             "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (scm-prod (sql-product 'postgres)
                (sql-database
                 (my--az-postgres-db-string "vestasvoprodkv"
                                            "scm-datasource-username"
                                            "scm-datasource-password"
                                            "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password"
                                         "sdoc-datasource-jdbc-url")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password"
                                                 "vestasonline-platform-datasource-connection-url")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"
                                                      "vestasonline-platform-vodb-datasource-connection-url")))
      (cck-cm-qa (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "scm-qa-kv"
                                             "cck-datasource-username"
                                             "cck-datasource-password"
                                             "cck-datasource-connection-url")))
      (cck-cm-local (sql-product 'postgres)
                    (sql-database
                     "postgresql://cm_user:cm_pass@localhost:5432/cm"))
      (cck-cm-qa (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "kv-ccm-weu-secrets-tst"
                                             "cck-datasource-username"
                                             "cck-datasource-password"
                                             "cck-datasource-connection-url")))
      (cck-cm-prod (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string
                     "kv-ccm-weu-secrets-tst"
                     "cck-datasource-username"
                     "cck-datasource-password"
                     "cck-datasource-connection-url"))))
     (sql-connection-alist
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (tlib-prod (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "vestasvoprodkv"
                                             "tlib-datasource-username"
                                             "tlib-datasource-password"
                                             "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (scm-prod (sql-product 'postgres)
                (sql-database
                 (my--az-postgres-db-string "vestasvoprodkv"
                                            "scm-datasource-username"
                                            "scm-datasource-password"
                                            "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password"
                                         "sdoc-datasource-jdbc-url")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password"
                                                 "vestasonline-platform-datasource-connection-url")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"
                                                      "vestasonline-platform-vodb-datasource-connection-url")))
      (cck-cm-qa (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "scm-qa-kv"
                                             "cck-datasource-username"
                                             "cck-datasource-password"
                                             "cck-datasource-connection-url")))
      (cck-cm-local (sql-product 'postgres)
                    (sql-database
                     "postgresql://cm_user:cm_pass@localhost:5432/cm")))
     (sql-connection-alist
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (tlib-prod (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "vestasvoprodkv"
                                             "tlib-datasource-username"
                                             "tlib-datasource-password"
                                             "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (scm-prod (sql-product 'postgres)
                (sql-database
                 (my--az-postgres-db-string "vestasvoprodkv"
                                            "scm-datasource-username"
                                            "scm-datasource-password"
                                            "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password"
                                         "sdoc-datasource-jdbc-url")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password"
                                                 "vestasonline-platform-datasource-connection-url")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"
                                                      "vestasonline-platform-vodb-datasource-connection-url")))
      (cck-cm-qa (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "scm-qa-kv"
                                             "cck-datasource-username"
                                             "cck-datasource-password"
                                             "cck-datasource-connection-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (tech-lib-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "tlib-datasource-username"
                                                 "tlib-datasource-password"
                                                 "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (scm-prod (sql-product 'postgres)
                (sql-database
                 (my--az-postgres-db-string "vestasvoprodkv"
                                            "scm-datasource-username"
                                            "scm-datasource-password"
                                            "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password"
                                         "sdoc-datasource-jdbc-url")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password"
                                                 "vestasonline-platform-datasource-connection-url")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"
                                                      "vestasonline-platform-vodb-datasource-connection-url")))
      (cck-cm-qa (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "scm-qa-kv"
                                             "cck-datasource-username"
                                             "cck-datasource-password"
                                             "cck-datasource-connection-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (tech-lib-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "tlib-datasource-username"
                                                 "tlib-datasource-password"
                                                 "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (scm-prod (sql-product 'postgres)
                (sql-database
                 (my--az-postgres-db-string "vestasvoprodkv"
                                            "scm-datasource-username"
                                            "scm-datasource-password"
                                            "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-jdbc-url"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password"
                                                 "vestasonline-platform-datasource-connection-url")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"
                                                      "vestasonline-platform-vodb-datasource-connection-url")))
      (cck-cm-qa (sql-product 'postgres)
                 (sql-database
                  (my--az-postgres-db-string "scm-qa-kv"
                                             "cck-datasource-username"
                                             "cck-datasource-password"
                                             "cck-datasource-connection-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (tech-lib-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "tlib-datasource-username"
                                                 "tlib-datasource-password"
                                                 "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (scm-prod (sql-product 'postgres)
                (sql-database
                 (my--az-postgres-db-string "vestasvoprodkv"
                                            "scm-datasource-username"
                                            "scm-datasource-password"
                                            "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-jdbc-url"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password"
                                                 "vestasonline-platform-datasource-connection-url")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"
                                                      "vestasonline-platform-vodb-datasource-connection-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (tech-lib-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "tlib-datasource-username"
                                                 "tlib-datasource-password"
                                                 "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-jdbc-url"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password"
                                                 "vestasonline-platform-datasource-connection-url")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"
                                                      "vestasonline-platform-vodb-datasource-connection-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (tech-lib-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "tlib-datasource-username"
                                                 "tlib-datasource-password"
                                                 "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-jdbc-url"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password")))
      (platform-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "vestasonline-platform-datasource-connection-url"
                                                 "vestasonline-platform-datasource-username"
                                                 "vestasonline-platform-datasource-password")))
      (platform-vodb-prod (sql-product 'postgres)
                          (sql-database
                           (my--az-postgres-db-string "vestasvoprodkv"
                                                      "vestasonline-platform-vodb-datasource-connection-url"
                                                      "vestasonline-platform-vodb-datasource-username"
                                                      "vestasonline-platform-vodb-datasource-password"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (tech-lib-prod (sql-product 'postgres)
                     (sql-database
                      (my--az-postgres-db-string "vestasvoprodkv"
                                                 "tlib-datasource-username"
                                                 "tlib-datasource-password"
                                                 "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-jdbc-url"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password"))))
     (ansible-vault-password-file
      . "/home/mvi/Projects/Ossmo/adoption_platform/Infrastructure/ansible/.vault_pass")
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url")))
      (sd-qa (sql-product 'postgres)
             (sql-database
              (my--az-postgres-db-string "vestasvoqakv"
                                         "sdoc-datasource-jdbc-url"
                                         "sdoc-datasource-username"
                                         "sdoc-datasource-password"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-connection-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url")))
      (scm-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "scm-datasource-username"
                                          "scm-datasource-password"
                                          "scm-datasource-jdbc-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url")))
      (tlib-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "vestasvoqakv"
                                           "tlib-datasource-username"
                                           "tlib-datasource-password"
                                           "tlib-datasource-jdbc-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url")))
      (shop-qa (sql-product 'postgres)
               (sql-database
                (my--az-postgres-db-string "shopqakv"
                                           "shop-datasource-username"
                                           "shop-datasource-password"
                                           "shop-datasource-jdbc-url"))))
     (sql-connection-alist
      (tech-lib-qa (sql-product 'postgres)
                   (sql-database
                    (my--az-postgres-db-string "vestasvoqakv"
                                               "tlib-datasource-username"
                                               "tlib-datasource-password"
                                               "tlib-datasource-jdbc-url")))
      (ume-qa (sql-product 'postgres)
              (sql-database
               (my--az-postgres-db-string "vestasvoqakv"
                                          "vestas-ume-datasource-username"
                                          "vestas-ume-datasource-password"
                                          "vestas-ume-datasource-connection-url"))))
     (org-agenda-files quote
                       ("~/Projects/Vestas/Digital Customer Channels/Project/sales-content-management.org"))
     (org-agenda-files
      . ~/Projects/Vestas/Digital\ Solutions/Project/Code/notes.org)))
 '(sql-postgres-login-params
   '((user :default "mvi") server
     (database :default "mvi" :completion
               #[771
                 "\211\242\302=\206\12\0\211\303=?\2053\0r\300\204\27\0p\202(\0\304 \305\1!\203%\0\306\1!\202&\0p\262\1q\210\307\1\301\5!\5\5$)\207"
                 [nil
                  #[257 "\300 \207" [sql-postgres-list-databases] 2
                        "\12\12(fn _)"]
                  boundaries metadata minibuffer-selected-window
                  window-live-p window-buffer complete-with-action]
                 8 "\12\12(fn STRING PRED ACTION)"]
               :must-match confirm)
     port))
 '(tempel-path "/home/mvi/.config/emacs/templates/*.eld")
 '(warning-suppress-types '((comp) (comp)))
 '(world-clock-list '(("Europe/Copenhagen" "Denmark"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
