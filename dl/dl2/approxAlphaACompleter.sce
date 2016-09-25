// CONSTANTES : les données du problème
U0 = 1
ESTIM_ERREUR_INIT = %e - 1
PRECISION = 10^(-3)
function y = f(x)
  y = ___                       // <- compléter cette ligne SUR VOTRE COPIE
endfunction                     //               (sans recopier les autres)

// initialisation
u = U0
estimErreur = ESTIM_ERREUR_INIT

// la boucle 
while (estimErreur > PRECISION)
  u = ___                       // <- compléter cette ligne SUR VOTRE COPIE
  estimErreur = estimErreur / 2 // l'erreur estimée est géométrique de raison 1/2
end                             //                             (voir question 7.)

// affichage du résultat
disp("approximation de alpha à 10^(-3) près :")
disp(u)     // retourne 1.7268515 -> comment vérifier ce résultat ?
