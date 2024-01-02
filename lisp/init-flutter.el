;; -*- lexical-binding: t -*-

;; Assuming usage with dart-mode
(use-package dart-mode
  ;; Optional
  :ensure t
  :hook (dart-mode . flutter-test-mode))

(use-package flutter
  :ensure t
  :after dart-mode
  :bind (:map dart-mode-map
              ("C-M-x" . #'flutter-run-or-hot-reload))
  :custom
  (flutter-sdk-path "/opt/flutter/"))

(provide 'init-flutter)
;; init-flutter.el ends here
