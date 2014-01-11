;; Stefano's my-appearance.el
;;
;; Appearance-related settings

;; Enables scrollbar, disable toolbar
(if (display-graphic-p)
    (scroll-bar-mode))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Show path of file in titlebar
(setq-default frame-title-format "%b (%f)")

;; Current line highlighting
(require 'hl-line)
(global-hl-line-mode)

(provide 'my-appearance)