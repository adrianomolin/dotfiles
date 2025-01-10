# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Environment variables
# export NODE_ENV="development"

# Aliases
alias zsc="code ~/.zshrc"
alias zs="source ~/.zshrc"
## External storage drivers aliases
alias workspace="/Volumes/T7/dev"
alias ssd="/Volumes/T7"
## M1 stuff
alias mbrew="arch -x86_64 /usr/local/bin/brew"
alias desktop="cd ~/Desktop"

alias dev="cd ~/desktop/dev"
alias resleeve="cd ~/desktop/dev/resleeve/resleeve"

export STARSHIP_CONFIG=~/.config/starship.toml
export STARSHIP_CACHE=~/.starship/cache

# ZSH Variables
export ZSH="/Users/adrianomolin/.oh-my-zsh"
export ZSH_THEME="dracula"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo
export GITHUB_TOKEN="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"

# # ZSH Plugins
plugins=(
  git
  sudo
  web-search
  history
  zsh-completions
  zsh-syntax-highlighting
)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#939393,bold,underline"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export JAVA_HOME=/Library/Java/JavaVirtualMachines/liberica-jdk-19-full.jdk/Contents/Home

# SPACESHIP_PROMPT_ORDER=(
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   exec_time     # Execution time
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )
# SPACESHIP_USER_SHOW=always
# SPACESHIP_PROMPT_ADD_NEWLINE=true
# SPACESHIP_CHAR_SYMBOL="➜"
# SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_PROMPT_ADD_NEWLINE=false

export GPG_TTY=$(tty)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adrianomolin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/adrianomolin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adrianomolin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/adrianomolin/google-cloud-sdk/completion.zsh.inc'; fi


# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export TERMINFO='/usr/share/terminfo/'
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
# pnpm
export PNPM_HOME="/Users/adrianomolin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word 

GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
alias alacritty="/Applications/Alacritty.app/Contents/MacOS/alacritty"
TERM=iterm

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
