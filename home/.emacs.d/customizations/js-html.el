;; tern mode
(add-to-list 'load-path "/home/zetxx/npm/lib/node_modules/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)
;; javascript / html
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook 'company-mode)
(add-hook 'js2-mode-hook 'tern-mode)
(add-hook 'js2-mode-hook 'paredit-mode)
;;
;;js autoocomplete tern
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-tern))

