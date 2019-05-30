# Download a list of images from `www.cancer.gov`.

Usage: `./pull.sh < imagelist.txt`

Run it from the directory where you want the images to be downloaded.

`imagelist.txt` is a straight-forward list of images to download, with just a
relative path to download from, one entry per line.  All files are downloaded
relative to `https://www.cancer.gov/PublishedContent/Images/` and stored in
a directory matching the path they came from.

e.g. If the entry is `images/cancer-types/head-neck/headandneck-diagram.jpg`, the image
is downloaded from `https://www.cancer.gov/PublishedContent/Images/images/cancer-types/head-neck/headandneck-diagram.jpg` and
stored as `images/cancer-types/head-neck/headandneck-diagram.jpg` under the current directory.