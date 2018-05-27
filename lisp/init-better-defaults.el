
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


;; show-pare-function
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))  
     (t (save-excursion 
        (ignore-errors (backward-up-list)) 
        (funcall fn)))))

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


(defun hidden-dos-oel ()
  "Do not show ^M in files containing mix ed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(defun remove-dos-eol()
  "Replace DOS oelns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))



;; dwin = do what I mean.
(defun occur-dwim ()
  "Call 'occur' with a same default"
  (interactive)
  (push (if (region-active-p)
	    (buffer-substring-no-properties
	     (region-beginning)
	     (region-end))
	     (let ((sym (thing-at-point ' symbol)))
	       (when (stringp sym)
		 (regexp-quote sym))))
	  regexp-history)
	(call-interactively ' occur))

(setq which-key-side-window-location ' right)

(dolist (mode ' (ag-mode
		 occur-mode
		 git-rebase-mode))
  (add-to-list ' evil-emacs-state-modes mode))


(provide ' init-better-defaults)
