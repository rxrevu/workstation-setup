#!/usr/bin/env bash

echo
echo "Installing Ruby tools and Ruby"
cp files/.irbrc ~/.irbrc
brew install readline

# Install ruby-install and use it to update to the desired Ruby version
ruby_version="$DEFAULT_RUBY_VERSION"

brew install ruby-install

if ! [[ $(ls ~/.rubies) == *"${ruby_version}"* ]]; then
  echo "Installing Ruby ${ruby_version}"
  ruby-install "ruby-${ruby_version}"
else
  echo "Ruby ${ruby_version} already installed"
fi

brew install chruby
{
  printf "%s\\n" "# Chruby Setup"
  printf "%s\\n" "source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh"
  printf "%s\\n" "source $(brew --prefix)/opt/chruby/share/chruby/auto.sh" 
} >> ~/.zprofile

# Bundler configuration for native gems requiring brewed libraries
gem install bundler
bundle config set --global build.eventmachine "--with-cppflags=-I$(brew --prefix)/opt/openssl/include"

# Install license_finder- finds dependencies and detects the licenses of the packages in them
gem install license_finder

# guard against pre-installed rubymine
brew install --cask rubymine --force

source "${WORKSTATION_SETUP_HOME}/scripts/common/download-pivotal-ide-prefs.sh"
pushd ./jetbrains-ide-prefs
./cli/bin/ide_prefs install --ide=rubymine
popd
