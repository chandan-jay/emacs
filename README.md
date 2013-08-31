####1. Auto Complete: ####

I installed it in following way:

* Download and untar [autocomplete file](http://cx4a.org/software/auto-complete/index.html)
* Create an installation directory (~/.emacs.d/plugins/autocomplete)
* Open emacs and type M-x load-file RET downloaded_autocomplete_dir/etc/install.el RET
* Installation script will ask you an installation path. give it your newly created directory (~/.emacs.d/plugins/autocomplete)
* After this step, script will print an elisp script. Add the script to your .emacs file.
* Reload .emacs file: M-x load-file RET ~/.emacs

The script I got was the following:
```
(add-to-list 'load-path "~/.emacs.d/plugins/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/autocomplete/ac-dict")
(ac-config-default)
```

###2. Adding Line Numbers or Row Numbers###

Add the script to .emacs file

```
;; line number
(global-linum-mode t)
```

###3. Fill Column Indicator ####

```
mkdir ~/.emacs.d/plugins/fillcolumnindicator
cd  ~/.emacs.d/plugins/fillcolumnindicator
wget https://github.com/chandan-jay/emacs/blob/master/fill-column-indicator.el
```

Add script to ~/.emacs file

```
;; Fill column indicator
(add-to-list 'load-path "~/.emacs.d/plugins/fillcolumnindicator")
(require 'fill-column-indicator)
(fci-mode t)
```

###4. File searching ####

IDO is a plugin that makes finding files and buffers very easy. <br/>
Add the script to .emacs file.
```
;;  IDO is a plugin that makes finding files and buffers very easy 
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching
```
