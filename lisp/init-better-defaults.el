
(setq make-backup-files nil)

(setq auto-save-default nil)


(setq ring-bell-function ' ignore)


(abbrev-mode t)
(define-abbrev-table ' global-abbrev-table ' (
					      ;;signature
					      ("8zl" "zyt755")

					      ))

(require 'recentf)
(recentf-mode 1)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-auto-revert-mode t)

(setq recentf-max-menu-items 25)

(delete-selection-mode t)



;;;###autolaod
;;(defun autoload-init-better-defaults()
;;  (interactive)
;;  (message " autoload-init-better-defaults"))



;;indent 
(defun indent-buffer()

  "Indent the currently visiited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))
;;indent-whole
(defun indent-region-or-buffer()
  "Indent a region if selected, otherwise the whole buffer"
  (interactive)
  (save-excursion)
  (if (region-active-p)
      (progn
	(indent-region (region-beginning) (region-end))
	(progn
	  (indent-buffer)
	  (message "Indent buffer.")))))



;; hippie-expand
(setq hippie-expand-try-functions-list ' (try-expand-dabbrev
					  try-expand-dabbrev-all-buffers
					  try-expand-dabbrev-from-kill
					  try-complete-file-name-partially
					  try-complete-file-name
					  try-expand-all-abbrevs
					  try-expand-list
					  try-expand-line
					  try-complete-lisp-symbol-partially
					  try-complete-lisp-symbol))


;; less typing when Emacs ask you yes or no
(fset 'yes-or-no-p 'y-or-n-p)


;; recursive-copies/deletes
(setq dired-recursive-copies ' always)
(setq dired-recursive-deletes ' always)

(put ' dired-find-alternate-file ' disabled nil)


;; copy file easily
(setq dired-dwim-target t)

;; have C-c C-j 
(require ' dired-x)








(provide ' init-better-defaults)
