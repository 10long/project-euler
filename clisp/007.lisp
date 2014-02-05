(defparameter from 1)
(defparameter count 0)

(defun prime-numbers (to)
  (if (> count to) nil
	  (progn
		(when (is-prime from) 
		  (print from)
		  (setf count (+ count 1)))
		(setf from (+ from 1))
		(prime-numbers to)))
  (when (>= count to)
	(setf count 0) 
	(setf from 1)))  

(defun is-prime (n)
  (cond ((= 2 n) t)
		((= 3 n) t)
		((evenp n) nil)
		(t 
		 (loop for i from 3 to (isqrt n) by 2
			never (zerop (mod n i))))))
