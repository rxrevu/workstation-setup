if [ ! -d ./jetbrains-ide-prefs ]; then
    echo
    echo "Downloading Pivotal IDE preferences"
    git clone https://github.com/professor/jetbrains-ide-prefs.git
fi
