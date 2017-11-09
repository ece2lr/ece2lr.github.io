x = linspace(0, 1, 10)

// vérifier à la main combien de valeurs de x sont dans chaque classe

// on fait deux  histogrammes selon 5 classes délimitées par : 
// 0.0, 0.2, 0.4, 0.6, 0.8, 1.0

clf()
subplot(121)      // dessin à gauche
histplot(5,x)     // histogramme approx. uniforme

subplot(122)      // dessin à droite
histplot(10,x.^2) // histogramme approx. décroissant
