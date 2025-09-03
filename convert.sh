#!/bin/sh

echo "Converting..." && \
  yj schemas.yaml -o schemas.json && \
  yj transpaer.yaml -o transpaer.json && \
  (jq . schemas.json > /dev/null) && \
  (jq . transpaer.json > /dev/null) && \
  echo "Done"
