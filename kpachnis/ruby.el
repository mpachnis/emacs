(require 'ruby-mode)

(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
  (autoload 'inf-ruby-keys "inf-ruby"
    (add-hook 'ruby-mode-hook
	      '(lambda ()
		(inf-ruby-keys))))

(require 'rails)
(require 'rhtml-mode)
