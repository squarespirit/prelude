(global-visual-line-mode 1)
;; Do not rebind any keys in visual line mode
(dolist
    (key '([remap kill-line] [remap move-end-of-line] [remap move-beginning-of-line]))
  (define-key visual-line-mode-map key nil))

;; Unfortunately, on Tango, the hl line mode is the same color
;; as the region...
(global-hl-line-mode -1)
