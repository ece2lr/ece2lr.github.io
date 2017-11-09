---
layout: default
---

<div class="page-header">
<h1>
Tp de Scilab
</h1>
</div>
{% assign listeTP = site.scilabTP | sort: 'date' %}{% 
for leTP in listeTP %}
- [{{ leTP.titre }}]({{ leTP.url }}) *le {{ leTP.date | date: " %d %b %Y" }}*{% if leTP.corrige %} **avec corrigé** {% endif %}{% 
endfor %}

## Généralités sur Scilab

[Quelques fiches](/scilabRef)
