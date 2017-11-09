---
layout: default
titre: Notes de cours de maths
---

# {{ page.titre }}

{% assign listeCours = site.data.listeCours %}
<div class="panel list-group" id="tableCours">
{% for cours in listeCours %}
  <div class="list-group-item" >{{ cours.titreCours }} 
    <div class="btn-group btn-group-sm pull-right">
      <a href="{{ cours.fichier }}" class="btn btn-primary">Fichier PDF</a>
    </div>
  </div>{% 
  endfor %}
</div>
