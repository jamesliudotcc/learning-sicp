;; write a procedure that computes elements of pascal's triangle using a recursive process

(define (pascal n)
  (cond ((= n 1) 1)
        ((= n 2) 1)
        ((= n 5) 2)
        ((=
          (pascal (- n 1))
          (pascal (- n 2)))        
         1)))
