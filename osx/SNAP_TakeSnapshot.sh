
# places an isight snapshot using imagesanp utility

NOW=$(date +"%Y.%m.%d-[%H.%M.%S]")
FILE=Box\ Sync/Chron/Photo\ Booth/SNAP-$NOW.jpg
touch "$FILE"
imagesnap -v "$FILE"
open "$FILE"






				#################
				#				#
				#	imagesnap	#
				#				#
				#################
#
# 
#	Captures an image from a video device and saves it in a file.
#	If no device is specified, the system default will be used.
#	If no filename is specfied, snapshot.jpg will be used.
#	Supported image types: JPEG, TIFF, PNG, GIF, BMP
#
#
# Installation
# -------------
#
# Copy the imagesnap file to someplace on your path like /usr/local/bin, 
# or leave it in a "current directory," and call it with ./imagesnap instead.
#
# Usage
# -------
#
# USAGE: imagesnap [options] [filename]
#
#		All commands:
#
#  -h          This help message
#  -v          Verbose mode
#  -l          List available video devices
#  -t x.xx     Take a picture every x.xx seconds
#  -q          Quiet mode. Do not output any text
#  -w x.xx     Warmup. Delay snapshot x.xx seconds after turning on camera
#  -d device   Use named video device
#
#
# To capture an image (snapshot.jpg) simply run the program from the command line.
#
# 		$ imagesnap
#
# To specify a filename, make that your last argument:
#
#		$ imagesnap mycapture.jpg
#
# If you have multiple video devices attached to your computer, use the -l ("el") flag to list them:
#
#		$ imagesnap -l
#			Video Devices:
#			iSight
#			DV
#
# To select a specific video device use the -d device flag:
#
#		$ imagesnap -d DV
#			Capturing image from device "DV"..................snapshot.jpg
#
# To output a jpeg representation to standard out (stdout), use a dash for the filename:
#
#		$ ssh johndoe@somewhere.com /usr/local/bin/imagesnap - > snapshot.jpg
#		$ open snapshot.jpg
#
# If you want to convert the filenames, which have dates embedded in them, 
# to a simple serial number for use with QuickTimer Player, try this:
#
#		for f in *.jpg; do mv $f ${f:0:14}.jpg; done
#

