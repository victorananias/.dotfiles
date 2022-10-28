export ZSH="$HOME/.oh-my-zsh"
export ZSH_CONFIG="$HOME/zsh-config"

ZSH_THEME="spaceship"

plugins=(
  zsh-autosuggestions
  colored-man-pages
  colorize
  zsh-syntax-highlighting
  sudo
  web-search
  copypath
  copyfile
  copybuffer
  dirhistory
  jsontools
  macos
)

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# source custom
for f in ~/custom/*; do source $f; done
