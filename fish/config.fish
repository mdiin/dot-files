function fish_title
    true
end

set -x EDITOR (which nvim)
set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH /opt/homebrew/bin
set -x PATH $PATH $ANDROID_HOME/cmdline-tools/tools/bin
set -x PATH $PATH $ANDROID_HOME/platform-tools
set -x PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/emulator
set -x PATH $PATH $HOME/Programmer/Tmuxifier/bin $HOME/Programmer/Leiningen $HOME/Programmer/Boot $HOME/Programmer/git-madge
set -x PATH $PATH $HOME/.local/bin
set -x GITHUB_ACCESS_TOKEN 1172ec0c1a233e1e75e68339943c0dfa5fb6b4c1
set -x MYVIMRC $HOME/.config/nvim/init.vim

# nvm use default --silent
