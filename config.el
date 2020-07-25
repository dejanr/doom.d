;;; Disable flycheck to lint config files as elisp packages
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))

(setq user-full-name "Dejan Ranisavljevic"
      user-mail-address "dejan@ranisavljevic.com")

(setq doom-theme 'doom-dracula)

(setq org-directory "~/org/")

(setq projectile-project-search-path "~/projects/")
