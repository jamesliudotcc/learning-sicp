(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(define (fib-iter n)
  (define (iter a b)
    (if (= n 0)
        b
        ((iter (+ a b) a (- n 1)))))
  (iter 1 0))
