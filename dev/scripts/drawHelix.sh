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
##   biosyntax.org                      v0.1
#
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
	colA="$(tput setaf 10)"
	colT="$(tput setaf 33)"
	colG="$(tput setaf 214)"
	colC="$(tput setaf 9)"
	colN1="$(tput setaf 87)"
	colN2="$(tput setaf 205)"
	colHelix=$(tput setaf 250)
	#colBond1=$colHelix
	colBond2="$(tput setaf 0)"
	colBg="$(tput setaf 17)"

else # use System colors
	# Color Definitions (System Colors)
	colA="$(tput setaf 2)"
	colT="$(tput setaf 4)"
	colG="$(tput setaf 3)"
	colC="$(tput setaf 1)"
	colN1="$(tput setaf 6)"
	colN2="$(tput setaf 5)"
	colHelix="$(tput setaf 7)"
	#colBond1=$colHelix
	colBond2="$(tput setaf 0)"
	colBg="$(tput setaf 0)"
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
