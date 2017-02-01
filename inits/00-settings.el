;; create backup file in ~/.emacs.d/backup
(setq make-backup-files t)
(setq backup-directory-alist
  (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
    backup-directory-alist))

;; create auto-save file in ~/.emacs.d/backup
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))

;; 起動時のスプラッシュ画面を非表示
(setq inhibit-startup-message t)

;; ビープ音を消す
(setq visible-bell t)

;; エラー時の画面のフラッシュを抑制
(setq ring-bell-function 'ignore)

;; ツールバーを非表示
(tool-bar-mode 0)

;; メニューバーを非表示
(menu-bar-mode 0)

;; スクロールバーを非表示
(scroll-bar-mode 0)

;; 質問を y/n に
(fset 'yes-or-no-p 'y-or-n-p)

;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format
    (format "%%f - Emacs@%s" (system-name)))

;; 左側に行番号表示
;(global-linum-mode t)
;(setq linum-format "%4d ")

;; EOFをフリンジに表示
(setq-default indicate-empty-lines t)

;; 現在行を目立たせる
(global-hl-line-mode)

;; 選択範囲をハイライト
(setq-default transient-mark-mode t)

;; 対応する括弧をハイライト
(show-paren-mode t)

;; Scroll window on a line-by-line basis
(setq scroll-conservatively 1000)
(setq scroll-step 1)
(setq scroll-margin 0) ; default=0

;; マウスホイールのスクロール量を3行にする
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; 3 line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

;; タブ文字の幅を設定
(setq-default tab-width 4)

;; インデント文字をタブではなく空白に設定
(setq-default indent-tabs-mode nil)

;; 反対側のウィンドウにいけるように
(setq windmove-wrap-around t)

;; C-u C-SPC C-SPC...で複数のmarkをたどれるように
(setq set-mark-command-repeat-pop t)

;; リージョンを削除できるようにする
(delete-selection-mode t)

;; windowの履歴を辿れるようにする
(winner-mode 1)
