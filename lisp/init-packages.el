

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

(require ' cl)


(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/monokai-emacs-master/")
(load-theme 'monokai t)

(require 'hungry-delete)
(global-hungry-delete-mode)


(global-company-mode t)


(require ' popwin)
(popwin-mode t)


;; config smartparens
(require 'smartparens-config)
(smartparens-global-mode t)
(sp-local-pair ' emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair ' lisp-interaction-mode "'" nil :actions nil)

;; config smex-3.0
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.
;;(global-set-key (kbd "M-x") 'smex)

;; config swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


;; To load at the start up
(require ' reveal-in-osx-finder)


;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode)
	 ("\\.html\\'" . web-mode))
       auto-mode-alist))

(defun my-web-mode-indent-setup()
  (setq web-mode-markup-indent-offset 2) ;; web-mode, html tag in html file
  (setq web-mode-css-indent-offset 2)    ;; web-mode, css in html file
  (setq web-mode-code-indent-offset 2)   ;; web-mode, js code in html file
  )

(add-hook ' web-mode-hook ' my-web-mode-indent-setup)

(defun my-toggle-web-indent ()
  (interactive)
  ;; web development
  (if (or (eq major-mode ' js-mode) (eq major-mode ' js2-mode))
  (progn
    (setq js-indent-level (if (= js-indent-level 2) 4 2))
    (setq js2-basic-offset (if (= js2-basic-offset 2) 4 2))))

  (if (eq major-mode ' web-mode)
      (progn (setq web-mode-markup-indent-offset (if (= web-mode-makeup-indent-offset 2) 4 2))
	   (setq web-mode-css-indent-offset (if (= web-mode-css-indent-offset 2) 4 2))
	   (setq web-mode-code-indent-offset (if (= web-mode-code-indent-offset 2) 4 2))))

  (if (eq major-mode ' css-mode)
      (setq css-indent-offset (if (= css-indent-offset 2) 4 2)))

  (setq indent-tabs-mode nil))


(require ' expand-region)

(require ' iedit)

(require ' org-pomodoro)

;; doesn't work properly
(require ' helm-ag)

(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] ' evil-normal-state)

(global-evil-leader-mode)

(window-numbering-mode 1)

(require ' powerline)
;;(powerline-default-theme)

(require ' evil-surround)
(global-evil-surround-mode 1)








(provide ' init-packages)
