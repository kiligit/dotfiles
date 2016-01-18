###
#alias lsn='sort -h <(ls -t)'
alias lt='ls -lht --color=tty| head -n 30 '
alias p='ps -ef |grep -i -v root'
function calc(){ awk "BEGIN{ print $* }" ;}
function x() {xmgrace $* -free &}
function xb() {xmgrace -batch $* -free &}
function k() {kate $* &}
function gv() {gvim $* &}
function ev() {evince $* &}
function mu() {mupdf $* &}
function za() {zathura $* &}
function zrose() {
ssh -Y kilian@rosemarie -t zsh 
#ssh -Y kilian@rosemarie
}
alias AtrA='~/Downloads/Atraci-Angular/build/Atraci/linux64/Atraci &'
alias sapt='sudo apt-get $*'
alias ff='find . -name \*\!:1\* -print'
alias mine='ps aux | grep USER | grep -v grep; ps aux|grep -i kilian |grep -v grep' 
alias diskspace "du -S | sort -n -r |more"
alias -g ONE="| awk '{ print \$1}'"
alias -g G='| grep'
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
alias unissh='ssh -Y kilian@132.187.199.58 -t zsh '
