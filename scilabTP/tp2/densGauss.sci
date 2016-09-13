CONST = 1 / sqrt(2*%pi)

//Version de la loi centrée réduite à la loi générale
function y = densNCR(x)
    y = CONST * exp(-x.^2 /2)
endfunction

function y = densGauss(mu,sigma,x)
  xCentreReduit = (x - mu) / sigma
  y = 1/sigma * densNCR(xCentreReduit)
endfunction

//// Variante du général au particulier
//function y = densGauss(mu, sigma, x)
//    y = CONST / sigma .* exp (- (x - mu).^2 / (2*sigma^2))
//endfunction
//function y = densNCR(x)
//    y = densGauss (0 , 1 , x)
//endfunction
