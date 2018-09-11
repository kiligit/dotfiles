#color definitions
LF="\n"; CR="\r"
INVT="\033[7m"; NORM="\033[0m"; BOLD="\033[1m"; BLINK="\033[5m"
UNDR="\033[2m\033[4m"; EOL="\033[0K"; EOD="\033[0J"
UNDR="\033[4m"; EOL="\033[0K"; EOD="\033[0J"
SOD="\033[1;1f"; CUR_UP="\033[1A"; CUR_DN="\033[1B"; CUR_LEFT="\033[1D"
CUR_RIGHT="\033[1C"
##-- ANSI code
SCR_HOME="\033[0;0H" #-- Home of the display
BLACK_F="\033[30m"; BLACK_B="\033[40m"
RED_F="\033[31m"; RED_B="\033[41m"
GREEN_F="\033[32m"; GREEN_B="\033[42m"
YELLOW_F="\033[33m"; YELLOW_B="\033[43m"
BLUE_F="\033[34m"; BLUE_B="\033[44m"
MAGENTA_F="\033[35m"; MAGENTA_B="\033[45m"
CYAN_F="\033[36m"; CYAN_B="\033[46m"
WHITE_F="\033[37m"; WHITE_B="\033[47m"
#
##perbility alias
alias devclear='~/www/current/app/console --domain=dev.helix.localhost cache:clear'
alias confclear='~/www/current/app/console --domain=config.helix.localhost cache:clear'
alias custclear='~/www/current/app/console --domain=custom.helix.localhost cache:clear'
function flexclear() {
~/www/current/app/console --domain=$1.helix.localhost cache:clear
}
alias devbestp='~/www/current/app/console --domain=dev.helix.localhost helix:best-practices:update'
alias confbestp='~/www/current/app/console --domain=config.helix.localhost helix:best-practices:update'
alias custbestp='~/www/current/app/console --domain=custom.helix.localhost helix:best-practices:update'
function flexbestp() {
~/www/current/app/console --domain=$1.helix.localhost helix:best-practices:update
}
function flexflex() {
~/www/current/app/console --domain=$1.helix.localhost $2 $3
}
###
#alias lsn='sort -h <(ls -t)'
alias lt='ls -lht --color=tty| head -n 20 '
alias lsd="ls -lht | grep '^d'"
alias p='ps -ef |grep -i -v root'
#perbility. clear all
function clearall() {
custclear
custbestp
flexflex custom helix:virtual-fields:recalculate
echo "${BOLD}cache clear, BP-Update, virtual-fields recalculate done @ $(date +%d.%m.%y) ${YELLOW_F}$(date +%H:%M:%S)"
}
function cdL() {
if [[ -z $1 ]] ; then
latest_directory=(./*(/om[1])); latest_directory=$~latest_directory
else
latest_directory=(./*(/om["$1"])); latest_directory=$~latest_directory
fi
cd $latest_directory
}

function cdLL() {
latest_directory=(./*(/om[1])); latest_directory=$~latest_directory
cd $latest_directory
latest_directory=(./*(/om[1])); latest_directory=$~latest_directory
cd $latest_directory
}

function cdLLL() {
latest_directory=(./*(/om[1])); latest_directory=$~latest_directory
cd $latest_directory
latest_directory=(./*(/om[1])); latest_directory=$~latest_directory
cd $latest_directory
latest_directory=(./*(/om[1])); latest_directory=$~latest_directory
cd $latest_directory
}

#function vod2vid(){
#ffmpeg -y -ss $1 -i $(livestreamer --stream-url $2 best) -bsf:a aac_adtstoasc -c:a libmp3lame -c:v copy -c:a copy -avoid_negative_ts 1 video.mp4
#;}
function calc(){ awk "BEGIN{ print $* }" ;}
function x() {xmgrace $* -free &}
function xb() {xmgrace -batch $* -free &}
function k() {kate $* &}
function gv() {gvim -p $* &}
function vimp() {vim -p $* }
function ev() {evince $* &}
function mu() {mupdf $* &}
function za() {zathura $* &}
function fixbb() {~/Dokumente/fixbbox.sh $*}
function zrose() {
ssh -Y kilian@rosemarie -t zsh 
#ssh -Y kilian@rosemarie
}
alias ytdl='~/.linuxbrew/Cellar/youtube-dl/2017.06.18/bin/youtube-dl'
function voddl(){
ytdl $1  -o $2 -f '720p30' --external-downloader aria2c --external-downloader-args "-x 16"
;}
alias sapt='sudo apt-get $*'
alias ff='find . -name \*\!:1\* -print'
alias mine='ps aux | grep USER | grep -v grep; ps aux|grep -i kilian |grep -v grep' 
alias diskspace "du -S | sort -n -r |more"
alias -g ONE="| awk '{ print \$1}'"
alias -g G='| grep'
alias -g H='| head -n'
alias -g T='| tail -n'
alias -g M='| less'
alias -g LgLmb='~/Dissdata/LambertData/Decay*00*ps*  -world 0.01, 0, 2000, 1.1 -free -log x -legend load -pexec "legend loctype world" -pexec "legend 0.01,1.37" -pexec "LEGEND CHAR SIZE 0.5"'
alias -g LgLgL='~/Dissdata/LambertData/Decay*00*ps*  -world 0.01, 0.1, 2000, 1.1 -free -log x -log y'
alias -g LgBrx='~/Dissdata/CristinaData/NEWB00_21.6nJps.dat  ~/Dissdata/CristinaData/NEWB00_16.2nJps.dat  ~/Dissdata/CristinaData/NEWB00_10.8nJps.dat  ~/Dissdata/CristinaData/NEWB00_5.4nJps.dat  -world 0.01, 0, 2000, 1.1 -free -log x -legend load -pexec "legend loctype world" -pexec "legend 0.01,1.37" -pexec "LEGEND CHAR SIZE 0.5"'
alias -g LgBRe='~/Dissdata/CristinaData/B00Renorm30fs_21.6nJps.dat  ~/Dissdata/CristinaData/B00Renorm30fs_16.2nJps.dat  ~/Dissdata/CristinaData/B00Renorm30fs_10.8nJps.dat  ~/Dissdata/CristinaData/B00Renorm30fs_5.4nJps.dat  -world 0.01, 0, 2000, 1.1 -free -log x -legend load -pexec "legend loctype world" -pexec "legend 0.01,1.37" -pexec "LEGEND CHAR SIZE 0.5"'
function rsyncto58() {rsync -avz $1 kilian@132.187.199.58:/home/kilian/$2}
function rsyncfrom58() {rsync -avz kilian@132.187.199.58:/home/kilian/$1 $2}
#ssh sync stuff
#alias diskspace="du -S | sort -n -r |more"
alias mendeley="python /home/kilian/Apps/mendeleydesktop-1.11-linux-x86_64/bin/mendeleydesktop  &"
alias molden='~/Downloads/molden5.0/molden  &'
alias q='squeue -o "%.7i %.6P %.50j %.8u %.2t %.10M %.9l %.3D %R"'
alias lates='latexmk -silent'
function gitbunddaheim() {git bundle create ~/Dokumente/daheim.bundle ^unihome/master --branches --tags}
function gitbunduni() {git bundle create ~/Dokumente/unihome.bundle ^daheim/master --branches --tags}
#rsync aliases
alias syncSea='rsync -az ~/ /media/kilian/Seagate\ Backup\ Plus\ Drive/myunihome/'
alias syncFree='rsync -avz ~/Dokumente/ /media/kilian/FreeAgent\ Drive/Dokumente/'
alias unissh='ssh -Y kilian@132.187.199.56 -t zsh '
alias uni30ssh='ssh -Y kilian@132.187.199.30 -t zsh '
alias showM='showsys84'
alias cdM='cd ~/MCTDH/'

function pdfcomp(){
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1
}
#extract any archive. FROM zshwiki
function extract_archive () {
    local old_dirs current_dirs lower
    lower=${(L)1}
    old_dirs=( *(N/) )
    if [[ $lower == *.tar.gz || $lower == *.tgz ]]; then
        tar zxfv $1
    elif [[ $lower == *.gz ]]; then
        gunzip $1
    elif [[ $lower == *.tar.bz2 || $lower == *.tbz ]]; then
        bunzip2 -c $1 | tar xfv -
    elif [[ $lower == *.bz2 ]]; then
        bunzip2 $1
    elif [[ $lower == *.zip ]]; then
        unzip $1
    elif [[ $lower == *.rar ]]; then
        unrar e $1
    elif [[ $lower == *.tar ]]; then
        tar xfv $1
    elif [[ $lower == *.lha ]]; then
        lha e $1
    else
        print "Unknown archive type: $1"
        return 1
    fi
    # Change in to the newly created directory, and
    # list the directory contents, if there is one.
    current_dirs=( *(N/) )
    for i in {1..${#current_dirs}}; do
        if [[ $current_dirs[$i] != $old_dirs[$i] ]]; then
            cd $current_dirs[$i]
            ls
            break
        fi
    done
}

 alias ex=extract_archive
#compdef '_files -g "*.gz *.tgz *.bz2 *.tbz *.zip *.rar *.tar *.lha"' extract_archiv
