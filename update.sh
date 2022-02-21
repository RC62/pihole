Echo
hostlist-compiler -c configuration.json -o Robs_compiled_adlist.txt
sleep 5
git add *
sleep 5
git commit -m "update script"
sleep 5
git push
Echo Done