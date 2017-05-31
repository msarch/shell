
#open -a "Dropbox"
#open -a "Google Drive"
#open -a "OneDrive"
#open -a "Box Sync.app"
#restart spotlight
sudo mdutil -a -i on

killall -v -CONT -c "Dropbox"
killall -v -CONT -c "Google Drive"
killall -v -CONT -c "OneDrive"
killall -v -CONT -c "Box Sync"
killall -v -CONT -c "Box Sync Monitor"
killall -v -CONT -c "Box Sync Finder Extension"

