#!/bin/bash

echo "setup script; keep credentials at hand"

read -p "You need to setup ssh in order to download lpc-cs python toolkit. Do you want to set this up now? [Y/n] " ynAnswer

if [[ "$ynAnswer" = "" || "$ynAnswer" = "y" || "$ynAnswer" = "Y" ]]; then
    read -p "Enter passphrase (empty for no passphrase) " passphrase
    ssh-keygen -t ecdsa -f ~/.ssh/id_ecdsa -q -N "$passphrase"
    echo $(cat ~/.ssh/id_ecdsa.pub)
    echo "add the key here: https://bitbucket.diasemi.com/plugins/servlet/ssh/account/keys"

    read -p "Press any key to continue after you copied the ssh key" continueKey
    echo "installing lpc-cs python tookit..."
    pip install git+ssh://git@bitbucket.diasemi.com:7999/lpc_cs/lpc_cs_toolkit.git
fi


echo "exiting..."
