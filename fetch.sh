#!/bin/sh

URL=$1

curl -X POST \
  http://127.0.0.1:3000/screenshot \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -o /dev/null \
  --data-binary @- <<EOF
{
  "url": "${URL}",
  "options": {
      "fullPage": true,
      "type": "jpeg",
      "quality": 75
  }
}
EOF
