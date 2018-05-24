
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") ' counsel-describe-function)
(global-set-key (kbd "C-h v") ' counsel-describe-variable)

(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "<f2>") 'open-my-init-file)


;; set-global-key
(global-set-key (kbd "C-h C-f") ' find-function)
(global-set-key (kbd "C-h C-v") ' find-variable)
(global-set-key (kbd "C-h C-k") ' find-function-on-key)

;; github
(global-set-key (kbd "C-c p f") ' counsel-git)

;;auto-tab
(global-set-key (kbd "C-M-\\") ' indent-region-or-buffer)

;; auto-comapny path
(global-set-key (kbd "s-/") ' hippie-expand)


(with-eval-after-load ' dired
(define-key dired-mode-map (kbd "RET") ' dired-find-alternate-file))
;; C-x C-j to open dired folder


;; If you want to configure a keybinding (e.g. C-c z), add the following
(global-set-key (kbd "C-c z") ' reveal-in-osx-finder)


;; for js/js2 tab 2 or 4 bits
(global-set-key (kbd "C-c t i") ' my-toggle-web-indent)

(global-set-key (kbd "M-s o") 'occur-dwim)

(global-set-key (kbd "C-=") ' er/expand-region)

(with-eval-after-load ' company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(global-set-key (kbd "C-c a") ' org-agenda)

(global-set-key (kbd "C-w") ' backward-kill-word)

(evil-leader/set-key
  "ff" ' find-file
  "fr" ' recentf-open-files
  "bb" ' switch-to-buffer
  "bk" ' kill-buffer
  "pf" ' counsel-git
  "ps" ' helm-do-ag-project-root
  "1" ' select-window-1
  "2" ' select-window-2
  "3" ' select-window-3
  "4" ' select-window-4
  "w-" ' split-window-right
  "w/" ' split-window-below
  ":" 'counsel-M-x
  "wm" ' delete-other-windows
)









(provide ' init-keybindings)
