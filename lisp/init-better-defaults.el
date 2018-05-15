
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









(provide ' init-better-defaults)
