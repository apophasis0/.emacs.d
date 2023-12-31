;; -*- lexical-binding: t -*-

;; <f2> 快速打开配置文件
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;; 全局 Company-mode
(use-package company
  :ensure t
  :hook (prog-mode . company-mode))

(provide 'init-misc-config)
;;; init-misc-config.el ends here
