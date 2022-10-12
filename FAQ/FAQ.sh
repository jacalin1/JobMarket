#!/bin/bash
source ~/.bash_profile ; make4ht  --utf8 --config FAQ.cfg --format html5 FAQ "svg            "   "-cunihtf -utf8"
cp FAQ.html index.html
cat page-style.css | cat - FAQ.css > FAQ-page-style.css && mv FAQ-page-style.css FAQ.css
[[ ! -e _config.yml ]] && echo 'theme: jekyll-theme-minimal' > _config.yml
for ext in bbl nav out snm 4ct 4tc aux dvi idv lg log out xref ps out.ps tmp fls; do rm -f *.$ext ; done
