;;; eglot-java-lombok.el --- Lombok for Java Eglot    -*- lexical-binding: t; -*-

;; Copyright (c) 2025 Matthias Varberg Ingesman

;; Author: Matthias Varberg Ingesman
;; Keywords: lombok java eglot
;; Package-Requires: ((f "0.20.0"))
;; Version: 1.0.0

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Lombok for Java Eglot
;; Modified from https://github.com/sei40kr/eglot-java-lombok

;;; Code:

;; (require 'eglot-mode)
(require 'f)

(defgroup eglot-java-lombok nil
  "Lombok for Java Eglot"
  :prefix "eglot-java-lombok-"
  :group 'languages)

(defcustom eglot-java-lombok-jar-path (expand-file-name
                                       (locate-user-emacs-file
                                        (f-join ".cache" "lombok.jar")))
  "The location of the Lombok JAR."
  :group 'eglot-java-lombok
  :risky t
  :type 'directory)


;;;###autoload
(defun eglot-java-lombok-download ()
  "Download the latest Lombok JAR file and install it into `eglot-java-lombok-jar-path'."
  (interactive)
  (if (and (y-or-n-p (format "Download the latest Lombok JAR into %s? "
                             eglot-java-lombok-jar-path))
           (or (not (file-exists-p eglot-java-lombok-jar-path))
               (y-or-n-p (format "The Lombok JAR already exists at %s, overwrite? "
                                 eglot-java-lombok-jar-path))))
      (progn
        (mkdir (file-name-directory eglot-java-lombok-jar-path) t)
        (message "Downloading Lombok JAR into %s" eglot-java-lombok-jar-path)
        (url-copy-file "https://projectlombok.org/downloads/lombok.jar" eglot-java-lombok-jar-path t))
    (message "Aborted.")))


;;;###autoload
(defun eglot-java-lombok ()
  "Configure eglot-java to let the server to load the Lombok JAR."
  (setq eglot-java-eclipse-jdt-args
        (append eglot-java-eclipse-jdt-args
                (list (concat "-javaagent:" eglot-java-lombok-jar-path)
                                        ;(concat "-Xbootclasspath/a:" eglot-java-lombok-jar-path)
                      ))))

(provide 'eglot-java-lombok)

;;; eglot-java-lombok.el ends here
