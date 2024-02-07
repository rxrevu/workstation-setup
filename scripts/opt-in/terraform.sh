echo
echo "Installing Terraform tooling"

brew install tfenv
tfenv install "${DEFAULT_TF_VERSION}"

git clone --depth 1 --branch main https://github.com/tgenv/tgenv.git ~/.tgenv
echo 'export PATH="$HOME/.tgenv/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$HOME/.tgenv/bin:$PATH"' >> ~/.zshrc
export PATH="$HOME/.tgenv/bin:$PATH"
~/.tgenv/bin/tgenv install "$DEFAULT_TG_VERSION"

# shell completion
terraform -install-autocomplete || true
