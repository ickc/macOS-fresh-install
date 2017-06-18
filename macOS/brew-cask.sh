#!/bin/bash

# prepare sudo for pkg
sudo -v

brew tap caskroom/versions
brew tap caskroom/drivers

# grep -v invert the search. i.e. all lines including # are considered as "comments"
grep -v '#' brew-cask.txt | xargs brew cask install
# install this after brew cask install osxfuse
brew install homebrew/fuse/sshfs

# overriding Mac App Store's version
brew cask install --force atext multimarkdown-composer-beta

# CUDA PATH
printf "%s\n" "" "# CUDA" 'export PATH="'$(echo /Developer/NVIDIA/CUDA-*.*/bin)':$PATH"' >> $HOME/.bash_profile
