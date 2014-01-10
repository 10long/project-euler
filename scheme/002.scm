(define (fib n)
  (cond
   ((= n 0) 0)
   ((= n 1) 1)
   ((>= n 2) (+ (fib (- n 1)) (fib (- n 2)))))) 
 
(define (fib-list n)
  (cond
   ((> (fib n) 4000000) 0)
   ((= (modulo (fib n) 2) 0) (+ (fib n) (fib-list (+ n 1))))
   (else (fib-list (+ n 1))))) 

(fib-list 0)
