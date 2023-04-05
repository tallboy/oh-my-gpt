
# model: gpt-4 is in private beta (have to get from waitlist)
# model: gpt-3.5-turbo (if you don't have access)

function hey_gpt {
    local prompt=$1
    
    curl https://api.openai.com/v1/chat/completions -s \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $OPENAI_API_KEY" \
        -d '{
            "model": "gpt-3.5-turbo",
            "messages": [{"role": "user", "content": "'$prompt'"}],
            "temperature": 0.7
        }' | jq -r '.choices[0].message.content'
}
