;;; mowl-theme.el --- Custom theme for emacs

;; Copyright (C) 2018 Free Software Foundation, Inc.

;; Author: Michel Ocon <nxlith@gmail.com>

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary

;; Custom theme for emacs

;;; Code:

(deftheme mowl
  "Nice dark theme for emacs.")

(let ((cbg-0 "#172329")
      (cbg-1 "#2c434f")
      (cfg-0 "#f4f6fa")
      (cfg-orange "#fe9225")
      (c256bg-0 "#1a1a1a")
      (c256fg-0 "#eeeeee")
      (default-class '((class color) (min-colors 16777216))))
  
  (custom-theme-set-faces
   'mowl

   ;; Default Face
   '(default ((t (:family "Courier New" :width normal :height 130 :weight normal :slant normal))))
   `(default ((,default-class (:background ,cbg-0 :foreground ,cfg-0)) (t (:background ,c256bg-0 :foreground ,c256fg-0))))

   ;; Comments Face
   `(font-lock-comment-face ((,default-class (:foreground ,cfg-orange))))

   ;; Ediff Fine Differences
   `(ediff-even-diff-A ((,default-class (:background ,cbg-1))))
   `(ediff-even-diff-B ((,default-class (:background ,cbg-1))))
   `(ediff-even-diff-C ((,default-class (:background ,cbg-1))))
   `(ediff-odd-diff-A ((,default-class (:background ,cbg-1))))
   `(ediff-odd-diff-B ((,default-class (:background ,cbg-1))))
   `(ediff-odd-diff-C ((,default-class (:background ,cbg-1))))))

(provide-theme 'mowl)
