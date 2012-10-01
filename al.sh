t=$[ ( $RANDOM % 5 )  + 1 ]
sleep $t
# ls |sort -R |tail -1 |while read file; do
find ~/Downloads/ -name '*.wav' | sort -R |tail -1 | xargs -I{} mplayer {} >/dev/null 2>&1 & disown $!
# mplayer -noconsolecontrols ~/Downloads/yo.ogg >/dev/null 2>&1 & disown $!
for i in {1..10}
do
    /usr/bin/amixer sset 'Auto-Mute Mode',0 Disabled >/dev/null 2>&1
    /usr/bin/amixer -D pulse set Master 1+ unmute >/dev/null 2>&1
    /usr/bin/amixer -c 0 set Speaker,0 100% on >/dev/null 2>&1
    /usr/bin/amixer -c 0 set Master,0 20% >/dev/null 2>&1
    sleep 1
done & disown $!
sleep 14
/usr/bin/amixer sset 'Auto-Mute Mode',0 Enabled >/dev/null 2>&1 & disown $!
/usr/bin/amixer -c 0 set Speaker,0 100% on >/dev/null 2>&1 & disown $!
/usr/bin/amixer -c 0 set Master,0 80% >/dev/null 2>&1 & disown $!

# find . -name '*.wav' -print0 |sort -R |tail -1 | xargs -0 mplayer
