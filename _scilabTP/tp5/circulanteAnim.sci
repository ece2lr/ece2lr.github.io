function A = circulante (forme , puissance)
	I = eye (forme , forme)
	A = I (: , [ 2 : forme , 1 ])
	A = A^puissance
endfunction

function A = transitionsHorloge ( n ,  p )
q = 1 - p
A = q * circulante ( n , 0) +  p * circulante (n , 1)
endfunction

function tracerTraj (n , p , t)
	traj = grand ( t , "markov" , A' , 1 )
	scf ; plot ( traj )
	e = gce () ,
	legend ( " une trajectoire " ) ;
endfunction
//n = 41
//p = .5
//t = 100
// tracerTraj (n , p , t )

function anim (frames)
	p = .5
	//q = 1 - p 
	n = 41
	//A = .5*(circulante ( n , 0) + circulante (n , 1))
	A = transitionsHorloge (n , p)
	B = A
	A = A^100
	v = A (: , 1 )
	clf
	e = []
	for k = 1:frames
		v = B * v
		drawlater
		delete (e)
		plot (v)
		e = gce ()
		drawnow
	end
endfunction
frames = 1000
// anim (frames)

