(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1) ;; when a denomination has 0 uses
        ;; then there is 1 way to make change, no of that denomination
        ((or (< amount 0) ;; overflow condition, recursions get you here
             (= kinds-of-coins 0)) ;; you run out of coins, you're also done
         0)
        (else
         (+ (cc amount (- kinds-of-coins 1)) ;; supposing n of this kind of coin, these smaller coins
            (cc (- amount (first-denomination ;; next, figure out n-1 of this kind of coin
                           kinds-of-coins))
                kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))
