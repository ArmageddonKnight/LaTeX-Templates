#!/bin/bash

for template in */
do
        cp extra_pkgs.tex ${template}
        cp -r docker-compose.yml dockerfiles ${template}
        cd ${template}
        make upgrade
        git add -A
        git commit -m "Upgrading template" && git push
        cd ..
done

git commit -am "Upgrading templates" && git push
