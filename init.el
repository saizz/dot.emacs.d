; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;(setq url-proxy-services '(("http" . "hoge.jp:8080")))

;; add to load path
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;; packeage manage
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; auto install package
(require 'cl)
(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    init-loader
    exec-path-from-shell
    company
    company-go
    flycheck
    helm
    helm-swoop
    highlight-symbol
    smart-cursor-color
    which-key
    win-switch
    go-mode
    darkburn-theme
    flatland-theme
    jazz-theme
    leuven-theme
    zenburn-theme
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))

;; init loader
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
