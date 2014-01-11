(module common racket
  (define (range a b)
    (build-list (add1 (- b a)) (lambda (x) (+ x a))))
  (provide range)

  (define (cartesian-product a b)
    (reverse (foldl
	      append '()
	      (map (lambda (x) (reverse (map (lambda (y) (list x y)) b))) a))))
  (provide cartesian-product)

  (define (is-palindrome? n)
    (define (helper n acc)
      (if (> n 0)
	  (helper (quotient n 10) (+ (remainder n 10) (* 10 acc)))
	  acc))
    (equal? n (helper n 0)))
  (provide is-palindrome?)
  
  )
