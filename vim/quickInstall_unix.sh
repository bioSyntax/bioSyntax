#!/bin/bash
#
#

# Detect if the line 'syntax enable'
# exists in ~/.vimrc
# TRUE: do nothing
# FALSE: add that line to .vimrc (or replace 'syntax disable')

# Change permissions to read-only
chmod 0644 *.vim
chmod 0644 ftdetect/*.vim
chmod 0644 colors/*.vim


# Copy over bioSyntax files to local vim directory
cp *.vim ~/.vim/syntax/
cp ftdetect/* ~/.vim/ftdetect/
cp colors/* ~/.vim/colors/
