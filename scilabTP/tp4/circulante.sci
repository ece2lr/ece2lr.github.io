function A = circulante (taille)
  I = eye (taille, taille)
  A = I (: , [ 2 : taille, 1 ])
endfunction

//A = circulante(6)
//transition = .5 * (A+inv(A))
