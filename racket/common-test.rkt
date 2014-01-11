(module test-common racket
  (require rackunit
	   "common.rkt")

  (test-case "custom range"
	     (check-equal? (range 0 0) '(0))
	     (check-equal? (range 0 -1) '())
	     (check-equal? (range 0 4) '(0 1 2 3 4))
	     (check-equal? (range 5 8) '(5 6 7 8))
	     )

  (test-case "cartesian product"
	     (check-equal? (cartesian-product '(1 2) '(1 2 3))
			   '((1 1) (1 2) (1 3) (2 1) (2 2) (2 3)))
	     )
  
  (test-case "is palindrome"
	     (check-equal? (is-palindrome? 123) #f)
	     (check-equal? (is-palindrome? 12345654321) #t)
	     (check-equal? (is-palindrome? 111) #t)
	     (check-equal? (is-palindrome? 1) #t)
	     (check-equal? (is-palindrome? 0) #t)
	     )
  )











