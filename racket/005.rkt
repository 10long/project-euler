(define (multiple-list ls)
  (if (null? ls)
	  1
	  (* (car ls) (multiple-list (cdr ls)))))

;;いままでに出てきていない素数を探す
(define (serch-prime ls)
  (if (null? ls)
	  '()
	  (append (car ls) (prime-factors (car ls)) (serch-prime (cdr ls)))))

;;素因数分解
(define (prime-factors n)
  (let loop ([n n] [m 2] [factors (list)])
    (cond [(= n 1) factors]
          [(= 0 (modulo n m)) (loop (/ n m) 2 (cons m factors))]
          [else (loop n (add1 m) factors)])))

