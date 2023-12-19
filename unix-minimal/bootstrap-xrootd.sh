#!/usr/bin/env bash

# download ssh keys ############################################################
XROOTD_ROOT=root://bohr3226.tier2.hep.manchester.ac.uk:1094//dpm/tier2.hep.manchester.ac.uk/home/souk.ac.uk
# to stroage
# gfal-mkdir -p -m 700 "$XROOTD_ROOT/home/$USER/.ssh"
# gfal-copy ~/.ssh/id_ed25519 "$XROOTD_ROOT/home/$USER/.ssh/id_ed25519"
# gfal-copy ~/.ssh/id_ed25519.pub "$XROOTD_ROOT/home/$USER/.ssh/id_ed25519.pub"
# check
# gfal-ls "$XROOTD_ROOT/home/$USER/.ssh"
# from storage
mkdir -p -m 700 ~/.ssh
gfal-copy -r "$XROOTD_ROOT/home/$USER/.ssh" ~/.ssh
find ~/.ssh -type f -exec chmod 600 {} +
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# dotfiles #####################################################################
mkdir -p ~/git/source
cd ~/git/source
git clone git@github.com:ickc/dotfiles
cd ~/git/source/dotfiles
. bin/env
make install all -j
. bin/env

# start zsh ####################################################################
zsh
