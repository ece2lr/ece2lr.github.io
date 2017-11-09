---
layout: default
titre: Plan du site
---
{% assign plan = site.data.sitemap %}{% 

for item in plan %}{% 
  assign sous = item["sous"]%}
  - {{ item["court"] }}{% 
  if sous %}{% 
    for sousItem in sous %}{% 
      assign sousTitre = sousItem["court"]%}
      - {{ sousTitre }}{% 
    endfor %}{% 
  else %}{% 
  endif %}{% 
endfor %}

