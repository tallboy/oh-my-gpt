#!/bin/bash

IMG_DIR=$HOME/code/oh-my-gpt/img

function img_gpt {
    local prompt=$1
    local create_img=$(curl https://api.openai.com/v1/images/generations -s \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d '{
        "prompt": "'$prompt'",
        "n": 1,
        "size": "1024x1024"
    }')
    echo $create_img | jq
    local url=$(echo $create_img | jq -r '.data[0].url')
    local rand_num=$((RANDOM%1000000+1))
    cd $IMG_DIR && curl -s $url -o img-"$rand_num".png
}
