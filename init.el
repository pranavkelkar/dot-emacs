;; Do not show the startup screen.
(setq inhibit-startup-message t)

;; Disable tool bar, menu bar, scroll bar.
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Highlight current line.
(global-hl-line-mode t)

;; Do not use `init.el` for `custom-*` code - use `custom-file.el`.
(setq custom-file "~/.emacs.d/custom-file.el")

;; Load custom file proactively.
(load-file custom-file)

;; Require and initialize `package`.
(require 'package)
(package-initialize)

;; Add `melpa` to `package-archives`.
(add-to-list 'package-archives
	     '("melpa-stable"
	       . "https://stable.melpa.org/packages/"))
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(use-package go-mode
  :ensure t
  )

(use-package lsp-mode
  :ensure t
  :config
  (add-hook 'go-mode-hook #'lsp-deferred))

(use-package company
  :ensure t
  :bind (:map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :config
  ;; Provide instant autocompletion.
  (setq company-idle-delay 0.3)

  ;; Use company mode everywhere.
  (global-company-mode t))
