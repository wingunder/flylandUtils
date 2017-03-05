Utilities for manipulating data from flyland.ch
===============================================

At the moment this is in beta phase and the only thing
that this software can really do, is to convert the
PIO information of flyland.ch into the .gpx format.

Prerequisites
-------------

- [GNU Make](https://www.gnu.org/software/make/)

- [gpsbabel](https://www.gpsbabel.org/)

- [unzip](http://www.info-zip.org/UnZip.html)

On Debian (and derivatives like Ubuntu) systems, you'll need to:

```
apt install make gpsbabel unzip
```

Convering PIO information into the .gpx format
----------------------------------------------

Go to http://flyland.ch/ and download the Flyland-POI.zip file
into this directory. AFAICS, this action should actially not be
automated, as you'll need to agree to some terms.

Once you have the latest Flyland-POI.zip file in this directory,
run:

```
   make
```

This will unzip the folloing 2 files from the Flyland-POI.zip
file and generate the according .gpx files from it.

```
   StartplatzPOI.asc
   LandeplatzPOI.asc
```

By using gpsbabel, one could now 'filter' it in order to narrow
the PIOs down to a certain area.
