-->subplot(211) // créer un nouveau système d'axes sur la moitié haute de la figure 

-->mesAxes = gca () ; // attraper et référencer le système d'axes actif (get current axes)
 
-->mesAxes // afficher tous les attributs de ce système d'axes
 mesAxes  =
 
Handle of type "Axes" with properties:
======================================
parent: Figure
children: []
 
visible = "on"
axes_visible = ["off","off","off"]
axes_reverse = ["off","off","off"]
grid = [-1,-1]
grid_position = "background"
grid_thickness = [1,1]
grid_style = [3,3]
x_location = "bottom"
y_location = "left"
title: "Label"
x_label: "Label"
y_label: "Label"
z_label: "Label"
auto_ticks = ["on","on","on"]
x_ticks.locations = matrix 11x1
y_ticks.locations = matrix 11x1
z_ticks.locations = []
x_ticks.labels = matrix 11x1
y_ticks.labels = matrix 11x1
z_ticks.labels = []
ticks_format = ["","",""]
ticks_st = [1,1,1;0,0,0]
box = "off"
filled = "on"
sub_ticks = [1,1]
font_style = 6
font_size = 1
font_color = -1
fractional_font = "off"
 
isoview = "off"
cube_scaling = "off"
view = "2d"
rotation_angles = [0,270]
log_flags = "nnn"
tight_limits = ["off","off","off"]
data_bounds = [0,0;1,1]
zoom_box = []
margins = [0.125,0.125,0.125,0.125]
auto_margins = "on"
axes_bounds = [0,0,1,0.5]
 
auto_clear = "off"
auto_scale = "on"
 
hidden_axis_color = 4
hiddencolor = 4
line_mode = "on"
line_style = 1
thickness = 1
mark_mode = "off"
mark_style = 0
mark_size_unit = "tabulated"
mark_size = 0
mark_foreground = -1
mark_background = -2
foreground = -1
background = -2
arc_drawing_method = "lines"
clip_state = "off"
clip_box = []
user_data = []
tag = 

-->mesAxes.background // afficher la couleur de fond actuel du système d'axes
 ans  =
 
  - 2.  

-->mesAxes.background = 13 ; // afficher la couleur de fond actuel du système d'axes 
 
-->mesAxes.title // afficher les attributs de titre du système d'axes
 ans  =
 
Handle of type "Label" with properties:
=======================================
parent: Axes
visible = "on"
text = ""
font_foreground = -1
foreground = -1
background = -2
fill_mode = "off"
font_style = 6
font_size = 1
fractional_font = "off"
font_angle = 0
auto_position = "on"
position = [1,1]
auto_rotation = "on"
tag = 
 
-->mesAxes.title.text = "un rectangle vert pour mon premier axe" ; // modifier le texte du titre
 
-->mesAxes.title.font_size = 5 ; // modifier la taille de la fonte du titre
 
-->mesAxesHaut = mesAxes ; clear ('mesAxes') ; // modifier la référence du système d'axes
 
-->subplot (212) ; mesAxesBas = gca () ; // créer et référencer un nouveau système d'axeS
 
-->mesAxesBas.box = "on" ; // dessiner le bord des axes

-->mesAxesBas.title.text = "une boîte vide pour mon deuxième axe" ;  // 

-->mesAxesBas.title.font_size = mesAxesHaut.title.font_size ; // works as expected
 
-->mesAxesBas.parent.figure_name  
 ans  =
 
 le nom que je choisis   
 
-->mesAxesBas.parent == mesAxesHaut.parent
 ans  =
 
  T  

-->maFigure.children 
 ans  =
 
2 by 1 matrix of handles:
=========================
Axes 
Axes 
 
-->maFigure.children (1) == mesAxesBas 
 ans  =
 
  T  
 
-->maFigure.children (2) == mesAxesHaut
 ans  =
 
  T  
 
-->mesAxesBas.foreground 
 ans  =
 
  - 1.  
 
-->maFigure.children(1).foreground = 5 ; 
 
-->mesAxesBas.foreground 
 ans  =
 
    5.  
