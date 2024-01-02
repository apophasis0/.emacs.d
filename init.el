;; -*- lexical-binding: t -*-
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package management
(require 'init-packages)  ;; 包管理

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-misc-config)  ;; 杂项
(require 'init-editor)  ;; 编辑器行为与增强
(require 'init-org)
(require 'init-rime)
(require 'init-flutter)
