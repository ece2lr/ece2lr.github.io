exec("statFrance.sce", -1)
croissance = 100 * (PIB (2 , 1 : $ - 1 ) - PIB (2 , 2 : $ ) ) ./ PIB (2 , 2 : $ )
PIBcroissance = [PIB ; [croissance , 0 ]] 
PIBcroissance2 = PIBcroissance ( : , $ : -1 : 1 ) 
//PIB2 = PIB ( : , $ : -1 : 1 ) 
//croissance = (PIB (2 , 2 : $ ) - PIB (2 , 1 : $ - 1 )) ./
fin = (PIBcroissance2 (1 , : ) >= 1975)

ensemble = [chomage ; (PIBcroissance2 ( 3 , fin )) ]
scf (0) ; clf , 
subplot(2,2,1)
plot (ensemble (1 , : ) , ensemble (2 : 3 , : ) )

legend (["chomage" , "croissance"] , 2)

subplot(2,2,2)
plot (ensemble (3 , : ) , ensemble (2 , : ) )
xtitle ("Évolution historique croissance / chômage", "Croissance", "Chômage")
//a = gca() ; a.margins = MARGE * ones(1,4)

subplot(2,2,3)
plot (ensemble (3 , : ) , ensemble (2 , : ) , ".") 
pts = gce () , lpts = "Valeurs historiques"
[a , b , sig] = reglin (ensemble (3 , : ) , ensemble (2 , : ) )
x = - 3 : 5 
plot (x , a * x + b , "r" )
reg = gce () , lreg = "Régression linéaire, R^2 = " + msprintf("%.2f", 1 - (sig / stdev (ensemble (2 , : ) )) ^2)

legend ([pts , reg], [lpts , lreg])

xtitle ("Régression linéaire croissance / chômage", "Croissance", "Chômage")


subplot(2,2,4)
varChom = ensemble (2 , 2 : $) - ensemble (2 , 1 : $ - 1 )
croissance2 = ensemble (3 , 2 : $ )
plot (croissance2 , varChom , "." ) 
pts = gce () , lpts = "Valeurs historiques"
[a , b , sig] = reglin (croissance2 , varChom ) 
plot (x , a * x + b , "r" )
reg = gce () , lreg = "Régression linéaire,  R^2 = " + msprintf("%.2f", 1 - (sig / stdev (varChom)) ^2)

legend ([pts , reg], [lpts , lreg])

xtitle ("Régression linéaire croissance / var. chômage", "Croissance", "Var. chômage")

// réglage des marges entre les subplots
MARGEX = .03
MARGEY = .1
f = gcf();
f.children.margins = [MARGEX MARGEX MARGEY MARGEY]
