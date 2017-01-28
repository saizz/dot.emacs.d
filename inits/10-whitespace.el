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
  (tab-mark ?\t [?\x3E ?\t] [?\\ ?\t])
  (space-mark ?\u3000 [?\u25a1])
;  (space-mark ?\u0020 [?\xB7])
  (newline-mark ?\n [?\u21B5 ?\n] [?$ ?\n])))

;; spaceはu3000のみとする
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; faceの定義
(defvar my/ws-bg-color "#1f1f1f")
(defvar my/ws-fg-color "#0f0f0f")
(set-face-attribute 'whitespace-trailing nil
                    :background my/ws-bg-color
                    :foreground "deep pink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :background my/ws-bg-color
                    :foreground my/ws-fg-color)
(set-face-attribute 'whitespace-space nil
                    :background my/ws-bg-color
                    :foreground my/ws-fg-color)
(set-face-attribute 'whitespace-newline nil
                    :foreground my/ws-fg-color)

;; 保存前に自動でクリーンアップ
(setq whitespace-action '(auto-cleanup))

(global-whitespace-mode 1)