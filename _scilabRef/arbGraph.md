---
titre: L'arborescence graphique de Scilab
date: 2016-08-18
---

## Objectif 

On cherche à illustrer l'idée selon laquelle 
les graphiques de Scilab sont organisés en une **arborescence**, et que celle-ci ressemble génériquement à ceci : 

{% highlight scilab %}
{% include_relative arbGraph/arbreSimplif %}
{% endhighlight %}

Tout ce que nous allons montrer ici est expliqué clairement dans le chapitre `graphics_entities` de Scilab souvent avec de bons exemples.

{% include inclureExtraitScilab.html codeurl="commandes.sce" mot="AideGraphiques" %}

## La figure 

### Créer une nouvelle figure

Pour Scilab, chaque objet (`handle`) de classe (`type`) : `"Figure"` correspond à une fenêtre graphique. 

{% include inclureExtraitScilab.html codeurl="commandes.sce" mot="DefinirFigure" %}

Cette figure est un **objet** qui a des **attributs** (ou propriétés : `properties`). 

### Les attributs de la figure 

On peut afficher la liste de ces attributs et leurs valeurs actuelles en invoquant (en appelant) la figure : 

{% assign plier = true %}
{% include inclureExtraitScilab.html codeurl="commandes.sce" mot="AttributsFigure" %}

#### Remarque 

Il n'est évidemment pas indispensable de lire toute la liste et encore moins de la mémoriser, mais il est utile d'avoir en tête ce qui est disponible. 

### Accéder aux attributs 

On peut accéder à ces attributs individuellement soit : 

- simplement pour en afficher la valeur (**accès en lecture**)  
- pour en modifier la valeur (**accès en écriture**)

L'utilité et le sens de chacun de ces attributs et ses valeurs possibles sont doccumentées dans le chapitre `figure_properties` de Scilab.

{% include inclureExtraitScilab.html codeurl="commandes.sce" mot="ModifierFigure" %}

{% comment %}
{% capture corde %}
CreerAxesHaut AttributsAxes ModifierAxes TitleAttributes ModifierTitle ModifierAxesBas Parente
{% endcapture %}
{% assign tableau = corde | split: " " %}
{% for lemot in tableau %}
## {{ lemot }} 
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=lemot %}

{% endfor %}
{% endcomment %}

## Les axes 

### Attributs d'axes

Définissons un premier système d'axes grâce à la commande `subplot` *(voir plus bas)*
{% assign leMot = "CreerAxesHaut" %}
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=leMot %}

De même, chaque système d'axes est pourvu d'une liste d'attributs, qui est assez longue : 

{% assign plier = true %}
{% assign leMot = "AttributsAxes" %}
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=leMot %}

L'aide de Scilab nous renseigne sur chacun de ces attributs. 
On peut accéder à ces attributs en lecture et en écriture : 

{% assign leMot = "ModifierAxes" %}
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=leMot %}

### Attributs du titre

L'attribut `title` de `mesAxes` attire notre attention. Renseignons-nous :

{% assign plier = true %}
{% assign leMot = "TitleAttributes" %}
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=leMot %}

On peut accéder en lecture et en écriture à chaque attribut du titre : 

{% assign leMot = "ModifierTitle" %}
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=leMot %}

### Un deuxième système d'axes avec `subplot`

D'abord on renomme notre premier système d'axes `mesAxes` en `mesAxesHaut`. 

On définit un deuxième système d'axes dans la même figure, dans l'espace libre juste en dessous. On peut ensuite modifier celui-ci.

{% assign leMot = "ModifierAxesBas" %}
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=leMot %}

## Lien de parenté entre `Figure` et `Axes`

La relation entre la `Figure` et les deux `Axes` peut être représentée par l'arbre suivant : 

{% highlight scilab %}
{% include_relative arbGraph/arbreFigureAxes %}
{% endhighlight %}

On dit que :

- `maFigure` est le **parent** de `mesAxesBas` et de `mesAxesHaut` *(chaque `Axes` n'a qu'un seul parent)*
- `mesAxesBas` et de `mesAxesHaut` sont les **enfants** de `maFigure` *(une `Figure` peut, comme ici, avoir plusieurs enfants)*

On peut aussi parler d'**ascendants** et de **descendants** directs (sur une seule "génération"). 

{% assign leMot = "Parente" %}
  {% include inclureExtraitScilab.html codeurl="commandes.sce" mot=leMot %}

On accède à la liste des **descendants directs** (`children`) de la figure par sa méthode `children`

#### Remarque

Cet accès se fait en **lecture seule** : cette liste `maFigure.children` est **protégée en écriture**



## Les entités graphiques

*To be written*


