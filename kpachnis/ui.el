(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":")

(if window-system
    (scroll-bar-mode -1)
    (add-to-list 'default-frame-alist '(height . 60))
    (add-to-list 'default-frame-alist '(width . 90)))
