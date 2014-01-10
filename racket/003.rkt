(define (max lst)
  (cond
   ((null? (cdr lst)) (car lst))
   (else
    (if (> (car lst) (cadr lst))
	(max (cons (car lst) (cddr lst)))
	(max (cdr lst)))))) 

(define (prime-factors-1 n)
  (cond 
   ((= n 1) (list))
   (else
    (for/or ((m (in-range 2 (add1 n))))
      (and (= 0 (modulo n m))
	   (cons m (prime-factors-1 (/ n m))))))))

(max (prime-factors-1 600851475143))
