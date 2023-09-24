#!/bin/bash

# set public repo directory
DEST_DIR="../casiojapi-xyz-public"

# render changes
hugo 

# copy public changes to public repo
cp -r public/* "$DEST_DIR" 

# change dir to public repo
cd "$DEST_DIR"

# add, commit, push website update
git add .
git commit -m "$(date +%s) webmaster's update"
git push -u origin master
