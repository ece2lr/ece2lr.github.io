---
layout: default
titre: TD de maths
listeTD:
- titreTD: "Td1 - Espaces vectoriels, applications linéaires"
  fichier: td01.pdf
  du: 6 septembre
- titreTD: "Td2 - Propriétés de familles de vecteurs"
  fichier: td02.pdf
  du: 11 septembre
- titreTD: "Td3 - Séries numériques"
  fichier: td03.pdf
  du: 18 septembre
- titreTD: "Td4 - Indépendance de variables aléatoires"
  fichier: td04.pdf
  du: 25 septembre
- titreTD: "Td5 - Situations markoviennes"
  fichier: td05.pdf
  du: 2 octobre
- titreTD: "Td6 - Représentations matricielles des endomorphismes"
  fichier: td06.pdf
  du: 9 octobre
- titreTD: "Td7 - La notion de dimension"
  fichier: td07.pdf
  du: 16 octobre
- titreTD: "Td8 - Compléments sur l'intégration"
  fichier: td08.pdf
  du: 9 novembre
- titreTD: "Td9 - Pratique de la diagonalisation"
  fichier: td09.pdf
  du: 16 novembre
---

# {{ page.titre }}

{% assign listeTD = page.listeTD %}
<div class="panel list-group" id="tableTD">
{% for td in listeTD %}
  <div class="list-group-item" >{{ td.titreTD }} <em>le {{ td.du }}</em>
    <div class="btn-group btn-group-sm pull-right">
      <a href="{{ td.fichier }}" class="btn btn-primary">Énoncé (PDF)</a>
    </div>
  </div>{% 
  endfor %}
</div>
