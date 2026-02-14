#!/bin/bash

set -e

base_url=http://localhost:4000/v1

token=`grep master_key static/litellm.yaml | awk '{print $2}'`

# 检查 glm-4.7 可用
curl -X POST "$base_url/chat/completions" \
  -H "Authorization: Bearer $token" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "glm-4.7",
    "messages": [
      {
        "role": "user",
        "content": "请用一句话介绍你自己"
      }
    ],
    "temperature": 0.7,
    "max_tokens": 100,
    "stream": false
  }'

echo ""
echo ""

# 检查 kimi-k2.5 可用
curl -X POST "$base_url/chat/completions" \
  -H "Authorization: Bearer $token" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "kimi-k2.5",
    "messages": [
      {
        "role": "user",
        "content": "请用一句话介绍你自己"
      }
    ],
    "temperature": 0.7,
    "max_tokens": 100,
    "stream": false
  }'
