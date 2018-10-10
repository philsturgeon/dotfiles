/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
brew tap thoughtbot/formulae && \
brew install rcm && \
env RCRC=$HOME/dotfiles/rcrc rcup

