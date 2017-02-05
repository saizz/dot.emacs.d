// [WIP]
(with-eval-after-load 'markdown-mode

  (defun my/eww-open-file-other-window (file)
    (if (one-window-p) (split-window))
    (other-window 1)
    (eww-open-file file))

  (defun my/markdown-preview-eww ()
    (interactive)
    (message (buffer-file-name))
    (call-process "/usr/local/bin/marked" nil nil nil
                  "--gfm" "-o" "~/.emacs.d/tmp/marked.html" (buffer-file-name))
    (my/eww-open-file-other-window "~/.emacs.d/tmp/marked.html"))

  ;; key bindings
  (define-key markdown-mode-map (kbd "C-c C-c") 'my/markdown-preview-eww)
)