// Constantes du programmes : "numéros magiques" que je préfère éviter dans le corps du programme
XMIN = 0.3
XMAX = 3

// Définition des vecteurs 
x = linspace(XMIN, XMAX) // en abscisses
y = log(x)               // mes Log
affine = x - 1

// On dessine la courbe et la droite
clf()
plot(x, y)               // la courbe du log
plot(x, affine)          // la tangente

// On légende
legend("y = ln(x)", "y = x - 1")
