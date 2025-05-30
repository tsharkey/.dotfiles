# load zshrc
. $HOME/.zshrc

# Only run brew shellenv if on an ARM Mac
if [ "$(uname -m)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv )"
fi
