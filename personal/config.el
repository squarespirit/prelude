;; Disable guru
(defun disable-guru-mode ()
  (guru-mode -1))
(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

(setq prelude-whitespace nil)

(global-set-key (kbd "C-z") 'undo-tree-undo)
;; I often accidentally press this, and rarely use the fill column
(global-set-key (kbd "C-x f") 'find-file)

(global-set-key (kbd "M-i") 'imenu)


;; Buffer switcher
(prelude-require-package 'pc-bufsw)
;; Unbind some strange key combos including M-[
(setq pc-bufsw-keys '(([C-tab]) ([C-S-tab] [C-S-iso-lefttab])))
(pc-bufsw +1)
;; More prominent selected buffer
(setq pc-bufsw-decorator-left (propertize "<" 'face 'bold))
(setq pc-bufsw-decorator-right (propertize ">" 'face 'bold))

;; Looks
(global-visual-line-mode 1)

;; Better mouse scrolling
;; scroll one line at a time (less "jumpy" than defaults)
;; https://www.emacswiki.org/emacs/SmoothScrolling
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; 2 lines at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

;; Lose the scroll bar, which is only a little useful, but gain the ability to resize vertical
;; splits w/ the mouse
;; https://stackoverflow.com/a/9646770
(scroll-bar-mode -1)

;; Unfortunately, on Tango, the hl line mode is the same color
;; as the region...
(global-hl-line-mode -1)

;; Org mode
(setq org-ellipsis " •••")
;; Shift select everywhere but timestamps
(setq org-support-shift-select 'always)
;; https://orgmode.org/manual/Conflicts.html
;; Make windmove work in Org mode:
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)
