echo
echo "Installing MySQL Version 5.7"

brew install mysql@5.7 && brew link mysql@5.7 --force
brew services start mysql@5.7
