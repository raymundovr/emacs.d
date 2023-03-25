;; Init Web configuration
(require 'css-mode)

(require 'skewer-mode)
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.twig'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq sgml-quick-keys 'close)

(provide 'init-web)
