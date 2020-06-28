;;; packages.el --- pollen layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Joel Dueck <joel@jdueck.net>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `pollen-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `pollen/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `pollen/pre-init-PACKAGE' and/or
;;   `pollen/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst pollen-packages
  '(pollen-mode
    (company-pollen :requires company)))

;; The layer will still work if you uncomment the defer, mode and magic lines
;; below. But if you open a Pollen preprocessor file (.pp), this will force the
;; pollen major mode, rather than using the minor mode and setting the correct
;; major mode for the output format.
(defun pollen/init-pollen-mode ()
  (use-package pollen-mode
               ; :defer t
               ; :mode "\\.pm\\'"
               ; :magic "#lang pollen"
               ))

(defun pollen/init-company-pollen ()
  (use-package company-pollen
               :config
               (spacemacs|add-company-backends
                 :backends company-pollen-backend
                 :modes pollen-mode)
               ))

;;; packages.el ends here
