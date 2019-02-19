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

(let ((bg-0 "#15212d")         ; default
      (fg-0 "#e0f9ff")
      (bg-1 "#2c434f")
      (bg-3 "#426e8f")
      (fg-3 "#ffffff")
      (fg-orange "#db8d00")
      (bg256-0 "#080808")      ; default
      (fg256-0 "#eeeeee")
      (fg256-orange "#ffaf00")
      (color-256 '((class color) (min-colors 256)))
      (default-class '((class color) (min-colors 16777216))))

  (custom-theme-set-faces
   'mowl

   ;; Default
   `(default ((default (:family "Courier New" :width normal :height 130 :weight normal :slant normal ))
              (,default-class (:background ,bg-0 :foreground ,fg-0))
              (,color-256 (:background ,bg256-0 :foreground ,fg256-0))))

   ;; Fixed Pitch
   `(fixed-pitch (t (:family "Courier New")))
   `(fixed-pitch-serif (t (:family "Courier New")))

   ;; Region
   `(region ((,default-class (:background ,bg-3 :foreground ,fg-3))))

   ;; Comments Face
   `(font-lock-comment-face ((,default-class (:foreground ,fg-orange))
                             (,color-256 (:foreground ,fg256-orange))))

   ;; Ediff Fine Differences
   `(ediff-even-diff-A ((,default-class (:background ,bg-1))))
   `(ediff-even-diff-B ((,default-class (:background ,bg-1))))
   `(ediff-even-diff-C ((,default-class (:background ,bg-1))))
   `(ediff-odd-diff-A ((,default-class (:background ,bg-1))))
   `(ediff-odd-diff-B ((,default-class (:background ,bg-1))))
   `(ediff-odd-diff-C ((,default-class (:background ,bg-1))))

   `(ediff-current-diff-C ((,default-class (:background "#fffae0" :foreground "#404040")))) ; Yellow

   ;; Smerge
   `(smerge-lower ((,default-class (:background "#008a00" :foreground "#ffffff")))) ; Green
   `(smerge-upper ((,default-class (:background "#e01300" :foreground "#f0f0f0")))) ; Red

   ;; Markdown
   `(markdown-code-face ((,default-class (:background ,bg-1))))))

(provide-theme 'mowl)
