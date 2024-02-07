if [[ ! -d ~/.asdf ]]; then
  brew install coreutils curl git
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

  echo '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
  echo '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
  . "$HOME/.asdf/asdf.sh"
else
  printf "asdf already installed. skipping\n"
fi
