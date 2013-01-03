(load "kpachnis/python")
(load "kpachnis/ack")
(load "kpachnis/paredit")
(load "kpachnis/perl")
(load "kpachnis/po")
(load "kpachnis/ruby")
(load "kpachnis/slime")
(load "kpachnis/whitespace")
(load "kpachnis/erlang")

(require 'ido)
(ido-mode t)

(require 'autopair)
(require 'pony-mode)
(require 'python-pep8)
(require 'python-pylint)
(require 'virtualenv)
(require 'jinja2-mode)
(require 'magit)
(require 'mercurial)
(require 'textmate)
(require 'peepopen)

(textmate-mode)
(setq ns-pop-up-frames nil)

(autopair-global-mode)

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(autoload 'less-mode "less-mode")
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-mode))
(setq less-compile-at-save nil)

(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'yaml-mode "yaml-mode")
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(autoload 'puppet-mode "puppet-mode")
(add-to-list 'auto-mode-alist '("\\.pp\\'" . puppet-mode))

(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)

(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)
