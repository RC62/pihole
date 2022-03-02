#!/bin/zsh

# Change to pihole git folder
cd ~/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole/AdList\_Update
sleep 1

# Compile adlist files
hostlist-compiler -c configuration.json -o output.txt
sleep 1

# hostlist-compiler -c configuration2.json -o output2.txt
# sleep 1

# Cleanup IPs
sed -i '' "s/127.0.0.1//g" output.txt
sleep 1

sed -i '' "s/0.0.0.0//g" output.txt
sleep 1

# Cleanup comments - replace "!" with "#"
sed -i '' "s/\!/\#/g" output.txt
sleep 1

# Remove all empty lines

sed '/^$/d' output.txt > ~/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole/robs_compiled_adlist.txt
sleep 1

# sed '/^$/d' output2.txt > ~/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole/robs_compiled_adguard_list.txt
# sleep 1

#Update Github project
cd ~/Library/CloudStorage/OneDrive\-Personal/Raspberry\ Pi/GitHub/pihole/

git add *
sleep 1

git commit -m "update script"
sleep 1

git push
sleep 1
