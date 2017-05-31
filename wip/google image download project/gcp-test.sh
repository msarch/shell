

#!/bin/sh 

BACKUP_DIR=NVALT
USERNAME="michel.serratrice@gmail.com"
PASSWORD="marenostrum"
GDATACOPIER=/System/Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/site-packages/gdatacopier-2.1.2
LOCAL_SOURCE_DIR="/Users/macbookcolor/Dropbox/MacBookSync/nv/"
GOOGLE_DOCS_DIR="nvALT"

# $GDATACOPIER/gmkdir.py -p $PASSWORD $USERNAME:/docs $BACKUP_DIR

$GDATACOPIER/gcp.py $LOCAL_SOURCE_DIR -o -p $PASSWORD $USERNAME:/$GOOGLE_DOCS_DIR