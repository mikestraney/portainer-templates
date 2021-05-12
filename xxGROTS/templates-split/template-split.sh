#!/bin/bash
csplit --digits=3  --quiet --prefix=module templates.json "/\/\/ _________/+1" "{*}" && \
for i in module*; do mv $i $(printf '%s' $i && cat $i | head -n 1 | sed 's/\/\/ /_/g'); done
exit
