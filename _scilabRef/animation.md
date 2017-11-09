---
titre: Réaliser de petites animations graphiques avec Scilab
date: 2016-08-19
---

{% include toc.html %}

## Fichiers Scilab

Télécharger : 

- <a href="dessiner.sci" download>Le fichier fonctions `./dessiner.sci`</a>
- <a href="dessiner.sce" download>Le fichier commandes `./dessiner.sce`</a>

## Objectif 

On réalise une petite animation graphique, où l'on voit rouler sans glisser la droite tangente le long du graphe d'une fonction dérivable. 

![Résultat de notre animation](./animTangentes.gif)

{% comment %}
On trace un arc de courbe : ici une portion de la parabole,  qui est le graphe de la fonction $x \mapsto x^2$. 
{% endcomment %}
La plus grosse partie du travail est faite dans le fichier `dessiner.sci`, où l'on définit des fonctions sans les appeler. 

Pour contrôler que tout fonctionne *(`debug`)*, on utilise *(au fur et à mesure)* la console interactive de Scilab directement.


## Tracer la parabole

On trace la courbe d'équation $y = x^2$ pour $x \in [-1 ; 1 ]$ *(segment défini par `XMIN` et `XMAX`)*. 

- On obtient 100 points grâce à la commande `linspace`. 
- On les place en abscisses, avec en ordonnées leur carré. 

Le tout est encapsulé dans une fonction `dessinerParabole` qui n'a pas de paramètre, et qui retourne une poignée `e` qui permet de manipuler l'apparence de l'entité graphique produite *(ici la courbe parabole, donc)*. 

{% include inclureExtraitScilab.html codeurl="dessiner.sci" mot="dessinerParabole" %}

## Tracer une tangente 

Chaque tangente est une droite. On trace donc simplement un segment en plaçant les deux points extrémaux. 

### Rappel (maths)

La courbe de la fonction $f : x \mapsto x^2$ 
a pour tangente 
au point d'abscisse $a$
la droite d'équation 
$y - f(a) = f'(a) (x - a)$ 
soit ici $ y = 2 a (x - a) + a^2 = 2ax - a^2$. 

{% include inclureExtraitScilab.html codeurl="dessiner.sci" mot="tracerTangente" %}

## Tracer plusieurs tangentes 

### Tracé simultané 
{% comment %}
*toutes en même temps*
{% endcomment %}

Grâce à une boucle `for`, on appelle la fonction `tracerTangente (a)` plusieurs fois en faisant varier le paramètre `a`.

Ici, on choisit de garder `a` dans le segment $[-1 ; 1]$. 

{% include inclureExtraitScilab.html codeurl="dessiner.sci" mot="tTangentesSimultane" %}

### Tracé successifs avec `sleep`

Exactement la même chose, mais on introduit un délai entre chaque tracé de tangente 

{% include inclureExtraitScilab.html codeurl="dessiner.sci" mot="tTangentesAsynchrone" %}

Niels Abel disait de C. F. Gauss que 

> Il est comme un renard qui efface avec sa queue ses traces de pas dans le sable. 

Il ne nous reste qu'à imiter cette tactique : 

## Animer en effaçant progressivement 

L'idée est, juste avant le tracé de chaque tangente, d'effacer la précédente. 

Pour éviter que l'image ne clignote à cause de la latence entre l'effacement et le tracé suivant, on utilise le couple `drawlater()` et `drawnow()` pour synchroniser les deux étapes. 

{% include inclureExtraitScilab.html codeurl="dessiner.sci" mot="tTangentesEffacer" %}

## Invocation de nos fonctions 

Nous arrivons enfin au fichier `dessiner.sce`, dans lequel on passe des instructions effectives. 

On commence par charger en mémoire les fonctions définies par le fichier `dessiner.sci`, avec quelques constantes.

### Attention : chemin !

Pour que l'appel de `dessiner.sci` fonctionne, il faut que le **répertoire courant pour Scilab** soit celui où est enregistré `dessiner.sci` !

On peut vérifier 

- soit avec la commande `pwd` (**p**rint **w**orking **d**irectory) que l'on est dans le bon répertoire
- soit avec la commande `ls` (**l**i**s**t files) que le répertoire courant contient le fichier.

Si ce n'est pas le cas, il faut 

- ou bien naviguer vers ce répertoire dans Scilab
  
  - soit avec la commande `cd` (**c**hange **d**irectory)
  - soit avec la fenêtre de navigation de l'interface graphique de Scilab. 

- ou bien copier ou déplacer le fichier dans ce dossier affiché par `pwd` par exemple grâce à votre gestionnaire de fichiers favori

{% include inclureExtraitScilab.html codeurl="dessiner.sce" mot="invocation" %}

Il ne reste qu'à lancer la fonction qui nous intéresse.

{% include inclureExtraitScilab.html codeurl="dessiner.sce" mot="commandes" %}

## La cosmétique

Tout ce qui suit est optionnel et peut être modifié. Ce sont essentiellement des réglages de l'apparence graphique. 

Noter tout de même dans la fonction `cosmetiqueAxes` **la techique pour fixer les bornes des axes**. Ce type de réglage est souvent nécessaire pour la création d'images animées.

{% assign plier = true %}
{% include inclureExtraitScilab.html codeurl="dessiner.sci" mot="cosmetique" %}
