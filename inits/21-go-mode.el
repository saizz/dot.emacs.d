;;; pathはexec-path-from-shellでshellの$PATHを引き継ぐ

;; $GOROOT/bin
;(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/"))

;; $GOPATH/bin
;(add-to-list 'exec-path (expand-file-name "/Users/ryo/.go/bin"))

;(require 'go-mode)
;(require 'company-go)

(with-eval-after-load 'go-mode

  ;; company-mode
  ;(add-to-list 'company-backends 'company-go)

  ;; eldoc
  (add-hook 'go-mode-hook 'go-eldoc-setup)

  (defvar my/helm-go-source
    '((name . "Helm Go")
      (candidates . (lambda ()
                      (cons "builtin" (go-packages))))
      (action . (("Show document" . godoc)
                ("Import package" . my/helm-go-import-add)))))

  (defun my/helm-go-import-add (candidate)
    (dolist (package (helm-marked-candidates))
      (go-import-add current-prefix-arg package)))

  (defun my/helm-go ()
    (interactive)
    (helm :sources '(my/helm-go-source) :buffer "*helm go*"))

  ;; key bindings
  (define-key go-mode-map (kbd "M-.") 'godef-jump)
  (define-key go-mode-map (kbd "M-,") 'pop-tag-mark)
  (define-key go-mode-map (kbd "C-c C-d") 'my/helm-go)
  (define-key go-mode-map (kbd "C-c C-j") 'go-direx-pop-to-buffer))
