;;
;; Welcome !
;; This is Ilya's init.el
;;

(setq user-mail-address "ilya@skurikhin.ch")


;; Some global options
    (global-visual-line-mode t)
    (column-number-mode t)
    (tool-bar-mode -1)
    (show-paren-mode 1)


;; Add some nice repos for packages
    (require 'package)
    (push '("marmalade" . "http://marmalade-repo.org/packages/")
            package-archives )
    (push '("melpa" . "http://melpa.milkbox.net/packages/")
          package-archives)
    (package-initialize)

    (when (>= emacs-major-version 24)
      (require 'package)
      (add-to-list
       'package-archives
       '("melpa" . "http://melpa.org/packages/")
       t)
      (package-initialize))



;; Enable evil-mode
    (require 'evil)
    (evil-mode 1)



;; Enable Powerline
    (require 'powerline)
    (set-face-attribute 'mode-line nil
    :foreground "Black"
    :background "DarkOrange"
    :box nil)



;; LaTeX mode options and hooks
    (setq TeX-auto-save t)
    (setq TeX-parse-self t)
    (setq-default TeX-master nil)

    (add-hook 'LaTeX-mode-hook 'visual-line-mode)
    (add-hook 'LaTeX-mode-hook 'flyspell-mode)
    (add-hook 'LeTeX-mode-hook 'LaTeX-math-mode)
    (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
    (setq reftex-plugin-into-AUCTex t)



;; OrgMode options and hooks
    ;; set the default MobileOrg directory in dropbox
    (setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

    ;; activate relative line monde in OrgMode
    (add-hook 'org-mode-hook 'relative-line-numbers-mode t)
    (add-hook 'org-mode-hook 'line-number-mode            t)
    (add-hook 'org-mode-hook 'column-number-mode         t)
    (add-hook 'org-mode-hook 'org-indent-mode t)

    ;; set the display options for fragments, scaling
    (setq org-format-latex-options
          '(:foreground default
            :background default
            :scale 2.0
            :html-foreground "Black"
            :html-background "Transparent"
            :html-scale 1.5
            :matchers ("begin" "$1" "$" "$$")))



;; Prog-mode options and hooks
    ;; activate relative line numbering on start (external package)
    (add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
    (add-hook 'prog-mode-hook 'line-number-mode            t)
    (add-hook 'prog-mode-hook 'column-number-mode         t)

;; CC Mode settings
  ;; make the indenting nice
(setq c-default-style "linux"
      c-basic-offset 4)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("405b0ac2ac4667c5dab77b36e3dd87a603ea4717914e30fcf334983f79cfd87e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
