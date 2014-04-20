(defun is-prime (n)
  (cond ((= 2 n) t)
		((= 3 n) t)
		((evenp n) nil)
		(t 
		 (loop for i from 3 to (isqrt n) by 2
			never (zerop (mod n i))))))

(defun sum (ls)
  (reduce '+ ls))

(defun pro10-b ()
  (let ((sum 0))
    (loop
       :for n :from 2 :upto 2000000
       :do (if (is-prime n)
	       (incf sum n)))
    sum))


