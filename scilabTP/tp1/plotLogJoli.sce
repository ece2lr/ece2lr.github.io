XMIN = .3
XMAX = 3
x = linspace(XMIN, XMAX)

clf()

plot2d(x, x-1)
droite = gce()
plot2d(x, log(x))
courbeLog = gce()

droite.children.foreground = 13
courbeLog.children.foreground = 2

axes = gca()
axes.x_location = "origin" 

maLegende = legend("$y = x - 1$", "$y = \ln (x)$")
maLegende.font_size = 4
maLegende.legend_location = "in_upper_left"

title('$\text{L''inégalité} \ln (x) \le x - 1$')
axes.title.font_size = 5

//pdfeps("log")
