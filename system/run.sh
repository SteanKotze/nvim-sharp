pid="$$"
timestamp=$(date +"%Y%m%d_%H%M%S")

log00="run"
log01="$log00-$timestamp"
log02="$log01-$pid"
log03="$log02.log"

log_file_name="/home/<<user>>/work/<<repository>>/logs/$log03"
touch "$log_file_name"

sleep 0.5

cd ~/work/<<repository>>/
/usr/bin/dotnet run $1 >> "$log_file_name" 2>&1

find ./logs/ -type f -mtime +7 -delete
