function y = probasPoiss(lambda,t)
  CST = exp(-lambda)
  y = CST * lambda.^t ./ factorial(t)
endfunction
function y = densiNor(t)
  CST = 1/sqrt(2*%pi)
  y = CST * exp(-0.5*t.^2)
endfunction
function y = densiNorGale(t,mu,sigma)
  x = (t-mu)/sigma
  y = densiNor(t)/sigma
endfunction
function y = fdnNor(t)
  [y,junk] = cdfnor("PQ",t,zeros(t),ones(t))
endfunction
//[P,Q] = cdfnor ("PQ",t,zeros(t),ones(t)); 
t = linspace(-4,4)
y = fdnNor(t)
