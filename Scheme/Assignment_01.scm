;Moncerrat Romero
;Functional Programming

(define vecadd
	(lambda (x y)
		(cond
			[(null? x) '()]
			[(number? x) (+ x y)]
			[(cons (+ (car x)(car y)) (vecadd (cdr x)(cdr y)))]
		)))



(define vecfn
	(lambda ( z x y)
		(cond
			[(null? x) '()]
			[(number? x) (z x y)]
			[(cons (z (car x)(car y)) (vecfn z(cdr x)(cdr y)))]
		)))

(define-syntax vecfun
	(syntax-rules()
		((_ x y)
			(vecadd x y))
		((_ z x y)
			(vecfn z x y))
	))
 
