;;; pathはexec-path-from-shellでshellの$PATHを引き継ぐ

;; $GOROOT/bin
;(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/"))

;; $GOPATH/bin
;(add-to-list 'exec-path (expand-file-name "/Users/ryo/.go/bin"))

(require 'go-mode)
(require 'company-go)

;; 諸々の有効化、設定
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook (lambda()
           (add-hook 'before-save-hook' 'gofmt-before-save)
           (local-set-key (kbd "M-.") 'godef-jump)
           (set (make-local-variable 'company-backends) '(company-go))
           (company-mode))

(defvar my/helm-go-source
  '((name . "Helm Go")
    (candidates . go-packages)
    (action . (("Show document" . godoc)
               ("Import package" . my/helm-go-import-add)))))

(defun my/helm-go-import-add (candidate)
  (dolist (package (helm-marked-candidates))
    (go-import-add current-prefix-arg package)))

(defun my/helm-go ()
  (interactive)
  (helm :sources '(my/helm-go-source) :buffer "*helm go*"))

(define-key go-mode-map (kbd "C-c C-d") 'my/helm-go)
(define-key go-mode-map (kbd "M-,") 'pop-tag-mark)