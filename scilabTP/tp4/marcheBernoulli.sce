// tracer une ou plusieurs trajectoires de la marche de Bernoulli croissante

// Paramètres : 
N = 1    // nombre de trajectoires
T = 10^1 // longueur des trajectoires
p =.5    // probabilité de succès
q = 1-p  // probabilité d'échec

echBer = grand(N,T,"bin",1,p) // sauts
marche = cumsum(echBer, "c")  // trajectoires
clf()
plot2d2(1:T,marche')          // tracer les trajectoires

// cosmetique : toutes les trajectoires en bleu
e = gce()
e.children.foreground=2
