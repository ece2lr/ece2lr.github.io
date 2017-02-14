function prctEmp = calcPerc(echantillon)
    // Retourne les 99 centiles de echantillon

    // On calcule les percentiles empiriques (commande Scilab prctl)
    prctEmp = perctl(echantillon,1:99) 

    // On formatte le résultat
    prctEmp = [(prctEmp(:,1))']  
endfunction

function decEmp = calcDec(echantillon)
    // Retourne les 9 déciles de echantillon

    // On calcule les percentiles empiriques (commande Scilab prctl)
    prctEmp=perctl(echantillon,1:99)

    // On formatte le résultat
    prctEmp = calcPerc(echantillon)
    decEmp = prctEmp([1,(10*(1:9)),99])
endfunction

function percentiles_graph(echantillon)
    prctEmp = calcPerc(echantillon)
    plot(.01*(1:100),prctEmp)
endfunction


function res = engIH(N)
    // Engendre la distribution d'Irwin Hall
    echTemp = grand (12 , N , "unf" , 0 , 1 )
    // On somme par colonnes
    res = sum (echTemp , "r" ) 
endfunction

function tracerQuantQuant(X,Y)
    // affiche le diagramme quantile / quantile des deux échantillons
    Xp = calcPerc (X)
    Yp = calcPerc (Y)
    Xd = calcDec (X)
    Yd = calcDec (Y)
    scf(2) , clf(2)
    plot (Xp,Yp)
    plot (Xd,Yd,"*")
endfunction

//N = 10000 
//tracerQuantQuant(rand(1,N,"normal"),engIH(N))
