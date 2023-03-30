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
`hey_gpt`(or if you're using the alias `heyz`) is useful for general queries.  Takes a single argument and gives a response.

```
heyz "what is america's finest city"

I am an AI language model and do not have personal preferences or opinions. However, San Diego in California is often referred to as America's Finest City due to its beautiful weather, beaches, parks, and attractions.
```

### `data_gpt`
`data_gpt` (or if you're using the alias `datz`) takes two args:
- `prompt`: A prompt to give ChatGPT
- `data`: A datasource to exercise the prompt against.  

A common use case is to write the output from the `hey_gpt` command to a flat file that you can use as the second argument in `data_gpt`.

### `img_gpt`
`img_gpt` (or if you're using the alias `imgz`) takes a prompt and generates an image.  `@TODO` pass more args to fine tune the model.

Example:
```
imgz 'create a picture of cats in space having a battle with lasers'
```

[You're welcome](https://oaidalleapiprodscus.blob.core.windows.net/private/org-1HvK6ShhD9VIkNiFC8HpMXdO/user-02NvfXvZi9XSAR63CyltGenb/img-Xb3p06uwrcHJA7V9VLmyyspC.png?st=2023-03-29T23%3A52%3A15Z&se=2023-03-30T01%3A52%3A15Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-03-29T13%3A49%3A22Z&ske=2023-03-30T13%3A49%3A22Z&sks=b&skv=2021-08-06&sig=GmmcYszgQ5vS%2BAeJv4SY6cSSRV5%2BN6ViE5WrHHKpQnE%3D)
