#!/bin/bash

for template in */
do
        cp extra_pkgs.tex ${template}
        cd ${template}
        make upgrade
        git commit -am "Upgrading template" && git push
        cd ..
done

git commit -am "Upgrading templates" && git push
