(setq-default org-startup-indented t)

(setq org-ellipsis " •••")
(setq org-special-ctrl-a/e 'reversed)
;; Shift select everywhere but timestamps
(setq org-support-shift-select 'always)
;; https://orgmode.org/manual/Conflicts.html
;; Make windmove work in Org mode:
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)
