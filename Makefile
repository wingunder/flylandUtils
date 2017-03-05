TARGETS = StartplatzPOI.gpx LandeplatzPOI.gpx

all: $(TARGETS)

Flyland-POI.zipz:
	@echo "ERROR: Manually get Flyland-POI.zip from http://flyland.ch/"
	@false

%.gpx: %.asc flyland_asc.style
	gpsbabel -i xcsv,style=flyland_asc.style -f $*.asc -o gpx -F $*.gpx

%.asc: Flyland-POI.zip
	unzip Flyland-POI.zip $@; true

clean:
	rm -f *.gpx *.asc

PRECIOUS: StartplatzPOI.asc LandeplatzPOI.asc
