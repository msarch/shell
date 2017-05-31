top -o cpu -n10 -F -R -l2 -stats cpu,PID,COMMAND | egrep -v '^0,0|^Processes|^Load|^CPU|^Mem|^Phys|^Networks|^Disks|^201|VM|%CPU' | tail -10
