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

(use-package multi-term
  :ensure t
  :init
  :config
  (require 'multi-term)
  (global-set-key (kbd "C-c mn") 'multi-term)
  (global-set-key (kbd "C-c mt") 'multi-term-dedicated-toggle))

(use-package flycheck
  :ensure t
  :init
  :config
  (with-eval-after-load 'flycheck
    (flycheck-add-mode 'javascript-eslint 'typescript-mode))
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

(use-package typescript-mode
  :ensure t
  :init
  :config
  (require 'evil-magit))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))


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
(setq company-tooltip-align-annotations t)
;; formats the buffer before saving
;; (add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)


(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
(add-hook 'typescript-mode-hook 'tide-mode)
(add-hook 'typescript-mode-hook 'flycheck-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'flycheck-mode)

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
(add-hook 'vue-mode-hook 'flycheck-mode)


