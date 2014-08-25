;; gridを効率よく持つ

(defun product-four-number (a b c d)
  (* a b c d))

;; greatest number
(defun find-greatest-number ()
  (let (greatest-number 0))
  (loop
	 :for n :from 1 :upto 400
	 :do (if (greatest-number < (product-four-number n1 n2 n3 n4))
			 (setq greatest-number (product-four-number n1 n2 n3 n4))))
  )
