(setq user-full-name "Dejan Ranisavljevic"
      user-mail-address "dejan@ranisavljevic.com"

      doom-scratch-initial-major-mode 'lisp-interaction-mode

      ;; IMO, modern editors have trained a bad habit into us all: a burning
      ;; need for completion all the time -- as we type, as we breathe, as we
      ;; pray to the ancient ones -- but how often do you *really* need that
      ;; information? I say rarely. So opt for manual completion:
      company-idle-delay nil

      ;; lsp-ui-sideline is redundant with eldoc and much more invasive, so
      ;; disable it by default.
      lsp-ui-sideline-enable nil
      lsp-enable-symbol-highlighting nil)

(setq projectile-project-search-path '("~/projects/"))

;;; :ui doom-dashboard
(setq fancy-splash-image (concat doom-private-dir "splash.png"))

;;
;;; UI

;; Prevents some cases of Emacs flickering
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;;
;;; Keybinds

;; Switch to the new window after splitting
(setq evil-split-window-below t
      evil-vsplit-window-right t)

;; Silence all that useless output
(setq direnv-always-show-summary nil)

(setq magit-repository-directories '(("~/projects" . 2))
      magit-save-repository-buffers nil)

;;; :lang org
(setq org-directory "~/projects/org/"
      org-archive-location (concat org-directory ".archive/%s::")
      org-roam-directory (concat org-directory "notes/")
      org-journal-encrypt-journal t
      org-journal-file-format "%Y%m%d.org"
      org-ellipsis " ▼ "
      org-superstar-headline-bullets-list '("#"))
