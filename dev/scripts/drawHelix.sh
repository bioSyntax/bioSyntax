#!/bin/bash
#
# drawHelix.sh <input.fa> 
#
# Reads a fasta input file and stream a B-Form DNA
# helix with the sequence to STDOUT
#
##    __     __   __           ___
###  |__) | /  \ /__` \ / |\ |  |   /\  \_/ 
#### |__) | \__/ .__/  |  | \|  |  /~~\ / \ 
#####=======================================
##                                      v0.1
#    ABabaian -- artem@rRNA.ca
#
#    Props to @darokin for the gif-spiration
#     
# TODO
# - Add B- and Z-form DNA helices [-dna B|Z]

# INITIALIZE ----------------------------------------------

# Input Fasta
FASTA=$1
  LINENUMBER=$(wc -l $FASTA | cut -f1 -d ' ' -)

DELAY='0.1s' # Delay between bases

# DNA Helix Type
IDX=1 # Initialize print index

# Terminal Color Palette
if [[ $(tput colors) == '256' ]]; then
	# Color Definitions (ANSI_256 Supported)
	colA='\e[1;38:5:10m'
	colT='\e[1;38:5:33m'
	colG='\e[1;38:5:214m'
	colC='\e[1;38:5:9m'
	colN1='\e[1;36m'
	colN2='\e[1;35m'
	colHelix='\e[1;38:5:250m'
	#colBond1=$colHelix
	colBond2='\e[1;30m'
	colBg='\e[38:5:17m'

else # use System colors
	# Color Definitions (System Colors)
	colA='\e[1;32m'
	colT='\e[1;34m'
	colG='\e[1;33m'
	colC='\e[1;31m'
	colN1='\e[1;36m'
	colN2='\e[1;35m'
	colHelix='\e[1;37m'
	#colBond1=$colHelix
	colBond2='\e[1;30m'
	colBg='\e[0m'
fi

# DRAW DNA ------------------------------------------------

for N in $(seq 3 $LINENUMBER) # iterate each line of FA
do
	SEQ=$(sed -n "$N"p $FASTA) # extract Nth line

	if [[ $SEQ =~ '^N+$' ]]; then # if all N line; skip
		sleep 0 # do nothing
	else
		# Draw Helix
		for BASE in $(echo $SEQ | sed -e 's/\(.\)/\1\n/g' -)
		do
			# Declare Watson and Crick bases
			#echo $BASE
			if [[ $BASE =~ [Aa] ]]; then  # A
				W="$colA"A"$colHelix"
				C="$colT"T"$colHelix"
				bond='-' # weak
			elif [[ $BASE =~ [TtUu] ]]; then # T or U
				W="$colT"T"$colHelix"
				C="$colA"A"$colHelix"
				bond='-' # weak
			elif [[ $BASE =~ [Gg] ]]; then # G
				W="$colG"G"$colHelix"
				C="$colC"C"$colHelix"
				bond='=' # strong
			elif [[ $BASE =~ [Cc] ]]; then # C
				W="$colC"C"$colHelix"
				C="$colG"G"$colHelix"
				bond='=' # strong
			else # Non-standard base
				W="$colN1"O"$colHelix"
				C="$colN2"X"$colHelix"
				bond='-' # unknown
			fi

			BP_1="$colBg.... $colHelix\$$W---$C\$$colBg ....."
			BP_2="$colBg.... $colHelix\$$W----$C\$$colBg ...."
			BP_3="$colBg..... $colHelix\$$W----$C\$$colBg ..."
			BP_4="$colBg...... $colHelix\$$W---$C\$$colBg ..."
			BP_5="$colBg....... $colHelix\$$W-$C\$$colBg ...."
			BP_6="$colBg........ $C\$$colBg ......"
			BP_7="$colBg...... $colHelix\$$C$colBond2---$W\$$colBg ..."
			BP_8="$colBg..... $colHelix\$$C$colBond2----$W\$$colBg ..."
			BP_9="$colBg.... $colHelix\$$C$colBond2----$W\$$colBg ...."
			BP_10="$colBg.... $colHelix\$$C$colBond2---$W\$$colBg ....."
			BP_11="$colBg...... $colHelix\$$W$colBg ........"
			BP_12="$colBg..... $colHelix\$$W-$C\$$colBg ......"

			OUTPUT="BP_$IDX"

			eval echo -e '$'$OUTPUT

			# Move through index
			if [ $IDX -eq 12 ]; then
				IDX=1
			else
				IDX=$((IDX + 1))
			fi
			sleep $DELAY # Delay timer between base-pairs
		done # BASE
	fi #N
done #SEQ
#
