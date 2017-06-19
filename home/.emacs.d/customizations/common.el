;; rainbow brackets
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;; indent guide
(indent-guide-global-mode)
(setq indent-guide-delay 0.05)
(show-paren-mode 1)
(global-diff-hl-mode 1)
(diff-hl-flydiff-mode 1)
(hlinum-activate)
;cursor
(setq-default cursor-type 'bar)
(set-cursor-color "#ff0000")
;; tabs - kill tabs put spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width tabWidth)
;; terminal
(prefer-coding-system 'utf-8)
(setq-default multi-term-program "/bin/zsh")
;;prevent syncing with Xclipboard
(setq-default x-select-enable-clipboard-manager nil)

(dolist (command '(yank yank-pop))
   (eval `(defadvice ,command (after indent-region activate)
            (and (not current-prefix-arg)
                 (member major-mode '(emacs-lisp-mode lisp-mode clojure-mode js2-mode python-mode c-mode c++-mode plain-tex-mode))
                 (let ((mark-even-if-inactive transient-mark-mode))
                   (indent-region (region-beginning) (region-end) nil))))))