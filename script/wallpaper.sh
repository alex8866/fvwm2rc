#!/bin/bash
echo $0;
[ -d $[HOME]/.thumbs ] || mkdir $[HOME]/.thumbs
for pic in `find $[HOME]/* -exec basename {} .jpg \;`; do
    [ -f $[HOME]/.thumbs/$pic.png ] || convert -quality 0 -resize 48 $[HOME]/$pic.jpg $[HOME]/.thumbs/$pic.png
    echo "+ %$[HOME]/.thumbs/$pic.png%\"$pic\" exec exec \`ln -sf $[HOME]/$pic.jpg $[HOME]/.current && Esetroot -scale $[HOME]/$pic.jpg\`"
done
