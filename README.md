<a name="about"></a>
# randPic 2.0.2

Download a random pictures from [wallhaven.cc](http://alpha.wallhaven.cc/).

I use this mainly to change my wallpaper every morning. I used to use it on wallbase.cc, but since that site went offline, I've reworked the script to work on this site instead. I'm using this on Linux Mint 17 but it should work on any other distro as well.

Its a shell script that utilizes curl along with other common unix/linux tools.

Version: 2.0.2 - Updated: 4th of January 2017

Noticed that I had neglected to change the last curl command to use https instead of http. The site switched to using secure connections, so this will get rid of any errors that move might have introduced.

Version: 2.0.1 - Released: 10th of September 2014

This version works just like the previous one. I just cleaned up the code a bit and used more variables instead of using string literals in the code to facilitate future modifications, if any.

# Index

- [About](#about)
- [Setup](#setup)
- [Saving](#saving)
- [Features](#features)
- [Example](#example)
- [Bugs](#bugs)
- [License](#license)

<a name="setup"></a>
## Setup

* Create a ~/bin, `mkdir ~/bin`, directory in your home folder if you don't already have one.
* Place the scripts in there and `chmod +x` them to make them executable.
* Run the `./randPic.sh` script. A `wallpaper.jpg` image will be saved in your `~/Pictures` directory.
* Navigate to `~/Pictures` with your file manager.
* If the image that was download, is a jpg image, you should be able to see a thumbnail of the image. If it is proceed; otherwise run the script once gain until you get a jpg.
* `Double-click` the image to open it with `Image Viewer` or whatever your default image viewer might be. A jpg image will open up without any problems. A PNG file that has been saved with the jpg extension will not.
* Select `Image->Set as wallpaper` or `Ctrl+F8`.
* Close the image.

The next time that you run the script, it will update your background image automatically, even if the image happens to be a png.

<a name="saving"></a>
## Saving Images

If you happen upon an awesome image that you want to keep, simply run the `./keepWall.sh` script to save it. The image will be named `wallpaper_TIMESTAMP.jpg` or `wallpaper_TIMESTAMP.png` in the `~/Pictures/wallpapers` directory.

NOTE
====
Each time you run the `randPic` script, your current `~/Pictures/wallpaper.jpg` image will be overwritten. If you want to keep it, make sure to run `keepWall` first!

<a name="features"></a>
## Features

The script is filled with detailed explanation of the different options that can be used to generate the random images with. Simply edit the field as instructed in the comments.

**img**

The `img` variable holds the default name of the image that you want to save in the designated directory. By default, that is set to `~/Pictures`.

`img="wallpaper.jpg"`

**imgFolder**

The `imgFolder` variable holds the value for the location of where to save the image. As stated in the `img` variable description, the default is set to `~/Pictures`. Your home directory is determined with the `$HOME` environment variable. If it's not set, simply provide the full path to the directory where you want your images to be saved. 

`imgFolder="$HOME/Pictures"`

**res**

The `res` variable is not used by default, but is there in case you want to use it. It holds the value for the resolution that you want to retrieve. The many values that are available are documented in the comments of the code. Here's an example setting:

`res=1366x768`

**purity**

The `purity` variable holds the value for the "purity" of the images that are retrieved. It has options for Safe For Work (SWF), Skethcy, or a good mix of both. The comments explain the values a little better.

`purity=100`

**categories**

The `categories` variable as the name implies, holds the value for the categories from which you want the images to be pulled from. The options range between General, Manga/Anime, to People. As with the `purity` setting, the values can be combined.

`categories=111`

**aspect**

The `aspect` varialbe sets the preferred aspect ration of the images. I did not include this in the code to actually be used... I should add it or remove it completely. As with the previous two variables, the values can be combined. If left off, you get a mix of them all, which has worked for me.

`aspect=4x3,48,9`

**site**

The `site` variable holds the domain name for our generous host that is providing the images for us. Visit them please. Since the script is specifically coded to work with the html code of [wallhaven](http://alpha.wallhaven.cc/) changing this value will effectively break the script, so don't do it. The site is in alpha, so the code could change at any time. When it does, I'll make sure to update my script.


**all others**

The rest of the variables should be left as is. They are for the actual code to use, so editing them is not necessary. Doing so might actually break the script.

<a name="example"></a>
## Example

Once you've installed the script as specified above in the [Setup](#setup) section, the script can be ran from anywhere because the `~/bin` directory is in your path. The scripts are ran from the command shell or from any link that you might have created.

To get a new image: `randPic`
To save the image: `keepWall`

<a name="bugs"></a>
## Bugs

None.

<a name="license"></a>
## License

The `randPic.sh` and `keepWall.sh` scripts are release under the [GPLv3 License](http://www.gnu.org/copyleft/gpl.html).
