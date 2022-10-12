#!/bin/bash
source ~/.bash_profile ; make4ht  --utf8 --config Overview.cfg --format html5 Overview "svg            "   "-cunihtf -utf8"
cp Overview.html index.html
cat page-style.css | cat - Overview.css > Overview-page-style.css && mv Overview-page-style.css Overview.css
[[ ! -e _config.yml ]] && echo 'theme: jekyll-theme-minimal' > _config.yml
