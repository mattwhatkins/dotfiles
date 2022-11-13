# ===== First run install =====
PLUGIN_DIR="$HOME/.oh-my-zsh/custom/plugins/"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Downloading oh-my-zsh"
  git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

if [ ! -d "$PLUGIN_DIR/zsh-autosuggestions" ]; then
  echo "Downloading zsh-autosuggestions"
  git clone https://github.com/zsh-users/zsh-autosuggestions $PLUGIN_DIR/zsh-autosuggestions
fi

if [ ! -d "$PLUGIN_DIR/zsh-syntax-highlighting" ]; then
  echo "Downloading zsh-syntax-highlighting"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGIN_DIR/zsh-syntax-highlighting
fi

if [ ! -d "$PLUGIN_DIR/zsh-completions" ]; then
  echo "Downloading zsh-completions"
  git clone https://github.com/zsh-users/zsh-completions $PLUGIN_DIR/zsh-completions
fi

if [ ! -f "$HOME/.oh-my-zsh/themes/simple-modified.zsh-theme" ]; then
  echo "Moving simple-modified.zsh-theme"
  if [ ! -f "$HOME/.zsh/themes/simple-modified.zsh-theme" ]; then
  	echo "[!] Can't find theme file: $HOME/.zsh/themes/simple-modified.zsh-theme"
  fi
  cp "$HOME/.zsh/themes/simple-modified.zsh-theme" "$HOME/.oh-my-zsh/themes/simple-modified.zsh-theme"
fi

# Set Screenshots location in MacOS
if [ ! -d "$HOME/Screenshots" ]; then
  mkdir "$HOME/Screenshots"
  defaults write com.apple.screencapture location $HOME/Screenshots
  killall SystemUIServer
fi
# ===== End first run install =====

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple-modified"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  virtualenv
  zsh-completions
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# Aliases
alias history="history 1"

source $ZSH/oh-my-zsh.sh
