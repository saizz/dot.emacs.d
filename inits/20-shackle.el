;(require 'shackle)
(setq shackle-rules
      '(;; *compilation*は下部に2割の大きさで表示
        (compilation-mode :align below :ratio 0.2)
        ;; ヘルプバッファは右側に表示
        ("*Help*" :align right)
        ;; 補完バッファは下部に3割の大きさで表示
        ("*Completions*" :align below :ratio 0.3)
        ;; helm
        ("\\`\\*helm.*?\\*\\'" :regexp t :align t :size 0.4)
        ))
(shackle-mode 1)
(setq shackle-lighter "")

(winner-mode 1)
(global-set-key (kbd "C-z") 'winner-undo)