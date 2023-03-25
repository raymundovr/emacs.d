;; Editor initialization

(setq company-tooltip-align-annotations t)
;; (require 'helm-config)
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
(setq js-indent-level 4)
(tool-bar-mode -1)
(electric-pair-mode +1)
(dumb-jump-mode)
(global-display-line-numbers-mode)
;; (load-theme 'misterioso t)
(load-theme 'doom-shades-of-purple t)
;; Born to be wild
(setq make-backup-files nil)
;; Load user path
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(set-frame-parameter (selected-frame) 'alpha '(97))
(add-to-list 'default-frame-alist '(alpha . (97)))

;; Show full path in window title
(setq frame-title-format
      '(buffer-file-name "%b - %f" ; File buffer
        (dired-directory dired-directory ; Dired buffer
         (revert-buffer-function "%b" ; Buffer Menu
          ("%b - Dir: " default-directory))))) ; Plain buffer

(require 'iedit)
(require 'gitlab-ci-mode)
(require 'gitlab-ci-mode-flycheck)

(provide 'init-editor)
