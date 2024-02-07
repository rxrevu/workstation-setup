
echo
echo "Installing lefthook"

if ! command -v lefthook > /dev/null; then
  brew install lefthook
else
  echo "lefthook already installed"
fi
