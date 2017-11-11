---
layout: default
titre: Programmes de devoirs
---

## Les devoirs maison :

{% assign listeDevoirs = site.data.devoirs %}
<div class="panel list-group" id="tableDL">
{% for devoir in listeDevoirs %}
  <div class="list-group-item" >{{ devoir.titreDevoir }} 
    <div class="btn-group btn-group-sm pull-right">
      <a href="{{ devoir.enonce }}" class="btn btn-default">Énoncé</a>
      <a href="{{ devoir.correction }}" class="btn btn-primary">Corrigé</a>
    </div>
  </div>{% 
  endfor %}
</div>
