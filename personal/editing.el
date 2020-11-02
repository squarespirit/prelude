;; Disable guru
(defun disable-guru-mode ()
  (guru-mode -1))
(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

(setq prelude-whitespace nil)

(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-S-z") 'undo-tree-redo)

(delete-selection-mode 1)

;; I may regret this...
;; It may also reduce my hand strain
(global-set-key (kbd "<f2>") 'save-buffer)
(global-set-key (kbd "<f1>") 'find-file)
