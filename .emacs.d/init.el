;;; init.el -- Scott Van Gilder's Emacs configuration
					;-*-Emacs-Lisp-*-

;;; Commentary
;;
;; Copy at your own risk. I use emacs for 
;; minimal. Mainly I'm using emacs for org mode and evil-mode to edit/navigate.
;; Anything else in this config file is shit i'm fucking around with.
;;
;;; Code:


;; Stuff added automatically
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org-jira ace-window evil org-bullets which-key try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

;; Essential settings.
(setq inhibit-splash-screen t
       inhibit-startup-message t
       inhibit-startup-echo-area-message t)
 (menu-bar-mode -1)
 ;(tool-bar-mode -1)
 ;(when (boundp 'scroll-bar-mode)
   ;(scroll-bar-mode -1))
;(show-paren-mode 1)
;(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
;(setq-default left-fringe-width nil)
;(setq-default indicate-empty-lines t)
;(setq-default indent-tabs-mode nil)

;(setq visible-bell t)
;(setq vc-follow-symlinks t)
;(setq large-file-warning-threshold nil)
;(setq split-width-threshold nil)
;(setq custom-safe-themes t)
;(column-number-mode t)
;(setq tab-width 2)
;(setq tramp-default-method "ssh")

;; Require package
;; Leave this here, or package.el will just add it again.
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;;; I think this could go here??
;(setq jiralib-url "http://jira-host/jira") 
;; you need make sure whether the "/jira" at the end is 
;; necessary or not, see discussion at the end of this page

;(require 'org-jira) 
;; jiralib is not explicitly required, since org-jira will load it.

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(use-package try

  :ensure t)

(use-package which-key
	:ensure t 
	:config
	(which-key-mode))

(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Org-mode stuff
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; EVIL MODE
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  ;; More configuration goes here
  )

;; Ace Window
(use-package ace-window
:ensure t
:init
(progn
(global-set-key [remap other-window] 'ace-window)
(custom-set-faces
'(aw-leading-char-face
((t (:inherit ace-jump-face-foreground :height 3.0)))))
))
