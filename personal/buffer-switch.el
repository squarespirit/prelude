;; Buffer switcher
(prelude-require-package 'pc-bufsw)
;; Unbind some strange key combos including M-[
(setq pc-bufsw-keys '(([C-tab]) ([C-S-tab] [C-S-iso-lefttab])))
(pc-bufsw +1)
;; More prominent selected buffer
(setq pc-bufsw-decorator-left (propertize "<" 'face 'bold))
(setq pc-bufsw-decorator-right (propertize ">" 'face 'bold))
