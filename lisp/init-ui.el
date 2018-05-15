(global-hl-line-mode t)

(tool-bar-mode -1)

(global-linum-mode t)

(setq inhibit-splash-screen t)

;;- turn off tool-bar
;;- turn off scroll-bar
;;- show linum-mode
;;- turn off splash screen
;;- save your config
;;- define a function to quickly open your file.

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq-default cursor-type 'bar)

(provide ' init-ui)
