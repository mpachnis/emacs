(setq inhibit-startup-message t)

(setq line-number-mode t)
(setq column-number-mode t)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(global-auto-revert-mode 1)

(setq-default truncate-lines t)

;;(global-hl-line-mode 1)
;;(set-face-background 'hl-line "#4a4a4a")

(setq ring-bell-function 'ignore)
;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (whitespace-cleanup)))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/share/python:/usr/local/bin:/usr/local/sbin"))
(setq exec-path (append exec-path '("/usr/local/share/python" "/usr/local/bin" "/usr/local/sbin")))
