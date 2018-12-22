
(require 'package)

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)

(add-to-list 'load-path "~/.emacs.d/site-lisp/")

; List all packages I want
(setq package-list '(evil magit helm))

; Activate all the packages
(package-initialize)

; Refresh the archive
(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;;;;;;;;;;;;;;;; Helm Config ;;;;;;;;;;;;;;;;;;;;
(require 'helm)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-h a") 'helm-apropos)
(helm-mode 1)
;;;;;;;;;;;;;;;;; End Helm Config ;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;; Theme ;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'custom-theme-load-path "/Users/xttjsn/.emacs.d/themes")
(load-theme `tron t)
;;;;;;;;;;;;;;;;; End Theme ;;;;;;;;;;;;;;;;;;;;;;

; Start with vim mapping
(evil-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit ghub evil async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
