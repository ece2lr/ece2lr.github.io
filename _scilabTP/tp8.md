---
numeroTP: 8
titre: Diagonalisation et chaînes de Markov
date: 17/01/17
corrige: false
fichiersEnonce: 
  - circulante.sci
---

{% include toc.html %}
{% include ici.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp8.pdf)

{% for path in page.fichiersEnonce %}
- <a href="{{ path }}" download="{{ path }}">le fichier `{{ path }}`</a>
{% endfor %}

{% for path in page.fichiersEnonce %}{% 
  assign plier = true %}{% 
  include inclureEntierScilabH3.html codeurl=path %}
{% endfor %}

