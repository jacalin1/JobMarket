#!/bin/bash
source ~/.bash_profile ; make4ht  --utf8 --config TimeTable.cfg --format html5 TimeTable "svg            "   "-cunihtf -utf8"
cp TimeTable.html index.html
cat page-style.css | cat - TimeTable.css > TimeTable-page-style.css && mv TimeTable-page-style.css TimeTable.css
[[ ! -e _config.yml ]] && echo 'theme: jekyll-theme-minimal' > _config.yml
for ext in bbl nav out snm 4ct 4tc aux dvi idv lg log out xref ps out.ps tmp fls; do rm -f *.$ext ; done
