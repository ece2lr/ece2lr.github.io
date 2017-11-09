colonnes = 10^4

memoire = zeros(colonnes, 1)
echGeom    = zeros(colonnes, 1)

p = .5
q = 1-p

while (find(memoire==0,1)) // tant que memoire contient au moins un zero
  echGeom = echGeom + (memoire == 0)
  tour = grand(colonnes, 1, "bin", 1, p)
  memoire = max([tour, memoire], "c")
end

//disp(echGeom)

clf()
maxi = perctl(echGeom,99)

classes = 0 : maxi(1)
histplot(classes,echGeom)

valeurs = 1:maxi(1)
proba = p * q.^(valeurs-1)
plot(valeurs, proba)
