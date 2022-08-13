#!/bin/bash

LOCAL_USER=$1

# configures console colors to one dark theme

sudo cp ./colors/bashrc /home/"$LOCAL_USER"/.bashrc
sudo cp ./colors/dircolors /home/"$LOCAL_USER"/.dircolors
sudo cp ./colors/onedark_prompt.sh /home/"$LOCAL_USER"/.onedark_prompt.sh

echo 'color changes completed, please log out and log back in.'