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


# Copy over bioSyntax files to local vim directory
cp *.vim ~/.vim/syntax/

cp ftdetect/* ~/.vim/ftdetect/

## Add compatability for `less` highlighting
##

# <----- Copy and uncomment below into ~/.bashrc or ~/.zshrc ---- >
## Enable syntax-highlighting in less.
## Install `source-highlight` to your system 
## apt-get install source-highlight
#
## For Ubuntu / Fedora
#     export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
#     export LESS=" -R "
#
### For CentOS
##     export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
##     export LESS=" -R "
#
#alias less='less -NSi -# 20'
#alias more='less'
#
# <---------------------------------------------------------------->
