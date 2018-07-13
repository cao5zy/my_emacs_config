;; enable install package
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)


;; move 5 lines
(global-set-key (kbd "C-M-n")
		(lambda () (interactive) (next-line 5)))
(global-set-key (kbd "C-M-p")
		(lambda () (interactive) (previous-line 5)))


;; copy or delete a line without selection
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

;; load zenbur them
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'zenburn t)

;; show line number
(global-linum-mode 1) ; always show line numbers

;;load the winum
(require 'winum)
(winum-mode)

;; set proxy
(setq url-proxy-services '(("https" . "web-proxy.atl.hp.com:8080")))

;; add short key to shell
(global-set-key (kbd "<f9>") 'shell)
(global-set-key (kbd "<f10>") 'rename-buffer)
(global-set-key (kbd "<f8>") 'enlarge-window)
(global-set-key (kbd "≈") 'M-x)

;; turn on highlighting current line
(global-hl-line-mode 1)
(put 'scroll-left 'disabled nil)

(put 'downcase-region 'disabled nil)
