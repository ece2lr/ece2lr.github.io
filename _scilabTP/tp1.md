---
numeroTP: 1
titre: Remise en route
date: 2016-09-05
corrige: true
fichiersCorrec: 
  - entiers.sce
  - plotParab.sce
  - plotLog.sce
  - plotLogJoli.sce
  - normale.sce
---

{% include toc.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp1.pdf)

## Correction du TP

{% for path in page.fichiersCorrec %}
- [le fichier `{{ path }}`]({{ path }})
{% endfor %}

{% for path in page.fichiersCorrec %}
{% assign plier = true %}
{% include inclureEntierScilab.html codeurl=path %}
{% endfor %}
