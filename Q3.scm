#lang sicp

(define (is-prefix l1 l2)
  (cond ((null? l1) #t)
        ((null? l2) #f)
        ((eq? (car l1) (car l2)) (is-prefix (cdr l1) (cdr l2)))
        (else #f)))

(define (is-substring l1 l2)
  (cond ((null? l2) #f)
        ((is-prefix l1 l2) #t)
        (else (is-substring l1 (cdr l2)))))

(define-syntax sublist
  (syntax-rules ()
    ((sublist l1 l2)
     (is-substring l1 l2))))

(define (lgrep-aux l1 lol)
  (cond ((null? lol) '())
        ((sublist l1 (car lol)) (append (list (car lol)) (lgrep-aux l1 (cdr lol))))
        (else (lgrep-aux l1 (cdr lol)))))

(define-syntax lgrep
  (syntax-rules ()
    ((lgrep l1 lol)
     (lgrep-aux l1 lol))))