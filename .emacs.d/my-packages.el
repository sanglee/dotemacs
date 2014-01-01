;; Stefano's my-packages.el
;;
;; Loads packages that are not related to specific language modes


;; Graphene (saner emacs defaults)
(require 'graphene)

;; Autocomplete
(require 'auto-complete)
(require 'auto-complete-config)
(setq ac-auto-start nil)
(setq ac-auto-show-menu nil)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

;; Semantic
(semantic-mode)

;; Activate tramp; C-x C-f /ssh:user@server etc.
(require 'tramp)

;; Ack
(require 'ack-and-a-half)

(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;; Loads magit; use M-x magit-status
(require 'magit)

;; Smartscan, jump between instances of symbol at cursor
;; use M-n M-p to jump forward/backward
(require 'smartscan)
(global-smartscan-mode 1)

;; Pop up dash at point
(require 'dash-at-point)
(global-set-key "\C-cd" 'dash-at-point)

;; Undo/redo (C-/, M-/, C-x u, C-u, C-S-u)
(require 'undo-tree)
(global-undo-tree-mode)

;; Anzu: enhances isearch
(require 'anzu)
(global-anzu-mode)

;; Recentf; use with C-x f
(require 'recentf)
(recentf-mode 1)
(global-set-key "\C-xf" 'anything-recentf)

;; Enables shift-arrow moving between windows
(windmove-default-keybindings)

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Projectile; use together with project-persist (C-c P f)
(require 'projectile)
(projectile-global-mode)

(provide 'my-packages)

