echo
echo "Installing most recent version of NodeJS"

brew install fnm
fnm completions --shell zsh
echo 'eval "$(fnm env --use-on-cd)"' >> ~/.zshrc
fnm install --lts

