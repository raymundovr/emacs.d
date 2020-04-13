;; Editor initialization

(setq company-tooltip-align-annotations t)
(require 'helm-config)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(require 'auto-complete-config)
(ac-config-default)
(require 'neotree)
(global-set-key (kbd "C-c n") 'neotree-toggle)

(require 'all-the-icons)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq tab-width 4)
(tool-bar-mode -1)
(electric-pair-mode +1)
(dumb-jump-mode)
(global-display-line-numbers-mode)
(load-theme 'base16-horizon-dark t)
;; Born to be wild
(setq make-backup-files nil)

(provide 'init-editor)
