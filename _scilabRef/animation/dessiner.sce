//citer:invocation
// paramétrer x = [ -1 ; 1 ]
XMIN = -1
XMAX = 1     

// à ajuster
NOMBRE_DE_TANGENTES = 100

exec("./dessiner.sci", -1)
//finCiter

//citer:commandes
clf()
axes = gca()
cosmetiqueAxes(axes)                  // optionnel
dessinerParabole()
//tTangentesAsynchrone()              // version image fixe 
tTangentesEffacer()                   // version image animée
//finCiter

