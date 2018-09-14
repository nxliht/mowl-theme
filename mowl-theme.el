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

(let ((colbg-0 "#172329")
      (colbg-1 "#2c434f")
      (colfg-0 "#f4f6fa")
      (colfg-orange "#fe9225")
      (col256bg-0 "#1a1a1a")
      (col256fg-0 "#eeeeee")
      (default-class '((class color) (min-colors 16777216))))
  
  (custom-theme-set-faces
   'mowl

   ;; Default Face
   '(default ((t (:family "Courier New" :width normal :height 130 :weight normal :slant normal))))
   `(default ((,default-class (:background ,colbg-0 :foreground ,colfg-0)) (t (:background ,col256bg-0 :foreground ,col256fg-0))))

   ;; Comments Face
   `(font-lock-comment-face ((,default-class (:foreground ,colfg-orange))))

   ;; Ediff Fine Differences
   `(ediff-even-diff-A ((t (:background ,colbg-1))))
   `(ediff-even-diff-B ((t (:background ,colbg-1))))
   `(ediff-even-diff-C ((t (:background ,colbg-1))))
   `(ediff-odd-diff-A ((t (:background ,colbg-1))))
   `(ediff-odd-diff-B ((t (:background ,colbg-1))))
   `(ediff-odd-diff-C ((t (:background ,colbg-1))))))

(provide-theme 'mowl)
