//citer:AideGraphiques
-->help graphics_entities // ouvrir l'aide de Scilab au chapitre `graphics_entities`
//finCiter

//citer:DefinirFigure
-->scf () ; // [set current figure] créer et sélectionner une nouvelle fenêtre graphique 
 
-->maFigure = gcf () ; // [get current figure] attraper et référencer la figure active (sélectionnée)
//finCiter
 
//citer:AttributsFigure
-->maFigure // afficher tous les attributs de cette figure (valeurs par défaut)
 ans  =
 
Handle of type "Figure" with properties:
========================================
children: "Axes"
figure_position = [200,200]
figure_size = [614,580]
axes_size = [610,460]
auto_resize = "on"
viewport = [0,0]
figure_name = "Graphic window number %d"
figure_id = 0
info_message = ""
color_map = matrix 32x3
pixel_drawing_mode = "copy"
anti_aliasing = "off"
immediate_drawing = "on"
background =  -2
visible = "on"
rotation_style = "unary"
event_handler = ""
event_handler_enable = "off"
user_data = []
resizefcn = ""
closerequestfcn = ""
resize = "on"
toolbar = "figure"
toolbar_visible = "on"
menubar = "figure"
menubar_visible = "on"
infobar_visible = "on"
dockable = "on"
layout = "none"
layout_options = "OptNoLayout"
default_axes = "on"
icon = ""
tag = ""
//finCiter
 
//citer:ModifierFigure
-->help figure_properties // appeler l'aide

-->maFigure.figure_name // afficher l'attribut mentionné de la figure ("%d" pour son numéro [figure_id])
 ans  =
 
 Graphic window number %d  

-->maFigure.figure_name = "le nom de figure que je choisis" ; // modifier cet attribut de la figure
//finCiter

//citer:CreerAxesHaut
-->subplot(211) // créer un nouveau système d'axes sur la moitié haute de la figure 

-->mesAxes = gca () ; // attraper et référencer le système d'axes actif (get current axes)
//finCiter
 
//citer:AttributsAxes
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
//finCiter

//citer:ModifierAxes
-->help axes_properties

-->mesAxes.background // afficher la couleur de fond actuel du système d'axes
 ans  =
 
  - 2.  

-->mesAxes.background = 13 ; // afficher la couleur de fond actuel du système d'axes 
//finCiter
 
//citer:TitleAttributes
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
//finCiter
 
//citer:ModifierTitle
-->mesAxes.title.text = "un rectangle vert pour mon premier axe" ; // modifier le texte du titre
 
-->mesAxes.title.font_size = 5 ; // modifier la taille de la fonte du titre
//finCiter
 
//citer:ModifierAxesBas
-->mesAxesHaut = mesAxes ; clear ('mesAxes') ; // modifier la référence du système d'axes
 
-->subplot (212) ; mesAxesBas = gca () ; // créer et référencer un nouveau système d'axeS
 
-->mesAxesBas.box = "on" ; // dessiner le bord des axes

-->mesAxesBas.title.text = "une boîte vide pour mon deuxième axe" ;  // 

-->mesAxesBas.title.font_size = mesAxesHaut.title.font_size ; // works as expected
//finCiter
 
//citer:Parente
-->mesAxesBas.parent.figure_name  // afficher la valeur de cet attribut pour le parent
 ans  =
 
 le nom que je choisis   
 
-->// Booléens en Scilab : %T [True : affiche T] et F [False: affiche F]

-->mesAxesBas.parent == mesAxesHaut.parent // vérifier que les deux axes ont le même parent
 ans  =
 
  T  

-->maFigure.children // afficher les enfants de la figure
 ans  =
 
2 by 1 matrix of handles:
=========================
Axes 
Axes 
 
-->maFigure.children (1) == mesAxesBas // vérifier que les axes sont les enfants de la figure
 ans  =
 
  T  
 
-->maFigure.children (2) == mesAxesHaut
 ans  =
 
  T  

-->maFigure.children (2) == mesAxesHaut

 
-->mesAxesBas.foreground 
 ans  =
 
  - 1.  
 
-->maFigure.children(1).foreground = 5 ; 
 
-->mesAxesBas.foreground 
 ans  =
 
    5.  
//finCiter
