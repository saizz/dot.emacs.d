(require 'highlight-symbol)

;(global-set-key [(control f3)] 'highlight-symbol)
;(global-set-key [f3] 'highlight-symbol-next)
;(global-set-key [(shift f3)] 'highlight-symbol-prev)
;(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;; 自動ハイライトをしたいならば
;(add-hook 'prog-mode-hook 'highlight-symbol-mode)
;; 自動ハイライトまでのディレイ
;(setq highlight-symbol-idle-delay 1.0)

;; ソースコードにおいてM-p/M-nでシンボル間を移動
;(add-hook 'prog-mode-hook 'highlight-symbol-nav-mode)

;(setq highlight-symbol-colors '("DarkOrange" "DodgerBlue1" "DeepPink1"))