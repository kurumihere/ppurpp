;;; ppurpp-theme.el --- Ppurpp color theme -*- lexical-binding: t -*-

;; Copyright (C) 2026 kurumi

;; Author: kurumi <kurumi@localhost>
;; Maintainer: kurumi <kurumi@localhost>
;; URL: https://github.com/kurumihere/ppurpp
;; Version: 0.1.0
;; Package-Requires: ((emacs "25.1"))
;; Keywords: themes, faces

;; This file is not part of GNU Emacs.

;;; License:

;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:

;; Ppurpp is a dark theme with a soothing purple/dark background and
;; a balanced color palette, originally designed for Vim and now available
;; for Emacs.
;;
;; To use this theme, add the following to your init.el:
;;
;;   (load-theme 'ppurpp t)

;;; Code:

(deftheme ppurpp
  "A beautiful dark theme.")

(let ((bg         "#20202a")
      (bg-alt     "#22222e")
      (bg-hl      "#40375e")
      (fg         "#abb2bf")
      (muted      "#5c6370")
      (disabled   "#495162")
      (accent     "#fb7385")
      (urgent     "#ff4e4e")
      (red        "#fb7385")
      (green      "#98c379")
      (yellow     "#e5bc66")
      (blue       "#61afef")
      (magenta    "#ce95b8")
      (cyan       "#56b6c2")
      (cursor     "#dedede"))

  (custom-theme-set-faces
   'ppurpp

   ;; Basic
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,cursor :foreground ,bg))))
   `(region ((t (:background ,bg-hl :extend t))))
   `(highlight ((t (:background ,bg-hl))))
   `(hl-line ((t (:background ,bg-alt :extend t))))
   `(minibuffer-prompt ((t (:foreground ,accent :weight bold))))
   `(vertical-border ((t (:foreground ,bg-alt))))
   `(fringe ((t (:background ,bg :foreground ,muted))))
   `(line-number ((t (:foreground ,disabled :background ,bg))))
   `(line-number-current-line ((t (:foreground ,accent :background ,bg :weight bold))))
   `(error ((t (:foreground ,urgent :weight bold))))
   `(warning ((t (:foreground ,yellow))))
   `(success ((t (:foreground ,green))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,blue))))
   `(font-lock-comment-face ((t (:foreground ,muted :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,muted :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,magenta))))
   `(font-lock-doc-face ((t (:foreground ,yellow :slant italic))))
   `(font-lock-function-name-face ((t (:foreground ,green))))
   `(font-lock-keyword-face ((t (:foreground ,red :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,red))))
   `(font-lock-preprocessor-face ((t (:foreground ,cyan))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,magenta :weight bold))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,red :weight bold))))
   `(font-lock-string-face ((t (:foreground ,yellow))))
   `(font-lock-type-face ((t (:foreground ,blue))))
   `(font-lock-variable-name-face ((t (:foreground ,fg))))
   `(font-lock-warning-face ((t (:foreground ,urgent :weight bold))))

   ;; Mode Line
   `(mode-line ((t (:background ,bg-alt :foreground ,fg :box (:line-width 1 :color ,bg-alt)))))
   `(mode-line-inactive ((t (:background ,bg :foreground ,muted :box (:line-width 1 :color ,bg)))))

   ;; Isearch
   `(isearch ((t (:background ,yellow :foreground ,bg :weight bold))))
   `(isearch-fail ((t (:background ,urgent :foreground ,bg :weight bold))))
   `(lazy-highlight ((t (:background ,bg-hl :foreground ,yellow))))

   ;; Link
   `(link ((t (:foreground ,blue :underline t))))
   `(link-visited ((t (:foreground ,magenta :underline t))))

   ;; Company
   `(company-tooltip ((t (:background ,bg-alt :foreground ,fg))))
   `(company-tooltip-annotation ((t (:foreground ,muted))))
   `(company-tooltip-selection ((t (:background ,bg-hl :foreground ,fg))))
   `(company-tooltip-common ((t (:foreground ,accent :weight bold))))

   ;; Magit
   `(magit-branch-local ((t (:foreground ,blue :weight bold))))
   `(magit-branch-remote ((t (:foreground ,green :weight bold))))
   `(magit-diff-added ((t (:background ,bg-alt :foreground ,green))))
   `(magit-diff-added-highlight ((t (:background ,bg-hl :foreground ,green))))
   `(magit-diff-removed ((t (:background ,bg-alt :foreground ,red))))
   `(magit-diff-removed-highlight ((t (:background ,bg-hl :foreground ,red))))
   `(magit-diff-context ((t (:foreground ,fg))))
   `(magit-hash ((t (:foreground ,muted))))
   `(magit-section-heading ((t (:foreground ,accent :weight bold))))
   `(magit-diff-file-heading ((t (:weight bold))))

   ;; Vertico
   `(vertico-current ((t (:background ,bg-hl :foreground ,fg))))

   ;; Corfu
   `(corfu-default ((t (:background ,bg-alt :foreground ,fg))))
   `(corfu-current ((t (:background ,bg-hl :foreground ,fg))))
   `(corfu-annotations ((t (:foreground ,muted))))

   ;; Marginalia
   `(marginalia-documentation ((t (:foreground ,muted :slant italic))))
   `(marginalia-type ((t (:foreground ,blue))))

   ;; Dired
   `(dired-directory ((t (:foreground ,blue :weight bold))))
   `(dired-symlink ((t (:foreground ,cyan))))
   `(dired-ignored ((t (:foreground ,disabled))))

   ;; Show Paren
   `(show-paren-match ((t (:background ,bg-hl :foreground ,accent :weight bold))))
   `(show-paren-mismatch ((t (:background ,urgent :foreground ,bg :weight bold))))

   ;; Flymake
   `(flymake-error ((t (:underline (:style wave :color ,urgent)))))
   `(flymake-warning ((t (:underline (:style wave :color ,yellow)))))
   `(flymake-note ((t (:underline (:style wave :color ,cyan)))))

   ;; Flycheck
   `(flycheck-error ((t (:underline (:style wave :color ,urgent)))))
   `(flycheck-warning ((t (:underline (:style wave :color ,yellow)))))
   `(flycheck-info ((t (:underline (:style wave :color ,cyan)))))

   ;; Org Mode
   `(org-level-1 ((t (:foreground ,accent :weight bold :height 1.2))))
   `(org-level-2 ((t (:foreground ,blue :weight bold :height 1.1))))
   `(org-level-3 ((t (:foreground ,green :weight bold))))
   `(org-level-4 ((t (:foreground ,yellow :weight bold))))
   `(org-level-5 ((t (:foreground ,cyan :weight bold))))
   `(org-level-6 ((t (:foreground ,magenta :weight bold))))
   `(org-level-7 ((t (:foreground ,muted :weight bold))))
   `(org-level-8 ((t (:foreground ,disabled :weight bold))))
   `(org-document-title ((t (:foreground ,accent :weight bold :height 1.3))))
   `(org-document-info ((t (:foreground ,blue))))
   `(org-document-info-keyword ((t (:foreground ,muted))))
   `(org-block ((t (:background ,bg-alt :foreground ,fg))))
   `(org-block-begin-line ((t (:foreground ,muted :background ,bg-alt))))
   `(org-block-end-line ((t (:foreground ,muted :background ,bg-alt))))
   `(org-meta-line ((t (:foreground ,muted))))
   `(org-date ((t (:foreground ,cyan :underline t))))
   `(org-todo ((t (:foreground ,urgent :weight bold))))
   `(org-done ((t (:foreground ,green :weight bold))))
   `(org-table ((t (:foreground ,blue))))
   `(org-formula ((t (:foreground ,yellow))))
   `(org-code ((t (:foreground ,yellow))))
   `(org-verbatim ((t (:foreground ,green))))
   `(org-link ((t (:foreground ,blue :underline t))))
   `(org-quote ((t (:foreground ,muted :slant italic))))

   ;; Tree Sitter
   `(tree-sitter-hl-face:function ((t (:foreground ,green))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,green))))
   `(tree-sitter-hl-face:method ((t (:foreground ,green))))
   `(tree-sitter-hl-face:method.call ((t (:foreground ,green))))
   `(tree-sitter-hl-face:type ((t (:foreground ,blue))))
   `(tree-sitter-hl-face:type.builtin ((t (:foreground ,blue))))
   `(tree-sitter-hl-face:property ((t (:foreground ,blue))))
   `(tree-sitter-hl-face:variable ((t (:foreground ,fg))))
   `(tree-sitter-hl-face:variable.builtin ((t (:foreground ,accent))))
   `(tree-sitter-hl-face:variable.parameter ((t (:foreground ,fg))))
   `(tree-sitter-hl-face:operator ((t (:foreground ,fg))))
   `(tree-sitter-hl-face:keyword ((t (:foreground ,red :weight bold))))
   `(tree-sitter-hl-face:string ((t (:foreground ,yellow))))
   `(tree-sitter-hl-face:number ((t (:foreground ,magenta))))
   `(tree-sitter-hl-face:constant ((t (:foreground ,magenta))))
   `(tree-sitter-hl-face:constant.builtin ((t (:foreground ,magenta))))

   ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'ppurpp)
(provide 'ppurpp)

;;; ppurpp-theme.el ends here
