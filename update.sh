cd /Volumes/Data/rob/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole
sleep 2
hostlist-compiler -c configuration.json -o Robs_compiled_adlist.txt
sleep 2
git add *
sleep 2
git commit -m "update script"
sleep 2
git push
exit
