// CONSTANTES : les données du problème
U0 = 1                     // premier terme de u_n
ESTIM_ERREUR_INIT = %e - 1 // majorant de l'erreur initiale
RAISON_ESTIM_ERREUR = 1/2  // constante des accroissements finis
PRECISION = 10^(-3)        // précision souhaitée sur la limite
function y = f(x)          // fonction itérée
  y = 2 - log(x)/2
endfunction  

// initialisation
u = U0                          // de la suite
estimErreur = ESTIM_ERREUR_INIT // de l'estimation de l'erreur

// la boucle 
while (estimErreur > PRECISION)
  u = f(u)                                        // terme suivant de la suite
  estimErreur = estimErreur * RAISON_ESTIM_ERREUR // de l'estimation de l'erreur 
end                             

// affichage du résultat
disp("approximation de alpha à 10^(-3) près :")
disp(u)     // retourne 1.7268515 // vérif : disp(f(u)) proche
