# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nicoulaj"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux taskwarrior autojump zsh-syntax-highlighting)

# User configuration

export PATH=$HOME/scripts:$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export GPGKEY=7D9D16BE

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="$EDITOR ~/.zshrc"
alias vimconfig="$EDITOR ~/.vimrc"
alias fishconfig="$EDITOR ~/.config/fish/config.fish"
alias i3config="$EDITOR ~/.config/i3/config"
alias rangerconfig="$EDITOR ~/.config/ranger/rc.conf"
# ubuntu aliases
# alias AddRepo="sudo add-apt-repository -y"
# alias RemoveRepo="sudo add-apt-repository --remove"
# alias Install="sudo apt-get install -y"
# alias Remove="sudo apt-get remove"
# alias RemoveAll="sudo apt-get remove --purge"
# alias Autoremove="sudo apt-get autoremove"
# alias Update="sudo apt-get update -y"
# alias Upgrade="sudo apt-get upgrade -y"
alias Notify="notify-send 'Comando terminado' 'El comando introducido ha terminado de realizarse.'"
alias :q="exit"
# server aliases
# alias ServerUp="sudo /opt/lampp/lampp start"
# alias ServerDown="sudo /opt/lampp/lampp stop"
alias pacman="sudo pacman"
alias xresconfig="$EDITOR ~/.Xresources"
alias xresup="xrdb ~/.Xresources"
alias Actualizar="packer -Sygu --nocgonfirm --noedit"
alias SteamArreglar='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
# alias fuck="$(thefuck $(fc -ln -1))"
alias linda="echo YaizaNovia"

alias da="dt -a"
compctl -k "($(cat ~/.config/dt/db.csv | cut -d "|" -f 2 | sed 's/ \+/\-/g' | sed 's/,/;/g' | sed 's/(/\\(/g' | sed 's/)/\\)/g'))" dt
alias damemucks="./Documentos/Syncthing/Yaiza/scripts/damemucks | lolcat"
