---
numeroTP: 9
titre: Simulation de lois
date: 31/01/2017
corrige: false
fichiersEnonce: 
---

{% include toc.html %}
{% include ici.html %}

## Les fichiers à télécharger

- [l'énoncé du tp](tp9.pdf)

{% for path in page.fichiersEnonce %}
- <a href="{{ path }}" download="{{ path }}">le fichier `{{ path }}`</a>
{% endfor %}

{% for path in page.fichiersEnonce %}{% 
  assign plier = true %}{% 
  include inclureEntierScilabH3.html codeurl=path %}
{% endfor %}

