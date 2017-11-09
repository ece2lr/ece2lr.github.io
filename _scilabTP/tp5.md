---
numeroTP: 5
titre: Chaînes de Markov
date: 2016-11-15
corrige: false
fichiersEnonce: 
  - circulante.sci
  - circulanteAnim.sci
---

{% include toc.html %}
{% include ici.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp5.pdf)

{% for path in page.fichiersEnonce %}
- <a href="{{ path }}" download="{{ path }}">le fichier `{{ path }}`</a>
{% endfor %}

{% for path in page.fichiersEnonce %}{% 
  assign plier = true %}{% 
  include inclureEntierScilabH3.html codeurl=path %}
{% endfor %}

