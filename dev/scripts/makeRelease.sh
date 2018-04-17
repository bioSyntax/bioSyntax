#!/bin/bash
#
# makeRelease.sh
#
# A script to generate a bioSyntax Release based
# on the latest verison of all files in the repository.
#
# Must be run from the main biosyntax directory
#

NAME='bioSyntax'
VERSION='0.1.beta4'


# Create a .zip file release

zip -r ${NAME}-${VERSION}.zip \
  alt-syntax/ \
  examples/ \
  gedit/ \
  less/ \
  sublime/ \
  vim/ \
  bioSyntax_INSTALL.sh \
  bioSyntax_logo.png \
  bioSyntax_UNINSTALL.sh \
  LICENSE.md \
  INSTALL.md \
  README.md \
  man.pdf
