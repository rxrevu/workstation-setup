# Don't stop if docker fails
set +e

# Docker
brew install docker
brew install docker-compose

echo "To get docker command-line tools, run the docker application"

# Docker completion
# https://docs.docker.com/desktop/faqs/macfaqs/#how-do-i-install-shell-completion
etc=/Applications/Docker.app/Contents/Resources/etc
# Bash
ln -s $etc/docker.bash-completion "$(brew --prefix)/etc/bash_completion.d/docker"
ln -s $etc/docker-compose.bash-completion "$(brew --prefix)/etc/bash_completion.d/docker-compose"
echo '[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion' >> ~/.bash_profile
# Zsh
ln -s $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
ln -s $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose

set -e
