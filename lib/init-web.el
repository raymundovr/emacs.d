;; Init Web configuration
(require 'css-mode)

(require 'vue-mode)
;; (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))

(require 'skewer-mode)
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(provide 'init-web)
