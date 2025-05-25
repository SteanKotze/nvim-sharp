cd /home/<<user>>/work/<<repository>>/

rm test.log

touch test.log

/usr/bin/dotnet run $1 >> test.log 2>&1
