
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

(package-initialize)

(tool-bar-mode -1)

(require ' cl)

(global-linum-mode t)
(setq inhibit-splash-screen t)


;;- turn off tool-bar
;;- turn off scroll-bar
;;- show linum-mode
;;- turn off splash screen
;;- save your config
;;- define a function to quickly open your file.

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

(global-company-mode t)

(setq-default cursor-type 'bar)

(setq make-backup-files nil)
(setq auto-save-default nil)


(require 'org)
(setq org-src-fontify-natively t)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(delete-selection-mode t)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


(global-hl-line-mode t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-emacs-master/")
(load-theme 'monokai t)

;; Day 2

(require 'hungry-delete)
(global-hungry-delete-mode)


;; config smex-3.0
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.
;;(global-set-key (kbd "M-x") 'smex)

;; config swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)


;; config smartparens
(require 'smartparens-config)
(smartparens-global-mode t)


;; set-global-key
(global-set-key (kbd "C-h C-f") ' find-function)
(global-set-key (kbd "C-h C-v") ' find-variable)
(global-set-key (kbd "C-h C-k") ' find-function-on-key)


;;Org-mode
(setq org-agenda-files ' ("~/org"))
(global-set-key (kbd "C-c a") ' org-agenda)

;; Day 3


(require ' popwin)
(popwin-mode t)

(abbrev-mode t)
(define-abbrev-table ' global-abbrev-table ' (
					      ;;signature
					      ("8zl" "zyt755")

					      ))

(setq ring-bell-function ' ignore)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("95b0bc7b8687101335ebbf770828b641f2befdcf6d3c192243a251ce72ab1692" default)))
 '(package-selected-packages
   (quote
    (popwin smartparens counsel swiper smex company-arduino company hungry-delete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

