---
numeroTP: 4
titre: Marches de Bernoulli
date: 2016-10-10
corrige: false
fichiersEnonce: 
  - marcheBernoulli.sce
  - simulGeom.sce
  - echantillonGeom.sce
  - marcheBernoulliCentree.sce
  - circulante.sci
---

{% include toc.html %}
{% include ici.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp4.pdf)

{% for path in page.fichiersEnonce %}
- <a href="{{ path }}" download="{{ path }}">le fichier `{{ path }}`</a>
{% endfor %}

{% for path in page.fichiersEnonce %}{% 
  assign plier = true %}{% 
  include inclureEntierScilabH3.html codeurl=path %}
{% endfor %}

