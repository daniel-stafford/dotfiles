# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export PATH="/Users/danielstafford/scripts/:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/12/bin
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
# Path to your oh-my-zsh installation.
export ZSH="/Users/danielstafford/.oh-my-zsh"
export PATH=${PATH}:/usr/local/mysql/bin/


# colorize man page
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="cobalt2"
ZSH_THEME="agnoster"

# Set fzf installation directory path
export FZF_BASE=/usr/local/opt/fzf/install

# Uncomment the following line to disable fuzzy completion
# export DISABLE_FZF_AUTO_COMPLETION="true"

# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)
# export DISABLE_FZF_KEY_BINDINGS="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm node extract zsh-autosuggestions fzf vi-mode)

source $ZSH/oh-my-zsh.sh

source ~/zsh-z.plugin.zsh
autoload -U compinit && compinit
zstyle ':completion:*' menu select

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zsh="code ~/.zshrc"
alias sz="source ~/.zshrc"
alias ga="git add"
alias gd="git diff"
alias gba="git branch -a"
alias gcb="git checkout -b"
alias gc="git checkout"
alias gm="git merge"
alias g="diff && git add . && git commit"
alias and="&&"
alias gac="git add . && git commit -m"
alias gcm="git commit -m '"
alias gp="git push"
alias gpo="git push origin"
alias gpod="git push origin develop"
alias goph='git push origin head'
alias gpom="git push origin master"
alias gph="git push && git push heroku master"
alias go='git-open'
alias gou='git-open upstream'
alias rm="trash"
alias nrd="npm run dev"
alias nrw="npm run watch"
alias ns="npm start"
alias ni="npm i "
alias sass="npm run sass:watch"
alias upd="git add . && git commit -m 'save before npm update all' && git push && npm-update-all"
alias ys="yarn start"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yr="yarn remove"
alias y="yarn" #same as npm install
alias integ="cd ~/Documents/Integrify"
alias c="code"
alias todo="ag --color-line-number '1;36' --color-path '1;36' --ignore-case --print-long-lines --silent '(?:<!-- *)?(?:#|//|/\*+|<!--|--) *(TODO|FIXME|FIX|BUG|UGLY|HACK|NOTE|IDEA|REVIEW|DEBUG|OPTIMIZE)(?:\([^(]+\))?:?(?!\w)(?: *-->| *\*/|(?= *(?:[^:]//|/\*+|<!--|@|--))|((?: +[^\n@]*?)(?= *(?:[^:]//|/\*+|<!--|@|--))|(?: +[^@\n]+)?))'"
alias nw='npm run watch'
alias nt='npm run watch-test'
alias ftl='cd /Users/danielstafford/Documents/Integrify/Node/ft3-library && code . && mongod --dbpath ~/data/db'
alias pg='open .config/pgcli/'
alias ll='ls -ltra'
alias p='python'
alias pr='pipenv run'
alias pmr='python manage.py runserver'
alias pm='python manage.py'
alias da='django-admim'
alias dasp='django-admim startproject'
alias pe='pipenv'
alias ok='echo $?'
alias b='../'
alias r='cd -'
alias mv='mv -i'
alias p='git pull upstream develop'
alias gpoh='git push origin head'
alias gpuh='git push upstream head'
alias up='git checkout develop && go upstream'
alias kd='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias taa='terraform apply -auto-approve'
alias diff="git difftool head -y"
alias gl=" git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias yd='youtube-dl'

# aincldue z§
#. ~/z.sh

function zle-keymap-select zle-line-init zle-line-finish {
  case $KEYMAP in
    vicmd)      print -n -- "\E]50;CursorShape=0\C-G";; # block cursor
    viins|main) print -n -- "\E]50;CursorShape=1\C-G";; # line cursor
  esac

  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N zle-line-finih
zle -N zle-keymap-select

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    # prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
source /Users/danielstafford/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# .zshrc
# fix Hyper first line precent sign
unsetopt PROMPT_SP

source /Users/danielstafford/Library/Preferences/org.dystroy.broot/launcher/bash/br

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
export ANDROID_SDK=/Users/danielstafford/Library/Android/sdk
export PATH=/Users/danielstafford/Library/Android/sdk/platform-tools:$PATH