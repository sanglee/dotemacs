(require 'polymode)

(defcustom pm-host/coffee
  (pm-bchunkmode "coffee" :mode 'coffee-mode)
  "coffee host chunkmode"
  :group 'hostmodes
  :type 'object)

(defcustom pm-host/javascript
  (pm-bchunkmode "javascript" :mode 'js-mode)
  "javascript host chunkmode"
  :group 'hostmodes
  :type 'object)

(defcustom pm-inner/erb
  (pm-hbtchunkmode "erb"
                   :mode 'ruby-mode
                   :head-mode 'fundamental-mode
                   :tail-mode 'fundamental-mode
                   :head-reg  "\<\% *[-=]?"
                   :tail-reg  "\%\>")
  "erb typical chunk."
  :group 'innermodes
  :type 'object)

(defcustom pm-poly/coffee-erb
  (pm-polymode-one "coffee-erb"
                   :hostmode 'pm-host/coffee
                   :innermode 'pm-inner/erb)
  "coffee-erb typical polymode."
  :group 'polymodes
  :type 'object)
(define-polymode poly-coffee-erb-mode pm-poly/coffee-erb)

(defcustom pm-poly/javascript-erb
  (pm-polymode-one "javascript-erb"
                   :hostmode 'pm-host/javascript
                   :innermode 'pm-inner/erb)
  "javascript-erb typical polymode."
  :group 'polymodes
  :type 'object)
(define-polymode poly-javascript-erb-mode pm-poly/javascript-erb)

(defcustom pm-poly/html-erb
  (pm-polymode-one "html-erb"
                   :hostmode 'pm-host/html
                   :innermode 'pm-inner/erb)
  "html-erb typical polymode."
  :group 'polymodes
  :type 'object)
(define-polymode poly-html-erb-mode pm-poly/html-erb)

(provide 'poly-erb)
