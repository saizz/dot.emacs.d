;; C-aをカスタマイズ
(global-set-key (kbd "C-a") 'my/goto-line-beginning-or-indent)
;; C-hをBSに
(global-set-key (kbd "C-h") 'backward-delete-char)

;; whitespace toggle
(global-set-key (kbd "C-x w") 'global-whitespace-mode)

;; helm
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key global-map (kbd "C-c i")   'helm-imenu)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)

;; comment region
(global-set-key (kbd "C-c ;")   'comment-region)
(global-set-key (kbd "C-c M-;") 'uncomment-region)

;; direx
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; highlight-symbol
;(global-set-key [f3] 'highlight-symbol)
;(global-set-key (kbd "M-s M-r") 'highlight-symbol-query-replace) ;; replace-symbol

;; replace C-x o to win-switch
(global-set-key (kbd "C-x o") 'win-switch-dispatch)

;; undo window layout
(global-set-key (kbd "C-z") 'winner-undo)