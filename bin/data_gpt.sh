#!/bin/bash
# model: gpt-4 is in private beta (have to get from waitlist)
# model: gpt-3.5-turbo (if you don't have access)

# first arg is the prompt and the second is data input

function data_gpt {
  prompt_input=$(echo "$1: $2" | string join ' ')

  curl https://api.openai.com/v1/chat/completions -s \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d '{
        "model": "gpt-3.5-turbo",
        "messages": [{"role": "user", "content": "'$prompt_input'"}],
        "temperature": 0.7
    }' | jq -r '.choices[0].message.content'
}
