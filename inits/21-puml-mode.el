(setq plantuml-jar-path "~/bin/plantuml.jar")
(setq plantuml-java-options "")
(setq plantuml-options "-charset UTF-8")

(with-eval-after-load 'puml-mode
  ;; key bindings
  (define-key puml-mode-map (kbd "C-c C-c") 'puml-preview)

)