---
layout: default
---

## Fiches de références sur Scilab

<div class="panel list-group" id="tableScilabRef">
  {% for post in site.scilabRef %}
    {% assign adresse = "/scilabRef" | append: post.path | remove_first: "_scilabRef" | remove_first: ".md" | remove_first: ".html"%}
    <a href="#" class="list-group-item" href="{{ adresse }}">{{post.title}}</a>
  {% endfor %}
</div>

## Travaux pratiques de Scilab

<div class="panel list-group" id="tableScilabTP">
  {% for post in site.scilabTP %}
    <div class="list-group-item" >{{post.title}}</div>
  {% endfor %}
</div>


<div class="panel list-group" id="tableScilab">
  {% for post in site.scilab %}
    {% assign fichier = post.path | remove_first: "_scilab/" | remove_first: ".html" | remove_first: ".md"%}
    <div class="list-group-item" >{{post.title}}
      <div class="btn-group btn-group-sm pull-right">
        <a href="/scilab/{{fichier}}" class="btn btn-default">Voir</a>
        <a href="{{ adressePdf }}" class="btn btn-primary">Fichier Pdf</a>
      </div>
    </div>
  {% endfor %}
</div>

