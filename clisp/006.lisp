(defun square (n) (* n n))

(defun my-sum (num)
  (loop for i from 1 to num sum (+ i)))

(defun my-square-sum (num)
  (loop for i from 1 to num sum (square i)))

(- (square (my-sum 100)) (my-square-sum 100))



