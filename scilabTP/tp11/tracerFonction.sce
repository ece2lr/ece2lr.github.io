x = linspace(-1,1)
y = x

function z=f(x,y)
  // ma fonction ici (pas besoin de .* !)
  z = x^2 + y^2
endfunction

clf()
//subplot(121) // 
fplot3d1(x,y,f) // en couleurs

////tracer une constante (plan horizontal)
//k = -.1 // hauteur de la constante
//plot3d(x,y,k*ones(x'*y))
//e = gce()
//e.color_mode=128

// Cosmétique {{{
a = gca()
a.isoview = "on"
a.children.thickness = 0
f = gcf()
f.color_map = .1 + .8*bonecolormap(128) // pique moins les yeux
//a.data_bounds = [-1,-1,-1; 1, 1, 1]
// }}}

//subplot(122)
x = linspace(-1,1,9)
y = x
[X,Y] = meshgrid(x,y)
nablaX = 2*X
nablaY = 2*Y
champ(x,y, nablaX', nablaY')
e=gce()
e.thickness=1

