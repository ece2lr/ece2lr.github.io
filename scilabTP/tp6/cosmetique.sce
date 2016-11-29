//cosmétique nuage de points
e = gce()                      // attraper le résultat du `plot`
courbe = e.children            // attraper la courbe
courbe.mark_mode       = "on"  // dessiner les points
courbe.mark_size       = 0     // taille des points
courbe.line_mode       = "off" // ne pas joindre les points
courbe.mark_foreground = 13    // couleur des points

a = gca()                 // attraper le système d'axes
a.data_bounds = [0,1,0,1] // bornes de la fenêtre
a.x_location  = "origin"  // axe des x
a.y_location  = "origin"  // axe des y
a.box         = "off"     // pas de cadre
