#!/bin/bash
# killall pianobar >/dev/null 2>&1 & disown $!
killall pithos >/dev/null 2>&1 & disown $!
killall mplayer >/dev/null 2>&1 & disown $!
killall banshee >/dev/null 2>&1 & disown $!
killall songbird >/dev/null 2>&1 & disown $!
killall amarok >/dev/null 2>&1 & disown $!
killall vlc >/dev/null 2>&1 & disown $!
t=$[ ( $RANDOM % 5 )  + 1 ]
sleep $t
find ~/.config/al ~ ~/Downloads -maxdepth 1 -name '*.wav' -o -name '*.ogg' -o -name '*.mp3' | sort -R |tail -1 | xargs -I{} mplayer {} >/dev/null 2>&1 & disown $!
for i in {1..30}
do
    /usr/bin/amixer sset 'Auto-Mute Mode',0 Disabled >/dev/null 2>&1
    /usr/bin/amixer -D pulse set Master 1+ unmute >/dev/null 2>&1
    /usr/bin/amixer -c 0 set Speaker,0 100% on >/dev/null 2>&1
    /usr/bin/amixer -c 0 set Master,0 100% >/dev/null 2>&1
    sleep 1
done & disown $!
sleep 14
/usr/bin/amixer sset 'Auto-Mute Mode',0 Enabled >/dev/null 2>&1 & disown $!
/usr/bin/amixer -c 0 set Speaker,0 100% on >/dev/null 2>&1 & disown $!
/usr/bin/amixer -c 0 set Master,0 80% >/dev/null 2>&1 & disown $!
