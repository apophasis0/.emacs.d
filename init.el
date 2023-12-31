;; -*- lexical-binding: t -*-
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package management
(require 'init-packages)  ;; 包管理
(require 'init-misc-config)  ;; 杂项
(require 'init-editor)  ;; 编辑器行为与增强

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(use-package vertico orderless marginalia embark consult
      embark-consult company cnfonts)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
