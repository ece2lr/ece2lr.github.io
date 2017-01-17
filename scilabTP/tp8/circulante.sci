function C = circulante(n) // retourne la matrice circulante de format n
  x = poly(0,"x")  // inconnue du polynôme
  p = 1 - x^n      // polynome caractérixtique
  C = companion(p) // résultat retourné
endfunction
//C = circulante(4) // exemple d'utilisation
//inverse = inv(C) // matrice circulante dans l'autre sens
