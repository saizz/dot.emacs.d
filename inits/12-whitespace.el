(require 'whitespace)

;; 有効にする個所
(setq whitespace-style '(
  face           ; faceで可視化
  trailing       ; 行末
  tabs           ; タブ
  spaces         ; スペース
  newline        ; 改行
;  empty          ; 先頭/末尾の空行
  tab-mark
  space-mark
  newline-mark))

;; 表示のマッピング定義
(setq whitespace-display-mappings '(
;  (tab-mark ?\t [?\x3E ?\t] [?\\ ?\t])
;  (tab-mark ?\t [?\xBB ?\t] [?\\ ?\t])
  (space-mark ?\u3000 [?\u25a1])
;  (space-mark ?\u0020 [?\xB7])
  (newline-mark ?\n [?\u21B5 ?\n] [?$ ?\n])
  ))

;; spaceはu3000のみとする
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; faceの定義
(defun my/set-whitespace-face ()
  (set-face-foreground 'whitespace-trailing "DeepPink")

  ;; for monokai theme
  ;(set-face-foreground 'whitespace-tab (face-attribute 'whitespace-newline :foreground))
  ;(set-face-background 'whitespace-tab "Glay")
  ;; for other theme
  (set-face-foreground 'whitespace-tab "Glay")
  (set-face-background 'whitespace-tab (face-attribute 'whitespace-newline :foreground))


  (set-face-underline 'whitespace-tab t))

(my/set-whitespace-face)

;; 保存前に自動でクリーンアップ
(setq whitespace-action '(auto-cleanup))

;(global-whitespace-mode)