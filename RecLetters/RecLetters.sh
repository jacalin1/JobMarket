#!/bin/bash
source ~/.bash_profile ; make4ht  --utf8 --config RecLetters.cfg --format html5 RecLetters "svg            "   "-cunihtf -utf8"
cp RecLetters.html index.html
cat page-style.css | cat - RecLetters.css > RecLetters-page-style.css && mv RecLetters-page-style.css RecLetters.css
[[ ! -e _config.yml ]] && echo 'theme: jekyll-theme-minimal' > _config.yml
for ext in bbl nav out snm 4ct 4tc aux dvi idv lg log out xref ps out.ps tmp fls; do rm -f *.$ext ; done
