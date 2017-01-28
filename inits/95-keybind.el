;; C-hをBSに
(global-set-key (kbd "C-h") 'backward-delete-char)

;; direx
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; hilight-symbol
(global-set-key [f3] 'highlight-symbol)
(global-set-key (kbd "M-s M-r") 'highlight-symbol-query-replace) ;; replace-symbol