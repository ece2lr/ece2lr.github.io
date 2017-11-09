---
layout: default
titre: TD de maths
---

# {{ page.titre }}

{% assign listeTD = site.data.listeTD %}
<div class="panel list-group" id="tableTD">
{% for td in listeTD %}
  <div class="list-group-item" >{{ td.titreTD }} <em>le {{ td.du }}</em>
    <div class="btn-group btn-group-sm pull-right">
      <a href="{{ td.fichier }}" class="btn btn-primary">Énoncé (PDF)</a>
    </div>
  </div>{% 
  endfor %}
</div>
