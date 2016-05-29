Supplimentary growl support for Tweetbot (Mac)
=========================================
<img src="https://raw.githubusercontent.com/entotsu/tweetbot-growl/master/sucks.png" width="480" alt="fucking mind" />

The primary goal of this repo is to provide [growl](http://growl.info/) notifications for [Tweetbot for Mac](http://tapbots.com/tweetbot_mac/).
I really like Tweetbot, but the fact that [there are no notifications](https://twitter.com/tweetbot/status/329810890918600705) for my feed requires that I have both Twitter and Tweetbot open at all times. This sucks.

I tired to make it like growl notfications fro twitter with streaming, avatar and tap on notfication to view tweet.

![screenshot](http://i46.tinypic.com/14vu5x0.png)


## Installation

1. Install [growlnotify](http://growl.info/extras.php#growlnotify).

2. Clone this repo: `git clone  git@github.com:joshvermaire/node-tweetbot.git`

3. Go into the directory and start it: `cd node-tweetbot`

4. Setup a [new app](https://dev.twitter.com/apps/new) with Twitter.

5. Add a `config.js` file to include your new keys:
``` javascript
var config;
config = {
    key: 'Your consumer key',
    secret: 'Your consumer secret',
    tokenKey: 'Your access token',
    tokenSecret: 'Your access token secret',
    username: 'yourtwitterusername'
}
module.exports = config;
```

 6\. Install dependencies and start the app:
```
  npm install -d
  node app
```
  You're set.

## Run forever

1. Install [forever](https://github.com/foreverjs/forever): `sudo npm install forever -g`

2. Make it executable: `chmod +x startup.command`

3. Double click `startup.command`.

Then, shellscript start to run this app in background forever.

If you want to stop the forever task, please execute `forever stop forever_run.js`.

## Start at login
You can start automatically this app at startup of your Mac,
if you set `startup.command` to `Login items` in `System Preferences`.

1. Install [forever](https://github.com/foreverjs/forever): `sudo npm install forever -g`

2. Make it executable: `chmod +x startup.command`

3. Add this file in `System Preferences > Accounts > Login items`
