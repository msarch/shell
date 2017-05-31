# -r -l 1 = --recursive --level=1  		--> OPTION SUPPRIMEE pour ne recuperer que la premiere page
# -A = --accept=jpg,jpeg,gif,png,html   --> OPTION SUPPRIMEE car les fichiers images sur certain sites sont stockées sans leur extension
# -nd = --no-directories 				--> all files are saved in the current directory or -P)
#  -p,  --page-requisites    get all images, etc. needed to display HTML page.
#  -R,  --reject=LIST                comma-separated list of rejected extensions.

clear

DLDIR="/Users/MS/Desktop/dl.$(date '+%Y-%m-%d-%H%M')"
NMIN=1
NMAX=30

mkdir $DLDIR
echo "created folder : " "$DLDIR"

for (( n = $NMIN; $n < 10; n++ )); do
FILE=http://www.retronaut.com/wp-content/uploads/2013/07/Soviet-Space-Propaganda-Posters-$n.jpg
echo "downloading : " "$FILE"
wget --directory-prefix="$DLDIR"  --accept=pdf --no-check-certificate --execute=robots=off $FILE
done

for (( n = 10; $n < $NMAX; n++ )); do
FILE=http://www.retronaut.com/wp-content/uploads/2013/07/Soviet-Space-Propaganda-Posters-$n.jpg
echo "downloading : " "$FILE"
wget --directory-prefix="$DLDIR"  --accept=pdf --no-check-certificate --execute=robots=off $FILE
done

echo "done"
open "$DLDIR"
