---
layout: default
---

<div class="page-header">
<h1>
Fiches de référence sur Scilab
</h1>
</div>
{% assign items = site.scilabRef | sort: 'date' %}{% 
for item in items %}
- [{{ item.titre }}]({{ item.url }}) *le {{ item.date | date: " %d %b %Y" }}*{% 
endfor %}
