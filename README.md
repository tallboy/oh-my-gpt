# Oh My GPT
A set of shell scripts to integrate the ChatGPT in your terminal.  Inspired by the blog post by [Kade Killary](https://kadekillary.work/posts/1000x-eng/)

## Requirements
This repo assumes you are using [oh-my-zsh](https://ohmyz.sh/) and [jq](https://stedolan.github.io/jq/).

## SetUp
- Go to [OpenAI](https://platform.openai.com/overview) and sign up if you haven't already.  Make sure to grab an API key from your account page.  
- Clone this repository 
- Open your `zshrc` or zsh config and add the folder to your `$PATH`.  Alternatively you can create a symlink to an existing path.
- Export your `OPENAI_API_KEY` to your `zshrc`. (I'm sure there's a better way to do this.  Local secrets? Ping me I'm open to ideas.)

Here's an example:

```
# OpenAI
export OPENAI_API_KEY="SECRET_API_KEY"
export PATH="$HOME/code/oh-my-gpt:$PATH"
alias heyz=hey_gpt
alias datz=data_gpt
alias imgz=img_gpt
```

## Scripts
### `hey_gpt`
Useful for general queries.  Takes a single argument and gives a response.

```
h "what is america's finest city"

I am an AI language model and do not have personal preferences or opinions. However, San Diego in California is often referred to as America's Finest City due to its beautiful weather, beaches, parks, and attractions.
```

### `data_gpt`
`data_gpt` takes two args:
- `prompt`: A prompt to give ChatGPT
- `data`: A datasource to exercise the prompt against.  

A common use case is to write the output from the `hey_gpt` command to a flat file that you can use as the second argument in `data_gpt`.

Example:
```


### `img_gpt`