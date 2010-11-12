;;; org-htmlslidy.el --- helpers for htmlslidy org export

;; Copyright (C) 2009  Free Software Foundation, Inc.

;; Author: Yann Hodique <yann.hodique@gmail.com>
;; Keywords:

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;;

;;; Code:

(defvar org-htmlslidy-html-preamble-header nil)
(defvar org-htmlslidy-html-preamble-footer nil)

(defun org-htmlslidy-string-or-call (v)
  (or
   (and org-htmlslidy-html-preamble-footer
        (or (and (functionp v)
                 (funcall v))
            (and (stringp v) v)))
   ""))

(defun org-htmlslidy-html-preamble-function (&rest ignore)
  (insert (format "<div class='slide cover title'>
<h1>%s</h1><h3>%s</h3></div>"
                  title author)))

(defun org-htmlslidy-html-postamble-function (&rest ignore)
  (insert ""))

(provide 'org-htmlslidy)
;;; org-htmlslidy.el ends here
