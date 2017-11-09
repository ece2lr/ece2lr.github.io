N = 10000 //taille des échantillon

// obtention d'échantillons 
x = grand(1,N,"nor",0,1);
y = grand(1,N,"unf",0,1);

// on trie les échantillons
x = gsort(x) ; 
y = gsort(y) ; 

clf()
plot(x,y)

