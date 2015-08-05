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

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
	if [[ -d ~/gnuplot/ ]]; then source ~/gnuplot/; fi
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
(wtch058)
xset b off
xset r rate 200 40;;
(*)   echo "I am on $HOST";;
esac
#disable beep sound

# Example aliases
# echo ~/.bash_aliases
    if [[ -f .zsh_aliases ]] then
    source ~/.zsh_aliases
    fi

#ALIASES
###
#alias lsn='sort -h <(ls -t)'
alias lt='ls -lht | head -n 20'
alias p='ps -ef |grep -i -v root'
function x() {xmgrace $* &}
function k() {kate $* &}
function gv() {gvim $* &}
function ev() {evince $* &}
function mu() {mupdf $* &}
function za() {zathura $* &}
function zrose() {
#ssh -Y kilian@rosemarie -t zsh "PWD; cd ~/fortran/; ls $PWD"
#eval "vagrant ssh  \"cd /vagrant && $@\""
ssh -Y kilian@rosemarie
ls $PWD}
alias AtrA='~/Downloads/Atraci-Angular/build/Atraci/linux64/Atraci &'
alias sapt='sudo apt-get $*'
alias ff='find . -name \*\!:1\* -print'
alias mine='ps aux | grep USER | grep -v grep; ps aux|grep -i kilian |grep -v grep' 
alias diskspace "du -S | sort -n -r |more"
alias -g ONE="| awk '{ print \$1}'"
alias -g G='| grep'
alias -g M='| less'
alias -g LgLmb='~/Dissdata/LambertData/*00*ps*  -world 0.01, 0, 2000, 1.1 -free -log x'
alias -g LgBrx='~/Dissdata/CristinaData/NEWB00_21.6nJps.dat  ~/Dissdata/CristinaData/NEWB00_16.2nJps.dat  ~/Dissdata/CristinaData/NEWB00_10.8nJps.dat  ~/Dissdata/CristinaData/NEWB00_5.4nJps.dat  -world 0.01, 0, 2000, 1.1 -free -log x'
alias -g LgBRe='~/Dissdata/CristinaData/B00Renorm30fs_21.6nJps.dat  ~/Dissdata/CristinaData/B00Renorm30fs_16.2nJps.dat  ~/Dissdata/CristinaData/B00Renorm30fs_10.8nJps.dat  ~/Dissdata/CristinaData/B00Renorm30fs_5.4nJps.dat  -world 0.01, 0, 2000, 1.1 -free -log x'

#ssh sync stuff
#alias diskspace="du -S | sort -n -r |more"
alias mendeley="python /home/kilian/Apps/mendeleydesktop-1.11-linux-x86_64/bin/mendeleydesktop  &"
alias molden='~/Downloads/molden5.0/molden  &'
alias q='squeue -a'
alias lates='latexmk -silent'
function gitbund() {git bundle create $* master}
#rsync aliases
alias syncSea='rsync -az ~/ /media/kilian/Seagate\ Backup\ Plus\ Drive/myunihome/'
alias syncFree='rsync -avz ~/Dokumente/ /media/kilian/FreeAgent\ Drive/Dokumente/'

# DIs shit doesn work...
#*MCTDH*A***********************************************************************
# Following lines written by install_mctdh.  Thu Mar 19 15:58:06 CET 2015
# if [[ -d ~/Downloads/mctdh85.2.2]] then
#source ~/.profile
# MCTDH_DIR=/home/kilian/Downloads/mctdh85.2.2
# export MCTDH_DIR
# source /home/kilian/Downloads/mctdh85.2.2/install/mctdh.profile
# if [ -f ~/.mctdhrc ] ; then . ~/.mctdhrc ; fi
# export MCTDH_DIR=/Downloads/mctdh85.2.2
# . $MCTDH_DIR/install/mctdh.profile
# if [ -f ~/.mctdhrc ] && [ -t 0 ] ; then . ~/.mctdhrc ; fi
# fi
#*MCTDH*B***********************************************************************
#enable zsh mv command
autoload -U zmv
alias mmv='noglob zmv -W'
