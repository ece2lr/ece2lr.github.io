---
titre: Ergonomie et *workflow* sous Scilab
date: 2016-09-17
---

{% include toc.html %}

## Raccourcis clavier usuels

### Raccourcis environnement

L'environnement graphique de votre système d'exploitation vient probablement avec les raccourcis suivants : 

- <kbd>Alt</kbd>+<kbd>Tab</kbd> et <kbd>Shift</kbd>+<kbd>Alt</kbd>+<kbd>Tab</kbd> pour passer à la fenêtre suivante/précédente.
- <kbd>Alt</kbd>+<kbd>F4</kbd> pour fermer une fenêtre.

### Raccourcis clavier pour éditeurs de texte

Les raccourcis suivants fonctionnent pour la plupart des éditeurs de texte (sauv vim !)

- <kbd>Ctrl</kbd>+<kbd>Z</kbd> pour annuler la dernière action et <kbd>Ctrl</kbd>+<kbd>Y</kbd> pour dés-annuler (avec vim : `u` et `Ctrl-R`)
- <kbd>Ctrl</kbd>+<kbd>S</kbd> pour sauvegarder le fichier courant. (avec vim : `:w<CR>`)
- <kbd>Ctrl</kbd>+<kbd>Droite</kbd> et <kbd>Ctrl</kbd>+<kbd>Gauche</kbd> pour sauter au début du mot suivant/précédent (avec vim : `w` et `b` en mode normal)
- <kbd>Orig.</kbd> et <kbd>Fin</kbd> pour sauter au début/à la fin de ligne en cours (avec vim : `0` ou `^` et `$` en mode normal)
- Maintenir <kbd>Shift</kbd> pour sélectionner du texte au clavier. Compatible avec les mouvements du curseur ci-dessus (avec vim : `v` en mode normal)
- <kbd>Ctrl</kbd>+<kbd>V</kbd> pour **copier** le texte sélectionné (avec vim : `y`)
- <kbd>Ctrl</kbd>+<kbd>X</kbd> pour **couper** le texte sélectionné (avec vim : `x`)
- <kbd>Ctrl</kbd>+<kbd>C</kbd> pour **coller** le texte dans le presse-papier (avec vim : `p`)

## Utilisation de Scinotes

### Fonctionnalités

Le petit *ide* `scinotes` inclus dans Scilab propose les fonctionnalités suivantes : 

- coloration syntaxique
- indentation automatique
- complétion automatique de quelques mots-clés : `for`, `function`...

### Commenter du code

Scilab ne lit rien de ce qui suit un double backslash `\\`, et jusqu'à la fin de la ligne en cours. 

Quelques utilisations : 

- Explications du code pour une lecture ultérieure 
- Exemples d'applications d'une fonction 
- Désactivation d'une partie du programme sans avoir à effacer


### Raccourcis clavier pour Scinotes

En plus des raccourcis-clavier usuels ci-dessus, sont très utiles :

- <kbd>F5</kbd> pour sauvegarder et lancer le script actuel en mode silencieux.  
  Équivaut à la commande : `exec("/mon/dossier/actuel/monScript.sce",-1)`
- <kbd>Ctrl</kbd>+<kbd>D</kbd> pour commenter les lignes sélectionnées.   
  Équivaut à insérer `//` au début de chaque ligne de la sélection
- <kbd>Shift</kbd>+<kbd>Ctrl</kbd>+<kbd>D</kbd> pour décommenter les lignes sélectionnées.  
  Équivaut à supprimer `//` au début de chaque ligne de la sélection
- <kbd>Ctrl</kbd>+<kbd>I</kbd> pour corriger automatiquement l'indentation des lignes sélectionnées
  (avec vim : `=` en mode sélection)

## La console 

### Obtenir de l'aide

On peut obtenir de l'aide sur une commande avec `help`, avec 

- une description de la commande,
- sa syntaxe,
- des exemples d'utilisation.

### Autocomplétion et historique dans la console

En plus des raccourcis-clavier usuels ci-dessus, sont très utiles :

- <kbd>Haut</kbd> et <kbd>Bas</kbd> pour parcourir les commandes tapées précédemment.  
  **Attention :**
  La recherche se fait à partir du texte à gauche de la position actuelle du curseur !
- <kbd>Tab</kbd> pour autocompléter les noms de commandes ou de variables existantes (<kbd>Shift</kbd>+<kbd>Tab</kbd> pour l'autre sens)

### Gestion des affichages

On peut faire des calculs en mode muet en terminant une ligne par un point-virgule (`;`) : pratique pour les grands vecteurs.

## *"Window tiling"* dans l'interface graphique de Scilab

On peut accrocher 
les fenêtres d'une session Scilab au sein de la fenêtre principale.

C'est souvent une bonne idée de le faire pour la fenêtre d'affichage graphique 
`Graphic window number 0` afin de l'avoir toujours sous les yeux. 

Si l'espace à l'écran fait défaut, on pourra envisager les sacrifices suivants : 

- du navigateur de fichiers de Scilab, 
- de l'explorateur de variables,
- de l'historique des commandes, 

pour ne garder à l'écran que la console, l'éditeur `scinotes` et la fenêtre graphique.

### Sauvegarder un dessin

Une fois qu'on a fini un exercice et qu'on est content de son graphique, on peut le sauvegarder dans un format image. 

Dans la fenêtre graphique, `Fichier > Exporter` et choisir le format de fichier `PDF` ou `PNG`. 

On peut aussi sauvegarder la fenêtre graphique au format `SCG`, mais il me semble que ce n'est pas très fiable *(?)*

### Voir aussi 

Je conseille à tout le monde de consulter [ce petit tableau très utile](https://fr.wikipedia.org/wiki/Tableau_de_raccourcis_clavier#Interagir_avec_le_texte)
