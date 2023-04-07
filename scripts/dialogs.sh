#!/bin/bash
touch 'input.txt'
dialog --title "User Input" \
--backtitle "(testing linux stuff)" \
--inputbox "Enter an input: " 8 6 2>'input.txt'