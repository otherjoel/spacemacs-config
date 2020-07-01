(defvar velcro-font 0)
(defvar velcro-fonts '("IBM Plex Mono"
                       "Triplicate T4c"))

(defun velcro-toggle-font ()
  (interactive)
  (progn
    (cl-psetf velcro-font (+ velcro-font 1))
    (set-frame-font (nth (mod velcro-font (length velcro-fonts)) velcro-fonts)))
  )
