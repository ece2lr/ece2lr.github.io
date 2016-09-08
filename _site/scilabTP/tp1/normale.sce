CONST = 1/sqrt(2*%pi)

function y = densNCR(x)
  // expression de y ici : la valeur retournée
  y = CONST * exp(-x.^2/2)
  // On n'oublie pas le point pour pouvoir appliquer aux vecteurs x !
endfunction

x = linspace(-4,4) // de -4 à 4 en abscisses
y = densNCR(x)     // la fonction en ordonnées

clf()              // effacer la fenêtre
plot(x , y)        // on trace

// Cosmétique
title("Densité Gaussienne centrée réduite")
legend("$y = \frac{1}{\sqrt{2\pi} \exp \left ( -\frac{x^2}{2} \right )$")
axes = gca()               // on attrape les axes
axes.y_location = "origin" // axes des ordonnées par l'origine
axes.box = "off"           // on n'encadre pas le dessin
