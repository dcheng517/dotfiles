#!/bin/bash

intkb="AT Translated Set 2 keyboard"
extkb="Razer Blackwidow"

if xinput list | grep "$extkb" -ic; then
    xinput disable "$intkb"
else
    xinput enable "$intkb"
fi


