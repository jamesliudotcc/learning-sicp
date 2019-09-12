;; A function f is defined by the rule that f ( n ) = n if n < 3 and
;; f ( n ) = f ( n − 1 ) + 2 f ( n − 2 ) + 3 f ( n − 3 ) if n ≥ 3 .

(define (f n)
  (define (iter product counter)
    (cond ((< counter 3) n)
          
          

;; Write a procedure that computes f by means of an iterative process. 



