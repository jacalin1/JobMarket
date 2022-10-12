#!/bin/bash
source ~/.bash_profile ; make4ht  --utf8 --config Steps.cfg --format html5 Steps "svg            "   "-cunihtf -utf8"
cp Steps.html index.html
cat page-style.css | cat - Steps.css > Steps-page-style.css && mv Steps-page-style.css Steps.css
[[ ! -e _config.yml ]] && echo 'theme: jekyll-theme-minimal' > _config.yml
for ext in bbl nav out snm 4ct 4tc aux dvi idv lg log out xref ps out.ps tmp fls; do rm -f *.$ext ; done
