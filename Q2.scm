#lang sicp

(define (filtered-fold pred f v lst)
  (cond ((null? lst) v)
        ((pred (car lst)) (f (car lst) (filtered-fold pred f v (cdr lst))))
        (else (filtered-fold pred f v (cdr lst)))))