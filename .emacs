(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa-stable" . "http://stable.melpa.org/packages/"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;
;; My Customizations ;;
;;;;;;;;;;;;;;;;;;;;;;;
(set-face-attribute 'default nil :height 115)

(add-to-list 'load-path "~/.emacs.d/elpa/better-defaults-0.1.2")
(require 'better-defaults)

;; Arduino customizations

(global-set-key [f12] 'compile)
(add-to-list 'auto-mode-alist '("\\.ino\\'" . c-mode))

;; Hide startup screen
(setq inhibit-startup-message t)

;; Show column numbers
(setq column-number-mode t)

;; Change default scratch text
(setq initial-scratch-message "")

;; Auto revert buffers
(global-auto-revert-mode t)

;; Java
(setq jdee-server-dir "/home/joseph/src/jdee-server/target")
(add-hook 'jdee-mode-hook
          (lambda()
            (hs-minor-mode t)))
(add-hook 'java-mode-hook 'java-imports-scan-file)

;; Java imports
;;(require 'ggtags)
(autoload 'ggtags-mode "ggtags" "" t)
(setq gtags-suggested-key-mapping t)
(global-set-key (kbd "C-c C-f") 'gtags-find-file)
;; More Java imports
;;(require 'auto-complete-config)
;;(ac-config-default)
(setq ac-ignore-case 'smart)
(setq ac-use-menu-map t)
(setq ac-source-gtags)
;;(define-key ac-menu-map "\C-n" 'ac-next)
;;(define-key ac-menu-map "\C-p" 'ac-previous)

;; Better backup files
(setq backup-directory-alist `(("." . "~/.emacs-saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; Save buffers on quit
(desktop-save-mode 1)
(setq desktop-load-locked-desktop t) ;; trying this out

;; Disable blinking cursor
(blink-cursor-mode (- (*) (*) (*)))

;; Emacs Server
;; (server-start)

;; Evil
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
    package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
    package-archives)
(package-initialize)
(require 'evil)
(evil-mode 1)
(setq evil-default-state 'normal)
;; Clear insert state keymap
(setq evil-insert-state-map (make-sparse-keymap))
(define-key evil-insert-state-map (kbd "<escape>") 'evil-normal-state)

;; Org mode hotkeys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; wraps the lines in org-mode
(setq org-startup-truncated nil)
