(require 'whitespace)

(setq whitespace-line-column 79
      ;;whitespace-style '(face spaces tabs space-mark tab-mark trailing lines-tail)
      whitespace-style '(face tabs trailing lines-tails))

(set-face-attribute 'whitespace-tab nil
                    :foreground "black"
                    :background "yellow")

(setq whitespace-space 'default)

(add-hook 'python-mode-hook 'whitespace-mode)
(add-hook 'ruby-mode-hook 'whitespace-mode)

