// // ceci est un commentaire : pas lu par Scilab 
// 
function question1()
// test de la fonction binomial(p,n)
  p = .3
  n = 10 
  
  y = binomial(p, n) // les proba en ordonnées
  x = 0:10           // les valeurs en abscisses
   
  // On trace la distribution de probabilités binomiale
  clf()
  //              // au choix parmi : 
  //plot(x, y)    // version reliée
  //plot2d2(x, y) // test version escaliers
  plot2d3(x, y)   // test version batons
endfunction
//// décommenter la ligne ci-dessous pour 
//// appeler la fonction et exécuter le code 
//question1()             // <- à décommenter 

function question2()
  function probas = loiUnif(n)
    // ones(lignes, colonnes) retourne une matrice remplie de 1
    probas = 1/(n+1) * ones(1, n+1)
  endfunction

  n = 6
  x = 0:n
  y = loiUnif(n)
  clf()
  plot2d3(x,y)
endfunction
//question2()

function question3()
  function probas = loiGeom(p, n)
    k = 1:n
    q = 1 - p
    probas = p * q.^(k-1) 
  endfunction
  
  n = 20
  x = 1:n
  p = 0.3
  y = loiGeom(p, n)
  //clf()
  plot2d2(x,y)
endfunction
//question3()

function question4()
  function probas = loiPois(lambda, n)
    k = 0:n
    probas = exp(-lambda) * lambda.^k ./ factorial(k)
  endfunction

  // version fixe sur la fenêtre graphique 0
  n = 20
  x = 0:n
  lambda = 5
  y = loiPois(lambda, n)
  clf(0)
  plot2d2(x,y)

  // version multiple sur la fenêtre graphique 1
  clf(1)
  for lambda = 0:30
    // tracer la loi de Poisson de param lambda entre 0 et 40
    x = 0:40
    y = loiPois(lambda,40)
    plot(x,y)
  end
endfunction 
//question4()
