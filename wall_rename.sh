#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("Wallpaper_001...Wallpaper00...etc.png"  "Wallpaper_001...Wallpaper00...etc.jpg" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	"file rename" )
		i=1; temp=$(mktemp -p .); for file in *.png
  		do
			echo what is new name?
			read newname
			mv "$file" $temp;
			
			mv $temp $(printf "$newname_%0.3d.png" $i)
			i=$((i + 1))
		done
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
