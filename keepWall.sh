#!/bin/sh
# Version: 2.0
# Description: Script to backup any wallpaper images that you want to keep

# Generate a timestamp
rightNow=$(date +%y%h%d_%H%M)

# Directory where the image is stored
imgDir="$HOME/Pictures"

# Directory to save the images to
folder="wallpaper"

# figure out what extension to use
ext=".jpg"
type=$(file $imgDir/wallpaper.jpg | awk '{print $2}')
if [ "$type" = "PNG" ]
then
    ext=".png"
fi

# Name of image
img="wallpaper_$rightNow$ext"

# Construct the path for the images
archive="$imgDir/$folder/$img"

# Command to save the image
saveImage="cp $imgDir/wallpaper.jpg $archive"

# Confirmation message
msg="$img saved"

# Copy the wallpaper image to archive folder
if [ -d "$imgDir/$folder" ]
then
    $saveImage
    echo $msg
else
    mkdir -p "$imgDir/$folder"
    $saveImage
    echo $msg
fi
