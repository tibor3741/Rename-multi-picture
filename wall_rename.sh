#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("Wallpaper_001...Wallpaper00...etc.png"  "Wallpaper_001...Wallpaper00...etc.jpg" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	"Wallpaper_001...Wallpaper00...etc.png" )
		i=1; temp=$(mktemp -p .); for file in *.png
  		do
			mv "$file" $temp;
			mv $temp $(printf "Wallpaper_%0.3d.png" $i)
			i=$((i + 1))
		done
            ;;

    "Wallpaper_001...Wallpaper00...etc.jpg")


        	i=1; temp=$(mktemp -p .); for file in *.jpg
		do
			mv "$file" $temp;
			mv $temp $(printf "Wallpaper_%0.3d.jpg" $i)
			i=$((i + 1))
		done
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done




#!/bin/sh
i=47; temp=$(mktemp -p .); for file in *.jpg
do
mv "$file" $temp;
mv $temp $(printf "wallpaper_%0.3d.png" $i)
i=$((i + 1))
done
