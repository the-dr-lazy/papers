;;; .dir-local.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Mohammad Hasani
;;
;; Author: Mohammad Hasani <the-dr-lazy@pm.me>
;; Maintainer: Mohammad Hasani <the-dr-lazy@pm.me>
;; Created: October 10, 2022
;; Modified: October 10, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/the-dr-lazy/.dir-local
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(org-babel-do-load-languages
 'org-babel-load-languages
 '((ditaa . t)))

;; (setq org-latex-caption-above nil)

(setq org-ditaa-jar-path "/nix/store/cz96gkb7vg01jg409v2sh5ry6xaj6xyr-ditaa-0.11.0/lib/ditaa.jar")

(provide '.dir-local)
;;; .dir-local.el ends here
