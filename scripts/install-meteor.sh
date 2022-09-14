#!/bin/bash

set -e

if [ "$DEV_BUILD" = true ]; then
  # if this is a devbuild, we don't have an app to check the .meteor/release file yet,
  # so just install the latest version of Meteor
  printf "\n[-] Installing the latest version of Meteor...\n\n"
  curl -k -v https://install.meteor.com/ | sh
else
  # download installer script
  curl -k -v "https://install.meteor.com/?release=2.7.3" -o /tmp/install_meteor.sh

  # install
  printf "\n[-] Installing Meteor 2.7.3...\n\n"
  sh /tmp/install_meteor.sh
fi
