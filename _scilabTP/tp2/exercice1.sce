// Requiert les fonctions définies dans "densGauss.sci"

// On trace la gaussienne N(0,1)
XMIN = -4
XMAX = 4
x = linspace(XMIN,XMAX)   // 100 points
//y = densNCR(x)          // la gaussienne centrée réduite
//y = densGauss(2, 1, x)  // la gaussienne question 2
y = densGauss(0, 2, x)    // la gaussienne question 3
plot(x,y)
