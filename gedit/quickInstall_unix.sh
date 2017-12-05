#!/bin/bash
#
#

chmod 0644 *.lang

sudo cp *.lang /usr/share/gtksourceview-3.0/language-specs/

sudo cp bioKate.xml /usr/share/gtksourceview-3.0/styles/bioKate.xml


## In Gedit you now need to select the bioKate Theme

echo 'In Gedit select the bioKate Theme'
echo 'Edit > Preferences > Font & Color > bioKate'
