#!/bin/bash
#
# Usage:	/.set_sublime-settings.sh
#			( Run in "$BIOSYNTAX/sublime/" )
# 
# bioSyntax.org v0.1
#
# Creates a copy of the bioSyntax default settings
# for each syntax. 
# 
# Used to apply changes in "bioSyntax.sublime-settings" 
# as a default for every syntax
#
# Note:
# Ideally all bioSyntax syntax files will
# read the same "bioSyntax.sublime-settings" file
#
# In *nix this is done with `ln -s ` but that isn't
# a windows/*.nix compatible way of creating links
# to the same file.
#

TEMPLATE='bioSyntax.sublime-settings'

printf " Default bioSyntax.sublime-settings:\t$TEMPLATE\n"
# Generate a bioSyntax.sublime-settings
# file if one doesn't exist.

for SYNTAXFILE in $(ls *.sublime-syntax)
do
	# Find each syntax definition file
	SYNTAX=$(basename -as'.sublime-syntax' $SYNTAXFILE)
	printf " Making .sublime-settings file for:\t$SYNTAX\n"

	cp $TEMPLATE $SYNTAX".sublime-settings" 

done
