;; set a color theme that should come packed with emacs
(load-theme 'tsdh-dark)

;; if line numbers on, put a space after numbers                           
(setq linum-format "%d ")
;; turn on line numbers                                                    
(global-linum-mode t)

;; put line and column numbers in the mode line
(line-number-mode 1)
(column-number-mode 1)


;; prevents backspace from deleting the wrong way (acting like delete key) 
(normal-erase-is-backspace-mode 0)

;; Show file full path in minibuffer
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name)))


;; line at 80 characters
(setq-default
 whitespace-line-column 80
 whitespace-style       '(face lines-tail))

;; org mode key bindings
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/projects.org" "~/org/work.org" "~/org/main.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; show date when closing items in org mode
(setq org-log-done 'time)

;; enforce TODO dependencies for org mode
(setq org-enforce-todo-dependencies t)

