

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







(provide ' init-packages)
