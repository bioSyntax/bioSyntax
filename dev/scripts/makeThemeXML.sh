#!/bin/bash
#
# makeThemeXML.sh
#
# Take a tab-seperated file containing (from bioSyntaxTheme.xls)
# <ClassName> <VariableName (SCOPE)> <FONTSTYLE> <BACKGROUND> <FONTSTYLE>
# for defining color scheme
# convert to XML format for .sublime-syntax
#

# Input TSV File
INPUT='input_bioSyntax_v0.1.tsv'

# Template XML File to modify
TEMPLATE='templateXML.sublime.syntax'

# Output XML File
OUTPUT='autoSyntax_bioSynatx_v0.1_171130.xml'
touch $OUTPUT

# Iterate through each line of the input TSV
# grab the three fields and s/g them to replace
# the variables with the ones in the input.tsv

while read LINE
do
	NAME=$(echo $LINE | cut -f1 -d' ' -)

	SCOPE=$(echo $LINE | cut -f1 -d' ' -)

	FONTSTYLE=$(echo $LINE | cut -f2 -d' ' -)

	BACKGROUND=$(echo $LINE | cut -f3 -d' ' -)

	FOREGROUND=$(echo $LINE | cut -f4 -d' ' -)

	#echo $LINE
	#echo $NAME
	#echo $SCOPE
	#echo $BACKGROUND
	#echo $FOREGROUND

	sed "s/NAME/$NAME/g" $TEMPLATE \
	| sed "s/SCOPE/$SCOPE/g" - \
	| sed "s/FONTSTYLE/$FONTSTYLE/g" - \
	| sed "s/BACKGROUND/$BACKGROUND/g" - \
	| sed "s/FOREGROUND/$FOREGROUND/g" - \
	| sed "s/>na</></g" - > out.tmp # remove empty

	cat out.tmp >> $OUTPUT

done < $INPUT



rm out.tmp
