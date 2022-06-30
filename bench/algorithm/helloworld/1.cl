(declaim (optimize (speed 3)(safety 0)(space 0)(debug 0)))

(defun main ()
(let ((n (or (car (last sb-ext:*posix-argv*)) "")))
  (format t "Hello world ~d!" n)))
