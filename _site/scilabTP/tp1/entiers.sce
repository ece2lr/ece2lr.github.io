//disp(1:10) 
// double slash : commentaire : du code qui n'est pas lu par Scilab
liste = 1:10
disp("entiers de 1 à 10 : ")
disp(liste)

// on renomme cette liste, pour que ce soit plus pratique
x = liste
// le point indique une opération valeur par valeur 
carres = x.^2
disp("carrés des entiers de 1 à 10 : ")
disp(carres)



// en colonne : on transpose x
disp("version colonne : on transpose x")
disp(x')


// table de multiplication : transposée (x) fois x
disp("table de multiplication :")
disp(x'*x)
