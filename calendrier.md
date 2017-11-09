---
layout: default
---


{% assign themes = site.data.themes %}
{% assign numeroSemaine = 0 %}
{% for semaine in site.data.semaines %}{% assign vac = semaine.vacances %}
- Lundi {{ semaine.lundi }} : {%
  if vac 
  %} VACANCES !  {%
  else 
  %}Semaine {{ numeroSemaine }}
  <div class="well well-sm" markdown="1">
  {{ themes[numeroSemaine] }}
  </div>
  {%
  assign numeroSemaine = numeroSemaine | plus: 1 
  %}{% 
  endif %}
{% endfor %}
