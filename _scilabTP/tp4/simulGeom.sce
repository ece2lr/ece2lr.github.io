function compteur = premierSucces(p)
  q = 1 - p 
  compteur = 1
  while (rand() < q) // tant qu'on a un échec
    compteur = compteur + 1
  end
endfunction
//// appel de la fonction
//p = .1
//compteur = premierSucces(p)
////disp(compteur)

function echGeom = echantillonGeometrique(n, p)
  // obtenir un échantillon avec une boucle pour chaque valeur
  echGeom = []
  for k = 1:n // n = taille de l'échantillon 
    nouvelleValeur = premierSucces(p)
    echGeom = [echGeom, nouvelleValeur]
  end
endfunction
//// appel de la fonction
//n = 10^3   // ATTENTION, la fonction est très lente 
//           // pour un échantillon raisonnable
//p = .1
//ech = echantillonGeometrique(n, p)
////disp(ech)
//maxi = max(ech)
//clf()
//histplot(0:maxi, ech)
