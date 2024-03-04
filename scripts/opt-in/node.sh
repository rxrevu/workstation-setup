echo
echo "Installing most recent version of NodeJS"

brew install fnm
mkdir ~/.oh-my-zsh/completions
fnm completions --shell zsh > ~/.oh-my-zsh/completions/_fnm
echo 'eval "$(fnm env --use-on-cd)"' >> ~/.zshrc
fnm install --lts

