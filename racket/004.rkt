(module eular4 racket
  (require "common.rkt")

  (define (eular4)
    (apply max
	   (filter is-palindrome?
		   (map (lambda (x) (apply * x))
			(cartesian-product (range 100 999) (range 100 999))))))
  (provide eular4)
  )


