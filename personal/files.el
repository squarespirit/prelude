(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'counsel-recentf)

;; I often accidentally press this, and rarely use the fill column
(global-set-key (kbd "C-x f") 'find-file)
