#Stopping & Continuing Applications by App Name
#you can also use the ‘killall’ command 
#with the -STOP flag to halt processes.

#osascript -e 'quit app "DROPBOX"'
#osascript -e 'quit app "Google Drive"'
#osascript -e 'quit app "OneDrive"'
#osascript -e 'quit app "Box Sync"'

#quit spotlight 
echo "pausing spotlight"
sudo mdutil -a -i off

echo "pausing dropbox"
killall -v -STOP -c "Dropbox"

echo "pausing google drive"
killall -v -STOP -c "Google Drive"

echo "pausing onedrive"
killall -v -STOP -c "OneDrive"

echo "pausing box sync"
killall -v -STOP -c "Box Sync"
killall -v -STOP -c "Box Sync Monitor"
killall -v -STOP -c "Box Sync Finder Extension"




