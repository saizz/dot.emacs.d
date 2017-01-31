(require 'helm-config)
(helm-mode 1)
(helm-migemo-mode 1)

(setq helm-display-function 'pop-to-buffer)

(require 'helm-swoop)
;; isearch実行中にhelm-swoopに移行
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; helm-swoop実行中にhelm-multi-swoop-allに移行
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
