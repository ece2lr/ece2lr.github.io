// Constantes : données du problème
GAUCHE_INIT = 0                       // encadrement initial de la racine
DROITE_INIT = 2
PRECISION   = 10^(-3)                 // précision souhaitée
function y = f(x)                     // fonction étudiée
  y = x.^2 - 2
endfunction

// initialisation
gauche = GAUCHE_INIT
droite = DROITE_INIT

// la boucle de l'algorithme
while ( gauche - droite > PRECISION ) // jusqu'à avoir la bonne précision
  milieu = (gauche+droite) / 2
  if ( f(gauche) * f(milieu) > 0 )  
    then gauche = milieu              // si la racine est à droite de `milieu`
    else droite = milieu              // si la racine est à gauche de `milieu`
  end // fin du `if`
end   // fin du `while`

// affichage
disp ("Approximation par défaut de sqrt(2) à 10^(-3) près :")
disp (gauche)
