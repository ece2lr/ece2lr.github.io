exec("statUSA.sce", -1)
scf (1) ; clf ;

subplot(2,2,1)
plot (YGUV (: , 1 ) , YGUV (: , [2 3]) ) 
legend (["chômage (%)" , "croissance (%)"] , 3)

subplot(2,2,2)
plot (YGUV ( : , 2 ) , YGUV (:, 3 ) )
xtitle ("Évolution historique croissance / chômage", "Croissance", "Chômage")

subplot(2,2,3)
plot (YGUV ( : , 2 ) , YGUV (:, 3 ) , ".")
pts = gce () , lpts = "Valeurs historiques"
[a , b , sig] = reglin ((YGUV ( : , 2 ))' , (YGUV (: , 3 ))' )
x = - 2 : 13
plot (x , a * x + b , "r" )
reg = gce () , lreg = "Régression linéaire, R^2 = " + msprintf("%.2f", 1 - (sig / stdev (YGUV ( : , 3 ) )) ^2)

legend ([pts , reg], [lpts , lreg])

xtitle ("Régression linéaire croissance / chômage", "Croissance", "Chômage")


subplot(2,2,4)
plot (YGUV ( : , 2 ) , YGUV (:, 4 ) , ".")
pts = gce () , lpts = "Valeurs historiques"

[a , b , sig] = reglin ((YGUV ( : , 2 ))' , (YGUV (: , 4 ))' )
//x = - 5 : 8 
plot (x , a * x + b , "r" )
reg = gce () , lreg = "Régression linéaire, R^2 = " + msprintf("%.2f", 1 - (sig / stdev (YGUV ( : , 4 ) )) ^2)
legend ([pts , reg], [lpts , lreg])

xtitle ("Régression linéaire croissance / var. chômage", "Croissance", "Var. chômage")
