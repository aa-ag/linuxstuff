#!/bin/bash
history -c

### Mac-specific when history -c gives you issues:
killall zsh
exec rm "$HISTFILE"