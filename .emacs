
   ; (transient-mark-mode 1)  ; Now on by default: makes the region act quite like the text "highlight" in many apps.
   ; (setq shift-select-mode t) ; Now on by default: allows shifted cursor-keys to control the region.
   (setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
   (setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection
   (setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection

   ;; these will probably be already set to these values, leave them that way if so!
   ; (setf interprogram-cut-function 'x-select-text)
   ; (setf interprogram-paste-function 'x-cut-buffer-or-selection-value)

   ; You need an emacs with bug #902 fixed for this to work properly. It has now been fixed in CVS HEAD.
   ; it makes "highlight/middlebutton" style (X11 primary selection based) copy-paste work as expected
   ; if you're used to other modern apps (that is to say, the mere act of highlighting doesn't
   ; overwrite the clipboard or alter the kill ring, but you can paste in merely highlighted
   ; text with the mouse if you want to)
   (setq select-active-regions t) ;  active region sets primary X11 selection
   (global-set-key [mouse-2] 'mouse-yank-primary)  ; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.

   ;; with this, doing an M-y will also affect the X11 clipboard, making emacs act as a sort of clipboard history, at
   ;; least of text you've pasted into it in the first place.
   ; (setq yank-pop-change-selection t)  ; makes rotating the kill ring change the X11 clipboard.


;;  IDO is a plugin that makes finding files and buffers very easy 
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; AutoComplete configuration
(add-to-list 'load-path "~/.emacs.d/plugins/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/autocomplete/ac-dict")
(ac-config-default)

;; set file path in the notification area
;;(setq frame-title-format '("Emacs @ " system-name ": %b %+%+ %f"))

;; line number
(global-linum-mode t)

;; Fill column indicator
(add-to-list 'load-path "~/.emacs.d/plugins/fillcolumnindicator")
(require 'fill-column-indicator)
(fci-mode t)

;; To check effect load ~/.emacs
;; M-x load-file 