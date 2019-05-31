# Download a list of files from a Cancer.gov web site.

Usage: `./pull.sh server storage < imagelist.txt`

e.g. `pull www.cancer.gov ~/mig_files/CGOV`

Run it from the directory where you want the images to be downloaded.

`imagelist.txt` is a straight-forward list of files to download, with just a
relative path to download from, one entry per line.  All files are stored in
a directory matching the path they came from.

e.g. If the entry is `PublishedContent/Images/images/cancer-types/head-neck/headandneck-diagram.jpg`, the image
is downloaded from `https://www.cancer.gov/PublishedContent/Images/images/cancer-types/head-neck/headandneck-diagram.jpg` and
stored as `PublishedContent/Images/images/cancer-types/head-neck/headandneck-diagram.jpg` under the current directory.