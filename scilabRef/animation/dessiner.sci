//citer:dessinerParabole
function e = dessinerParabole()
  t = linspace(XMIN, XMAX)
  plot(t, t.^2) 
  e = gce() 
  cosmetiqueParabole(e) // optionnel
endfunction
//finCiter

//citer:tracerTangente
function e = tracerTangente(a)
  x = [ XMIN ; XMAX ]   // vecteur colonne : 2 extrémités du domaine de définition 
  y = 2 * a * x - a^2   // équation de la tangente en a
  plot(x, y) 
  e = gce()
  cosmetiqueTangente(e) // optionnel 
endfunction
//finCiter

//citer:tTangentesSimultane
function tTangentesSimultane()
  A = linspace(XMIN, XMAX, NOMBRE_DE_TANGENTES) 
  for a = A 
    tracerTangente(a)
  end
endfunction
//finCiter

//citer:tTangentesAsynchrone
function tTangentesAsynchrone()
  A = linspace(XMIN, XMAX, NOMBRE_DE_TANGENTES) 
  for a = A 
    tracerTangente(a)
    // attendre le temps indiqué (millisecondes) puis continuer :
    sleep(100) 
  end
endfunction
//finCiter

//citer:tTangentesEffacer
function tTangentesEffacer()
  A = linspace(XMIN, XMAX, NOMBRE_DE_TANGENTES) 
  e = []
  for a = A 
    drawlater()
    delete(e)
    e = tracerTangente(a)
    drawnow()
    sleep(40) // ms
  end
endfunction
//finCiter

//citer:cosmetique 
//cosmetique 
function cosmetiqueAxes(axes)
  axes.isoview = "on"
//=====================================================================
// empécher les nouveaux dessins de décaler les bornes des axes      //
// très utile pour les images animées                                //
  axes.auto_scale = "off"                                            //
  axes.data_bounds = [-1, -1; 1, 1] // à adapter                     //
//=====================================================================
  axes.x_location = "origin"
  axes.y_location = "origin"
endfunction 

function cosmetiqueParabole(e)
  e.children.foreground = 5
endfunction

function cosmetiqueTangente(e)
  e.children.foreground = 13
endfunction
//fin cosmetique 
