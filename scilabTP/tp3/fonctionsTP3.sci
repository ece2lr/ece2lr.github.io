CONST_GAUSS = 1 / sqrt(2*%pi)
function y = densGauss(mu,sigma,x)
  xCR = (x - mu) / sigma // x centré et réduit par mu, sigma
  y = CONST_GAUSS/sigma * exp( - xCR.^2 / 2 )
endfunction
// appel de la fonction
//xmin = -4
//xmax = 4
//mu = 0
//sigma = 1
//x = linspace(xmin, xmax)
//plot(x, densGauss(mu, sigma, x))

////La loi binomiale
//n = 10
//p = .3
//valeurs = 0:n
//probas = binomial(p, n)
//plot2d3(valeurs, probas) // représentation en bâtons

function [probas, valeurs] = loiUnif(n)
  // retourne les probabiltés de la loi uniforme entre 1 et n
  // optionnellement les valeurs prises, soit 1:n
  probas = 1/n * ones(1, n) // ones(lignes, colonnes) retourne une matrice remplie de 1
  valeurs = 1:n
endfunction
//// Appel de la fonction
//n = 6
//[probas, valeurs] = loiUnif(n)
//plot2d3(valeurs, probas) // représentation en bâtons

function [probas, valeurs] = loiGeom(p, n)
  // retourne les probabiltés de la loi géométrique de paramètre p entre les valeurs 1 à n
  // optionnellement les valeurs prises, soit 1:n
  k = 1:n
  q = 1 - p
  probas = p * q.^(k-1)
  valeurs = k
endfunction
//// Appel de la fonction
//n = 20
//p = 0.3
//[probas, valeurs] = loiGeom(p, n)
//plot2d3(valeurs, probas) // représentation en bâtons

function [probas, valeurs] = loiPois(lambda, n)
  // retourne les probabiltés de la loi de Poisson de paramètre lambda entre les valeurs 1 à n
  // optionnellement les valeurs prises, soit 0:n
  k = 0:n
  probas = exp(-lambda) * lambda.^k ./ factorial(k)
  valeurs = k
endfunction
//// Appel de la fonction
//n = 20
//lambda = 5
//[probas, valeurs] = loiPois(lambda, n)
//plot2d3(valeurs, probas) // représentation en bâtons

function laMatrice = uneMatrice()
  laMatrice = ones(4, 5)
  laMatrice(:) = 1:20
endfunction
