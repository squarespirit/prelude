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
