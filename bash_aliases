#LINUX: sudo -s to allow aliases with sudo!
alias sd='sudo'
alias ksu='kdesudo'
alias bye='logout'
alias t='tail'
## color stuff
alias ll='ls -laFh --color \!* | less '
alias l='ls -laFh --color \!* | less '
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
   alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
#alias p 'ps aux |grep -i -v root'
alias p='ps -ef |grep -i -v root'
alias k='kate \!:* &'
alias x='xmgrace \!:* &'
alias k='kate \!:* &'
alias gvi='gvim \!:* &'
alias ff='find . -name \*\!:1\* -print'
alias mine='ps aux | grep USER | grep -v grep; ps aux|grep -i kilian |grep -v grep' 
alias diskspace="du -S | sort -n -r |more"
#ssh sync stuff
alias zappa='ssh -Y kilian@132.187.199.31'
#alias synchronisieren 'rsync -avzu -e ssh rkritzer.local@wpc1067:~/Private/ ~/Private/'
#alias backup= 'rsync -avzu -e ssh rkritzer.local@wpc1067:~/ /media/asjdfajsdf/'
alias G='grep --color \!:*'
alias -g ONE="| awk '{ print \$1}'"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

