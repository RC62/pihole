#!/bin/zsh

# Change to pihole git folder
cd ~/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole/AdList\_Update
sleep 1

# Compile adlist files
hostlist-compiler -c configurationwhitelist.json -o outputallow.txt
sleep 2

# Cleanup blank lines
sed '/^$/d' output2.txt > ~/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole/robs_compiled_adguard_whitelist.txt


# Update Github project
cd ~/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole/
git add *
sleep 2
git commit -m "update script"
sleep 2
git push
