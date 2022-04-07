#!/bin/bash -e

for template in */
do
        printf "****************************************************************\n"
        printf "* ${template}\n"
        printf "****************************************************************\n"

        cp -r extra_pkgs.tex .github ${template}
        cd ${template}
        make upgrade
        git add -A
        git commit -m "Upgrading template" && git push
        cd ..
done

git add -A
git commit -m "Upgrading templates" && git push
