Voici le plan de ce site : 

{% assign plan = site.data.sitemap %}{% 

for item in plan %}{% 
  assign sous = item["sous"]%}{% 
  assign url = item["url"]%}{% 
  if url %}
  - [{{ item["court"] }}]({{ url }}){% 
  else %}
  - {{ item["court"] }}{% 
  endif %}{% 
  if sous %}{% 
    for sousItem in sous %}{% 
    assign sousUrl = sousItem["url"]%}{% 
    assign sousTitre = sousItem["court"]%}
    - [{{ sousTitre }}]({{ sousUrl }}){% 
    endfor %}{% 
  else %}{% 
  endif %}{% 
endfor %}
