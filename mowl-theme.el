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

(let ((bg-0 "#111b27")
      (bg-1 "#2c434f")
      (bg256-0 "#1a1a1a")
      (fg-0 "#e8f0ff")
      (fg-orange "#fe9225")
      (fg256-0 "#eeeeee")
      (default-class '((class color) (min-colors 16777216))))

  (custom-theme-set-faces
   'mowl

   ;; Default Face
   '(default ((t (:family "Courier New" :width normal :height 130 :weight normal :slant normal))))
   `(default ((,default-class (:background ,bg-0 :foreground ,fg-0)) (t (:background ,bg256-0 :foreground ,fg256-0))))

   ;; Comments Face
   `(font-lock-comment-face ((,default-class (:foreground ,fg-orange))))

   ;; Ediff Fine Differences
   `(ediff-even-diff-A ((,default-class (:background ,bg-1))))
   `(ediff-even-diff-B ((,default-class (:background ,bg-1))))
   `(ediff-even-diff-C ((,default-class (:background ,bg-1))))
   `(ediff-odd-diff-A ((,default-class (:background ,bg-1))))
   `(ediff-odd-diff-B ((,default-class (:background ,bg-1))))
   `(ediff-odd-diff-C ((,default-class (:background ,bg-1))))

   ;; Markdown
   `(markdown-code-face ((,default-class (:background ,bg-1))))))

(provide-theme 'mowl)
