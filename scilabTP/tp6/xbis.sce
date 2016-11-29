N = 11
x = linspace(0, 1, N)

xbis = ( x(1:$-1)+x(2:$) ) /2

estimNaive = mean (f(x))
estimCentree = mean (f(xbis))

mprintf('Estimation version centree : %f    Erreur commise : %f\n',estimCentree, abs(estimCentree-log(2)))
mprintf('Estimation version naïve :   %f    Erreur commise : %f\n',estimNaive, abs(estimNaive-log(2)))
mprintf('Vraie valeur :               %f',log(2))
