#!/usr/bin/env zsh
echo 'prints a pdf to file, single pageswise, $1 is the filename to print, $2 number of pages'
echo 'lpr removes all dots from file name!'
currentdir=$PWD
inputpdf=$1
pageno=$2

filetype=${inputpdf##*\.}
basename=${inputpdf%\.*}
#vim -n -u NONE --noplugin -X -c':norm:g/%%Title:f:c$: dummy' -c':wq' $inputpdf
#change titel in .eps. title is used by lpr to define the outputname
echo basename=$basename, filetype=$filetype
outnodot=${basename:gs/./_/}'.pdf'
echo 'inputpdf='$inputpdf
#echo not dots:$outnodot
for ((ii=1; ii<=$pageno;ii++));
do
echo pintloop, pagenumber=$(printf "%0*d" 2 $ii)
echo ":g/%%Title:f:c$: $basename"$(printf "%0*d" 2 $ii)'fs:wq'> tmpvimfile
#echo ":g/%%Title:f:c$: $basename$ii"'fs:wq' > tmpvimfile
vim -n -u NONE --noplugin -X -s tmpvimfile $inputpdf
#sed -i "s/Title: dummy/Title: $basename$ii.pdf/g" $inputpdf
lpr -P PDF -o page-ranges="$ii" -o fit-to-page -o landscape "$inputpdf"
#sed -i "s/Title: $basename$ii.pdf/Title: dummy/g" $inputpdf
#cd ~/PDF
#ls $outnodot
#mv $outnodot "$basename$ii"'.pdf'
#cd $currentdir
done
