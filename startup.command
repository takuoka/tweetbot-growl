#!/bin/bash

# Requirements
# npm install forever -g

# How To start tweetbot-growl at Startup of Mac.
# 1. Make it executable: chmod +x startup.command
# 2. Add this file in System Preferences > Accounts > Login items

# move to here
cd `dirname $0`

# stop and start
forever stop forever_run.js
forever start forever_run.js
