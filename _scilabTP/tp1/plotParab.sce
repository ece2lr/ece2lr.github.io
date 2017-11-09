x = linspace(-3,3) // domaine de définition du dessin 
y = 1/2 * x + 1    // première fonction à dessiner

plot(x,y)          // on trace la droite

clf()              // on efface toute la figure

y = x.^2           // ordonnées de la parabole
plot(x,y)          // on trace
