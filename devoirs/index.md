---
layout: default
titre: Programmes de devoirs
devoirs:
  - titreDevoir: "Dl 1"
    enonce: enonce01.pdf
    correction: corrige01.pdf
  - titreDevoir: "Dl 2"
    enonce: enonce02.pdf
    correction: corrige02.pdf
  - titreDevoir: "Dl 3"
    enonce: enonce03.pdf
    correction: corrige03.pdf
  - titreDevoir: "Dl 4"
    enonce: enonce04.pdf
    correction: corrige04.pdf
  - titreDevoir: "Dl 5"
    enonce: enonce05.pdf
    correction: corrige05.pdf
  - titreDevoir: "Dl 6"
    enonce: enonce06.pdf
    correction: corrige06.pdf
---

## Les devoirs maison :

{% assign listeDevoirs = page.devoirs %}
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
