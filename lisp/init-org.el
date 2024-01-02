;; -*- lexical-binding: t -*-
(require 'org)

;; 配置org导出pdf
(setq org-latex-compiler "xelatex")
(setq org-latex-pdf-process '("xelatex %f"))

;; latex 公式预览
(setq org-preview-latex-default-process 'dvisvgm)
(setq org-preview-latex-process-alist
      '((dvisvgm :programs
                 ("xelatex" "dvisvgm")
                 :description "xdv > svg" :message "you need to install the programs: xelatex and dvisvgm." :use-xcolor t :image-input-type "xdv" :image-output-type "svg" :image-size-adjust
                 (1.7 . 1.5)
                 :latex-compiler
                 ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")
                 :image-converter
                 ("dvisvgm %f -n -b min -c %S -o %O"))
        (imagemagick :programs
                     ("xelatex" "convert")
                     :description "pdf > png" :message "you need to install the programs: xelatex and imagemagick." :use-xcolor t :image-input-type "pdf" :image-output-type "png" :image-size-adjust
                     (1.0 . 1.0)
                     :latex-compiler
                     ("xelatex -interaction nonstopmode -output-directory %o %f")
                     :image-converter
                     ("convert -density %D -trim -antialias %f -quality 100 %O"))))
(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))

(use-package org-fragtog
  :ensure t
  :after org
  :hook
  (org-mode . org-fragtog-mode))


(provide 'init-org)
;; init-org.el ends here
