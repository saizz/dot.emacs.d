(add-to-list 'default-frame-alist '(font . "Myrica M-11"))
(set-face-attribute 'default t :font "Myrica M-11")

; ascii
(set-fontset-font "fontset-myrica"
   		  'ascii
   		  (font-spec :family "Myrica M" :size 14) nil 'prepend) 

(set-fontset-font nil
   		  'ascii
   		  (font-spec :family "VL Gothic" :height 140) nil 'prepend) 

; japanese
(set-fontset-font "fontset-myrica"
 		  'japanese-jisx0213.2004-1
  		  (font-spec :family "Myrica M") nil 'prepend)

(set-fontset-font nil
 		  'japanese-jisx0213.2004-1
  		  (font-spec :family "VL Gothic") nil 'prepend)

;; 行間の調整
(setq-default line-spacing 0)
