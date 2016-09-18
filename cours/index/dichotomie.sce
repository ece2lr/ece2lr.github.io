// Constantes : données du problème
GAUCHE_INIT = 0                           // encadrement initial de la racine
DROITE_INIT = 2
PRECISION   = 10^(-3)                     // précision souhaitée
function y = f(x)                         // fonction étudiée
  y = x.^2 - 2
endfunction

// initialisation
gauche = GAUCHE_INIT
droite = DROITE_INIT

// la boucle de l'algorithme
while ( droite - gauche > PRECISION )     // jusqu'à avoir la bonne précision
  milieu = (gauche+droite) / 2
  if ( f(gauche) * f(milieu) < 0 ) then   // si changement de signe à gauche 
    droite = milieu                       //   zoomer à gauche
  else                                    // sinon
    gauche = milieu                       //   zoomer à droite
  end // fin du `if`
end   // fin du `while`

// affichage
disp ("Approximation par défaut de sqrt(2) à 10^(-3) près :")
disp (gauche)                              // retourne 1.4140625  
