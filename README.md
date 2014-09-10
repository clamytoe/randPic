randPic
=======

Download a random wallpaper from wallhaven.cc

I use this mainly to change my wallpaper every morning. I used to use it on wallbase.cc, but since that site went offline, I've reworked the script to work on this site instead. I'm using this on Linux Mint 17, it should work on ther distros as well though.

setup
=====
1. Create a ~/bin, 'mkdir ~/bin', directory in your home folder if you don't already have one.
2. Place the scripts in there and 'chmod +x' them to make them executable.
3. Run the randPic script.
4. Navigate to ~/Pictures.
5. If it's a jpg image, you should be able to see a thumbnail of the image. If you do, proceed otherwise run the script once gain until you get a jpg.
6. Double-click the image to open it with Image Viewer or whatever your default image viewer might be.
7. Select Image->Set as wallpaper or Ctrl+F8
8. Close the image.

The next time that you run the script, it will update your background image automatically, even if the image happens to be a png.

keep images
===========
If you happen upon an awesome image that you want to keep, simply run the keepWall script to save it.

NOTE
====
Each time you run the randPic script, your current wallpaper.jpg image will be overwritten. If you want to keep it, make sure to run keepWall first!
