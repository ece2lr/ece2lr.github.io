U0 = 1
ESTIM_ERREUR_INIT = %e - 1
PRECISION = 10^(-3)

function y = f(x)
  y = 2 - log(x)/2
endfunction 

u = U0
estimErreur = ESTIM_ERREUR_INIT

while (estimErreur > PRECISION)
  u = f(u)
  estimErreur = estimErreur / 2
end

disp(u)
disp(f(u))
