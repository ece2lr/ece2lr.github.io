-->help graphics_entities // appeler l'aide. Tout ce qu'il y a à savoir est expliqué ici très clairement avec de bons exemples. 

-->scf () ; // créer une nouvelle fenêtre graphique (
 
-->maFigure = gcf () ; // attraper et référencer la figure active (get current figure)
 
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
 
-->maFigure.figure_name // afficher l'attribut mentionné de la figure
 ans  =
 
 Graphic window number %d  

-->help figure_properties // appeler l'aide
 
-->help axes_properties

-->maFigure.figure_name = "le nom de figure que je choisis" ; // modifier cet attribut de la figure

