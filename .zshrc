# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# If automatic updates aren't disabled, the confirmation prompt will not appear, and
# instead Oh My Zsh will update without asking whenever the automatic update expires.
DISABLE_UPDATE_PROMPT=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ssh-agent asdf nvm)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export GOPATH=$HOME/Go
export GO15VENDOREXPERIMENT=1
export CODEPATH="$HOME/Code"
export PATH="$CODEPATH/gitlab.com/coralproject/coral-tools/bin:/usr/local/bin:$HOME/.rbenv/shims:$GOPATH/bin:$HOME/.bin:$HOME/.cargo/bin:$PATH"
export HOMEBREW_BUNDLE_FILE="$HOME/.brewfile"
export HOMEBREW_NO_ANALYTICS=1
export GPG_TTY=$(tty)
export VISUAL=vim
export EDITOR="$VISUAL"

# NVM Configuration.
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Load aliases
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Setup ASDF if it's available.
[ -s "$HOME/.asdf/asdf.sh" ] && . "$HOME/.asdf/asdf.sh"

# The next line updates PATH for the Google Cloud SDK.
[ -s "$HOME/.google-cloud-sdk/path.zsh.inc" ] && . "$HOME/.google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
[ -s "$HOME/.google-cloud-sdk/completion.zsh.inc" ] && . "$HOME/.google-cloud-sdk/completion.zsh.inc"
