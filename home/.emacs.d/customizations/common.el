;; rainbow brackets
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;; indent guide
(indent-guide-global-mode)
(setq indent-guide-delay 0.05)
(show-paren-mode 1)
(global-diff-hl-mode 1)
(diff-hl-flydiff-mode 1)
(hlinum-activate)
(persp-mode)