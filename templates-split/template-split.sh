#!/bin/bash
csplit --digits=3 --prefix=module templates.json "/^                },/+1" {*}
cat module000 | tail -n +4 > aaTmp && mv aaTmp module000
lastmod=module$(($(ls module* | wc -l) - 1)) && \
cat $lastmod | head -n -2 > aaTmp && mv aaTmp $lastmod
for i in module*; do mv $i $(printf '%s' $i"_" && cat $i | grep '"title":' | tr "'" "|" | sed -e "s/\s*.title.: //g" -e 's/[", /|]//g'); done
exit
