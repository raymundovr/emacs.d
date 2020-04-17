;; Rust config
(require 'rust-mode)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(setq rust-format-on-save t)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)

;; Rust playground https://github.com/grafov/rust-playground
;; M-x rust-playground -> Type -> Ctrl-RET -> See results -> M-x rust-playground-rm
(require 'rust-playground)

(provide 'init-rust)
