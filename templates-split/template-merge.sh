#!/bin/bash

## BEG of FILE
echo '{' > templates-out.json
echo '        "version": "2",' >> templates-out.json
echo '        "templates": [' >> templates-out.json

## Combine modules
cat module* | sed 's@^//\s*\S*$@@g' | tr -s '\n' >> templates-out.json


##END OF FILE
echo '        ]' >> templates-out.json
echo '}' >> templates-out.json

exit
