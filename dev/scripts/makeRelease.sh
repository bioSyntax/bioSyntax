#!/bin/bash
#
# makeRelease.sh
#
# A script to generate a bioSyntax Release based
# on the latest verison of all files in the repository.
#
# Must be run from the main biosyntax directory
#

NAME='biosyntax'
VERSION='v0.1-alpha'


# Create a .zip file release

zip -r $NAME.$VERSION.zip \
  examples/ \
  gedit/ \
  less/ \
  sublime/ \
  vim/ \
  bioSyntax_SETUP.sh \
  LICENSE.md \
  README.md 
