(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(js-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; show line number
(global-linum-mode 1) ; always show line numbers


;; add short key to shell
(global-set-key (kbd "<f9>") 'shell)
(global-set-key (kbd "<f10>") 'rename-buffer)
(global-set-key (kbd "<f8>") 'enlarge-window)
(global-set-key (kbd "C-,") 'indent-rigidly-left)
(global-set-key (kbd "C-.") 'indent-rigidly-right)


;; copy or cut one line with M - w or C - w
(defadvice kill-ring-save (before slickcopy activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
	   (line-beginning-position 2)))))
(defadvice kill-region (before slickcut activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
	              (line-beginning-position 2)))))

;; save opened files
(desktop-save-mode 1)

