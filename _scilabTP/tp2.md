---
numeroTP: 2
titre: Statistiques univariées 
date: 2016-09-13
corrige: true
fichiersEnonce: 
  - densGauss.sci
fichiersCorrec: 
  - exercice1.sce
  - exercice2Correc.sce
  - exercice3Correc.sce
  - exercice4.sce
---

{% include toc.html %}
{% include ici.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp2.pdf)
- <a href="densGauss.sci" download>Le fichier `densGauss.sci`</a>

{% assign plier = true %}
{% include inclureEntierScilabH3.html codeurl="densGauss.sci" %}

## Correction du TP

{% for path in page.fichiersCorrec %}
- <a href="{{ path }}" download>le fichier `{{ path }}`</a>
{% endfor %}

{% for path in page.fichiersCorrec %}{% 
  assign plier = true %}{% 
  include inclureEntierScilabH3.html codeurl=path %}
{% endfor %}
