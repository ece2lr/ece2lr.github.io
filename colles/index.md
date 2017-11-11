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

[Cliquer ici](mmeBlanchet/)
