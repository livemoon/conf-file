(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo))) 
 (load-file "/usr/local/share/emacs/23.4/site-lisp/cedet/common/cedet.el") 
 (semantic-load-enable-code-helpers) 
 (autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t) 
 (autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t) 
 (define-key-after (lookup-key global-map [menu-bar tools]) 
 [speedbar] 
 '("Speedbar" . 
 speedbar-frame-mode) 
 [calendar])

(add-to-list 'load-path "/usr/local/share/emacs/23.4/site-lisp/ecb") 
 (require 'ecb) 
 (require 'ecb-autoloads) 
 (setq ecb-auto-activate t 
 ecb-tip-of-the-day nil 
 inhibit-startup-message t 
 ecb-auto-compatibility-check nil 
 ecb-version-check nil)



(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down) 

(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)
(define-key global-map [(control f2)] 'ecb-show-ecb-windows)

(define-key global-map "/C-c1" 'ecb-maximize-window-directories)
(define-key global-map "/C-c2" 'ecb-maximize-window-sources)
(define-key global-map "/C-c3" 'ecb-maximize-window-methods)
(define-key global-map "/C-c4" 'ecb-maximize-window-history)


(define-key global-map "/C-c`" 'ecb-restore-default-window-sizes)
