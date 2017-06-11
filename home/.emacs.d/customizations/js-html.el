(load "env.specific.el")
;; tern mode
(add-to-list 'load-path ternjsPath)
(autoload 'tern-mode "tern.el" nil t)
;; javascript / html
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook 'company-mode)
(add-hook 'js2-mode-hook 'tern-mode)
(add-hook 'js2-mode-hook 'electric-pair-mode)
;;disable js2-mode checker
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
;;
;;js autoocomplete tern
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-tern))

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

(setq flycheck-eslintrc esLintPath)

(flycheck-add-mode 'javascript-eslint 'js2-mode)
(require 'indium)