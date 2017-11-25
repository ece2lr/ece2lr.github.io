---
layout: default
titre: Programmes de colles
listeColles:
- titreColle: "Semaine 1 - Espaces vectoriels, applications linéaires"
  fichier: semaine01.pdf
  du: 11 septembre
- titreColle: "Semaine 2 - Propriétés de familles de vecteurs"
  fichier: semaine02.pdf
  du: 18 septembre
- titreColle: "Semaine 3 - Séries numériques"
  fichier: semaine03.pdf
  du: 25 septembre
- titreColle: "Semaine 4 - Indépendance de variables aléatoires"
  fichier: semaine04.pdf
  du: 2 octobre
- titreColle: "Semaine 5 - Situations markoviennes"
  fichier: semaine05.pdf
  du: 9 octobre
- titreColle: "Semaine 6 - Représentations matricielles des endomorphismes"
  fichier: semaine06.pdf
  du: 16 octobre
- titreColle: "Semaine 7 - La notion de dimension"
  fichier: semaine07.pdf
  du: 13 novembre
- titreColle: "Semaine 8 - Intégration"
  fichier: semaine08.pdf
  du: 20 novembre
- titreColle: "Semaine 9 - Diagonalisation"
  fichier: semaine09.pdf
  du: 27 novembre
listeMmeBlanchet:
  - "IO 1 EV Appli linéaire.pdf"
  - "IO2 famille génératrice, libre, bases.pdf"
  - "IO3 suites séries.pdf; IO4 couple de VAR.pdf"
  - "IO5 chaines de Markov.pdf"
  - "IO6 Matrice d'endomorphisme.pdf"
  - "IO7 Dimension, Rang.pdf"
---

## Les programmes de colles : 

{% assign listeColles = page.listeColles %}
<div class="panel list-group" id="tableColles">
{% for colle in listeColles reversed %}
  <div class="list-group-item" >{{ colle.titreColle }} <em>semaine du {{ colle.du }}</em>
    <div class="btn-group btn-group-sm pull-right">
      <a href="{{ colle.fichier }}" class="btn btn-primary">Fichier Pdf</a>
    </div>
  </div>{% 
  endfor %}
</div>

## Fiches de colle de Mme Blanchet

{% for colle in page.listeMmeBlanchet %}
  - [{{colle}}](mmeBlanchet/{{colle}}){%
endfor%}
