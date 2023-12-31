;; -*- lexical-binding: t -*-
(require 'package)
(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
                         ("melpa" . "http://1.15.88.122/melpa/")))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(provide 'init-packages)
;;; init-package.el ends here
