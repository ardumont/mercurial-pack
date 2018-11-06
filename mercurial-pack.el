;;; mercurial-pack.el --- mercurial default setup

;;; Commentary:

;;; Code:

(require 'monky)
(custom-set-variables '(monky-process-type 'cmdserver))

(defvar mercurial-pack-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c d g") 'monky-status)
    map)
  "Keymap for mercurial-pack mode.")

(define-minor-mode mercurial-pack-mode
  "Minor mode to consolidate mercurial-pack extensions.

\\{mercurial-pack-mode-map}"
  :lighter " HgP"
  :keymap mercurial-pack-mode-map)

(define-globalized-minor-mode global-mercurial-pack-mode mercurial-pack-mode mercurial-pack-on)

(defun mercurial-pack-on ()
  "Turn on `mercurial-pack-mode'."
  (mercurial-pack-mode +1))

(global-mercurial-pack-mode)

(provide 'mercurial-pack)
;;; mercurial-pack.el ends here
