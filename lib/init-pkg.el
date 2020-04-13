(require 'package)

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)

(add-to-list 'load-path "~/.emacs.d/site-lisp/")


; list the packages you want
(setq package-list
    '(all-the-icons neotree base16-theme afternoon-theme ample-theme nord-theme company-racer racer markdown-mode+ vue-mode dumb-jump magit company flycheck-rust flycheck json-mode flymake-json tss tide material-theme zenburn-theme ac-js2 auto-complete projectile helm js2-mode cargo rust-mode rust-playground css-mode skewer-mode))


; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
