#! /usr/bin/env racket
#lang racket

(define STRING
  (if (= 0 (vector-length (current-command-line-arguments)))
      "y"
      (let ([str (foldl string-append "" (map (λ (x) (string-append x " ")) (vector->list (current-command-line-arguments))))])
        (substring str 0 (sub1 (string-length str))))))

(with-handlers ([exn:fail? (λ (x) (void))])
 (let loop ()
  (printf "~a\n" STRING)
  (loop)))