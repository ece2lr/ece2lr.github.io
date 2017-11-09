LIGNES = 1
COLONNES = 10^5

// // pour la loi uniforme
// echUnif = grand (LIGNES, COLONNES, "uin", 0,20)
// 
// clf()
// classes = 21
// histplot(classes, echUnif)

//les parametres de la loi binomiale B(n,p)
n = 50   // essayez de changer ! exemples : 
//n = 10 // ou 
//n = 300
p = .3
// mon échantillon 
echBin = grand (LIGNES, COLONNES, "bin", n,p)
clf()
classes = -1:n
histplot(classes, echBin)

plot(0:n, binomial(p,n))

// disp(echUnif) // affichage de l'échantillon
