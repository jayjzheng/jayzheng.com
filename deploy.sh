#!/bin/bash
set -euo pipefail

aws s3 cp index.html s3://jayzheng.com/index.html
aws s3 cp jay.css s3://jayzheng.com/jay.css

aws cloudfront create-invalidation \
  --distribution-id E1RYMVMDD6YQUD \
  --paths '/*'
