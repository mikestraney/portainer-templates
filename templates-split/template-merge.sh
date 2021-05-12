#!/bin/bash
#mv templates.json templates.json.bu
cat module* | sed 's@^//\s*\S*$@@g' | tr -s '\n' > templates-out.json
exit
