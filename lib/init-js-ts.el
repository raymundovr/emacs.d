;; Javascript and Typescript init
(require 'json-mode)
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js[x]\\'" . js2-mode))

(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)

(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts[x]\\'" . typescript-mode))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side


;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'json-mode #'flycheck-mode)
(add-to-list 'projectile-globally-ignored-files "*node_modules")

(provide 'init-js-ts)
