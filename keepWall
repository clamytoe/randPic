#!/bin/sh
# Version: 1.0
# Description: Script to backup any wallpaper images that you want to keep

# Generate a timestamp
rightNow=$(date +%y%h%d_%H%M)

# Name of image
img="wallpaper_$rightNow.jpg"

# Directory to save the images to
folder="wallpaper"

# Construct the path for the images
imgDir="$HOME/Pictures"
archive="$imgDir/$folder/$img"

# Command to save the image
saveImage="cp $imgDir/wallpaper.jpg $archive"

# Confirmation message
msg="$img saved"

# Copy the wallpaer image to archive folder
if [ -d "$imgDir/$folder" ]
then
    $saveImage
    echo $msg
else
    mkdir -p "$imgDir/$folder"
    $saveImage
    echo $msg
fi
