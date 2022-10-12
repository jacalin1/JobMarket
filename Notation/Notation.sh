#!/bin/bash
source ~/.bash_profile ; make4ht  --utf8 --config Notation.cfg --format html5 Notation "svg            "   "-cunihtf -utf8"
cp Notation.html index.html
cat page-style.css | cat - Notation.css > Notation-page-style.css && mv Notation-page-style.css Notation.css
[[ ! -e _config.yml ]] && echo 'theme: jekyll-theme-minimal' > _config.yml
for ext in bbl nav out snm 4ct 4tc aux dvi idv lg log out xref ps out.ps tmp fls; do rm -f *.$ext ; done
