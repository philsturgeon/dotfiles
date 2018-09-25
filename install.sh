git --version && \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && \
brew tap thoughtbot/formulae
brew install rcm && \
env RCRC=$HOME/dotfiles/rcrc rcup

