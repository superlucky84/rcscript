(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize) 
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))


(use-package jbeans-theme
  :ensure t
  :init
  :config
  (load-theme 'jbeans t))

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode t))

(use-package evil-surround
  :ensure t
  :init
  :config
  (global-evil-surround-mode t))

(use-package ivy
  :ensure t
  :init
  :config
  (ivy-mode t)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package helm
  :ensure t
  :init
  :config
  (helm-mode t)
  (global-set-key (kbd "C-c bl") 'helm-buffers-list))

(use-package neotree
  :ensure t
  :init
  :config
  (global-set-key (kbd "C-c r") 'neotree-toggle))

(use-package flycheck
  :ensure t
  :init
  :config
  (global-set-key (kbd "C-c el") 'flycheck-list-errors))

(use-package projectile
  :ensure t
  :init
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package evil-magit
  :ensure t
  :init
  :config
  (require 'evil-magit))


(use-package rg
  :ensure t)
(use-package helm-rg
  :ensure t)
(use-package helm-projectile
  :ensure t)
(use-package counsel
  :ensure t)
(use-package vue-mode
  :ensure t)
(use-package js2-mode
  :ensure t)
(use-package swiper-helm
  :ensure t)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default evil-shift-width 2)
(setq-default js-basic-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq js-indent-level 2)
(setq js2-basic-offset 2)
(setq nxml-child-indent 2 nxml-attribute-indent 2)
(setq-default typescript-indent-level 2)
(setq-default c-basic-offset 2)
(global-linum-mode t)


(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
(evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
(evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'flycheck-mode)

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
(add-hook 'vue-mode-hook 'flycheck-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-magit magit projectile flycheck neotree helm ivy evil-surround evil jbeans use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
