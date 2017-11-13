---
layout: default
titre: Programmes de colles
---

## Les programmes de colles : 

{% assign listeColles = site.data.listeColles %}
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

{% assign listeMmeBlanchet = "IO 1 EV Appli linéaire.pdf; IO2 famille génératrice, libre, bases.pdf; IO3 suites séries.pdf; IO4 couple de VAR.pdf; IO5 chaines de Markov.pdf; IO6 Matrice d'endomorphisme.pdf; " | split: "; " %}
{% for colle in listeMmeBlanchet %}
  - [{{colle}}](mmeBlanchet/{{colle}}){%
endfor%}
