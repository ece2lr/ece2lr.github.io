---
numeroTP: 7
titre: Divers (intégrales, indépendance de *v.a.*)
date: 2016-11-29
corrige: false
fichiersEnonce: 
  - xbis.sce
  - cosmetique.sce
---

{% include toc.html %}
{% include ici.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp6.pdf)

{% for path in page.fichiersEnonce %}
- <a href="{{ path }}" download="{{ path }}">le fichier `{{ path }}`</a>
{% endfor %}

{% for path in page.fichiersEnonce %}{% 
  assign plier = true %}{% 
  include inclureEntierScilabH3.html codeurl=path %}
{% endfor %}

