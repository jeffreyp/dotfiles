;; Package manager
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Themes
(add-to-list 'custom-theme-load-path "~/custom/themes")
(add-to-list 'load-path "~/custom/themes")
(load-theme 'tomorrow-night-bright t)

;; Keyboard oddity
(normal-erase-is-backspace-mode 0)

;; Require a final newline in a file, to avoid confusing some tools
(setq require-final-newline t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; For some reason it forgot my home dir
(setq default-directory "/Users/jeffreyp/")

;; I finally got my emacs set up just the way I like it...
(setq make-backup-files nil
      vc-make-backup-files nil)
(global-set-key [mouse-4] 'scroll-down)
(global-set-key [mouse-5] 'scroll-up)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-j" 'goto-line)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-[" 'start-kbd-macro)
(global-set-key "\C-c\C-]" 'end-kbd-macro)
(global-set-key [f5] 'call-last-kbd-macro)
(global-font-lock-mode t)
(global-display-line-numbers-mode)
(setq visible-bell t)
(setq show-paren-mode t)
(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(add-to-list 'default-frame-alist
             '(font . "Inconsolata 18"))

;; Keep it simple, turn off the chrome
(setq inhibit-splash-screen t)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
