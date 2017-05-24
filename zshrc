# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kili"

export SHELL=/bin/zsh
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
#plugins=(git)
plugins=(git history-substring-search.zsh)

#*MCTDH*A***********************************************************************
# Following lines written by install_mctdh.  Thu Mar 19 15:58:06 CET 2015
if [ -d ~/Downloads/mctdh84.11 ]; then
export MCTDH_DIR="$HOME/Downloads/mctdh84.11"
   # correct ZSH-syntax=   export PATH="$HOME/bin:$PATH"
source $MCTDH_DIR/install/mctdh.profile
#copied $PATH from bash... seems to work
#$HOME/Downloads/mctdh84.11/bin/binary/x86_64:$HOME/Downloads/mctdh84.11/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/local/sbin:/opt/bin:/apps/thread-checker/3.1/tcheck/bin/32:/opt/mctdh/84.7:/opt/mctdh/84.7/bin:/opt/mctdh/84.7/bin/x86_64
export PATH="$HOME/Downloads/mctdh84.11/bin/binary/x86_64:$HOME/Downloads/mctdh84.11/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/local/sbin:/opt/bin:/apps/thread-checker/3.1/tcheck/bin/32:/opt/mctdh/84.7:/opt/mctdh/84.7/bin:/opt/mctdh/84.7/bin/x86_64:$PATH"
fi
if [ -f $HOME/.mctdhrc ] && [ -t 0 ] ; then . $HOME/.mctdhrc ; fi
#*MCTDH*B***********************************************************************
# User configuration
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "/usr/local/bin:" ] ; then
    export PATH="/usr/local/bin:$PATH"
fi

if [ -d "/usr/sbin/:" ] ; then
    export PATH="/usr/sbin:$PATH"
fi
if [ -d "/scratch/bin" ] ; then
    export PATH="/scratch/bin:$PATH"
fi

if [ -d "/usr/local/texlive/2015/bin/x86_64-linux" ] ; then
    export PATH="/usr/local/texlive/2015/bin/x86_64-linux:$PATH"
fi
if [ -d "/usr/local/texlive/2015/texmf-dist/doc/info" ] ; then
    export INFOPATH="/usr/local/texlive/2015/texmf-dist/doc/info:$INFOPATH"
fi
if [ -d "/usr/local/texlive/2015/texmf-dist/doc/man" ] ; then
    export MANPATH="/usr/local/texlive/2015/texmf-dist/doc/man:$MANPATH"
fi
#if [ -d "~/Downloads/node-v6.9.5-linux-x64/bin/" ] ; then
    #export PATH="~/Downloads/node-v6.9.5-linux-x64/bin/:$PATH"
#fi


source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#if [[ -d ~/Downloads/gnuplot-5.0.4/ ]]; then source ~/Downloads/gnuplot-5.0.4/; fi
	if [[ -d ~/qtplot/ ]]; then source ~/gtplot/ ]]; fi
    if [[ -d ~/Downloads/jpgfdraw-0.5.6b/bin/ ]]; then source ~/Downloads/jpgfdraw-0.5.6b/bin/; fi
	if [[ -d ~/Apps/ ]] ; then source ~/Apps/; fi
	if [[ -d ~/Dokumente/Disstex  ]]; then source ~/Dokumente/Disstex; fi
	if [[ -d ~/scratch/  ]]; then source ~/scratch/;  fi
if [[ -d ~/Downloads/Atraci-Angular/build/Atraci/linux64/ ]]; then source ~/Downloads/Atraci-Angular/build/Atraci/linux64/; fi

#if [ $HOST == "wtch028" ]; then
#if [[ "$HOST" = wtch058]] then
#fi
case $HOST in
(wtch056)
xset b off
xset r rate 200 40;;
(*)   echo "I am on $HOST";;
esac
#disable beep sound
# Example aliases
# echo ~/.bash_aliases
    if [[ -f .zsh_aliases ]]; then
    source ~/.zsh_aliases
    fi
#ALIASES and functions are in ~/.zshenv

#enable zsh mv command
autoload -U zmv
alias mmv='noglob zmv -W'
bindkey -s "\e[25~" ""
