
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

;; If you want to configure a keybinding (e.g. C-c z), add the following
(global-set-key (kbd "C-c z") ' reveal-in-osx-finder)

(global-set-key (kbd "C-c t i") ' my-toggle-web-indent)

(global-set-key (kbd "M-s o") 'occur-dwim)

(global-set-key (kbd "C-=") ' er/expand-region)













(provide ' init-keybindings)
