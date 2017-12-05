#!/bin/bash
#
# Quick installer for less syntax
# for testing purposes

SRCDIR='/usr/share/source-highlight'

# Copy over src-hilite script
sudo cp src-hilite-lesspipe_BIO.sh $SRCDIR/src-hilite-lesspipe.sh


# Copy over language files
sudo cp *.lang $SRCDIR/

# Copy over syle files
sudo cp *.style $SRCDIR/

# Copy over language files
sudo cp bioSyntax.outlang $SRCDIR/
sudo cp bioSyntax-vcf.outlang $SRCDIR/



