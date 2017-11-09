---
numeroTP: 7
titre: Couples de variables et la régression linéaire
date: 13/12/2016
corrige: false
fichiersEnonce: 
  - affichagesUSA.sce
  - statFrance.sce
  - statUSA.sce
  - traitementFrance.sce
---

{% include toc.html %}
{% include ici.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp7.pdf)

{% for path in page.fichiersEnonce %}
- <a href="{{ path }}" download="{{ path }}">le fichier `{{ path }}`</a>
{% endfor %}

{% for path in page.fichiersEnonce %}{% 
  assign plier = true %}{% 
  include inclureEntierScilabH3.html codeurl=path %}
{% endfor %}

