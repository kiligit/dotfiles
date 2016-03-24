#!/usr/bin/env zsh
#unsetopt sh_word_split
inputstring=$*
#inputfiles=${(j: :)inputfiles} #force join by spaces WRong!
echo first string:$inputstring[1]
inputarray=(${(ps: :)${inputstring}})
echo first array entry:$inputarray[1]
echo number of files ${#inputarray} content:$inputarray
filetype=${inputarray[1]##*\.}
echo filetype of first file $filetype

#for i in $ARRAY; do  is recommended
for ii in $inputarray; do
echo "Current value: $ii"
#echo $inputfiles[ii]
basename=${ii%\.*}
convert -density 256 -depth 8 -quality 100 "$ii" "$basename".png
#Density is very important only use 2^n !!!!!
done
#values=("foo" "bar" "baz")

#for i in $values; do
    #echo "Current value: $i"
#done

#ffmpeg -y -r 10 -pattern_type glob -i ${inputarray[*]//$filetpye/png} test.mp4
#ffmpeg -y -r 10 -i ${inputarray[*]//$filetpye/png} test.mp4

#ffmpeginput=(${inputarray//"$filetype"/png})
#echo $ffmpeginput
#ffmpeg -i $ffmpeginput \
  ##-pix_fmt yuv420p\
  ##-c:v libx264 -crf 22  \
  #-y test.avi
ffmpeg -framerate 1 -i "${basename:0:${#basename}-4}"'%02dfs.png' -y "$basename".avi
#t=${t:0:${#t}-1}
