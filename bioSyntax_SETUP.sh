#!/bin/sh
# General Cross-Platform Installer Script for bioSyntax files
# MUST BE EXECUTED FROM ROOT AS ADMIN
# Takes 2 trailing arguments, $1 is mandatory. $1 = text editor, $2 = syntax format
# AVAILABLE FOR:
#	- Linux Ubuntu: sublime, gedit, vim, less
#	- Windows: sublime, gedit, vim
#	- MacOSX: sublime, vim, less
# SYNTAX FILES FORMATS:
#	- Sublime Text 3: bed, clustal, faidx, fasta, fasta-clustal, fasta-hydro, fasta-nt, fasta-taylor, fasta-zappo, fastq, flagstat, gtf, pdb, sam, vcf, wig
#	- Gedit: bed, clustal, faidx, fasta, fasta-clustal, fasta-hydro, fasta-nt, fasta-taylor, fasta-zappo, fastq, gtf, pdb, sam, wig
#	- Vim: bed, clustal, faidx, fasta, fastq, gtf, pdb, sam, vcf
#	- Less: bed, clustal, faidx, fasta, fastq, flagstat, gtf, pdb, sam, vcf
printf "bioSyntax is a syntax highlighting tool for computational biology. For more information, visit biosyntax.org.\\n"
#cd -- "$(dirname "$BASH_SOURCE")"

# Mac OSX - Available for: Sublime Text 3, Vim
if  [ "$(uname)" == "Darwin" ]; then
	if [ "$1" == "sublime" ]; then
		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Mac OSX Sublime Text 3.\\n" "$2"
		FPATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/bioSyntax/
		if [ ! -d "${FPATH}" ]; then sudo mkdir "${FPATH}"; fi
		TPATH=/Applications/Sublime\ Text.app/Contents/MacOS/Packages
	elif [ "$1" == "vim" ]; then
		printf "Settng up %s syntax file(s) and style file(s) for Mac OSX Vim.\\n" "$2"
		if [ ! -e ~/.vimrc ]; then touch ~/.vimrc; fi
		if ! grep -q ":syntax enable" ~/.vimrc; then echo ":syntax enable\\n" > ~/.vimrc; fi
		if [ ! -d ~/.vim/ ]; then mkdir ~/.vim/; fi
		FPATH=~/.vim/syntax
		if [ ! -d "${FPATH}" ]; then sudo mkdir "${FPATH}"; fi
		TPATH=~/.vim/ftdetect/
		if [ ! -d "${TPATH}" ]; then sudo mkdir "${TPATH}"; fi
	#elif [ "$1" == "gedit" ]; then
	#	printf "Setting up %s lang file(s) and bioKate theme for Mac OSX Gedit.\\n" "$2"
	#	FPATH=/
	#	TPATH=/
	elif [ "$1" == "less" ]; then
		printf "Installing/updating brew and source-highlight for Less and setting up %s lang file(s) and style file(s) for Mac OSX Less.\\n" "$2"
		which -s brew
		if [[ $? != 0 ]] ; then
   		#Install Homebrew
    		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		else
    		brew update
		fi
		if brew ls --versions "source-highlight" > dev/null; then
			brew install source-highlight
		else
			brew upgrade source-highlight
		fi
		FPATH=/usr/local/bin/
		TPATH=/usr/local/bin/
		if ! grep -q "bioSyntax" ~/.bash_profile; then sudo cat /less/bp_append.txt >> ~/.bash_profile; fi
		sudo mv "/less/src-hilite-lesspipe_BIO.sh" "${TPATH}/src-hilite-lesspipe.sh"
		sudo mv "/less/biosyntax.outlang" "${TPATH}"
		sudo mv "/less/bioSyntax-vcf.outlang" "${TPATH}"
	else
		printf "ERROR: %s is not a valid/supported editor for MacOS. Currently, bioSyntax is available for sublime, less, and vim for MacOS.\\n" "$1"
		exit 1
	fi

# Linux Ubuntu - Available for: Sublime Text 3, Gedit, Vim, Less
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	if [ "$1" == "sublime" ]; then
		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Linux Sublime Text 3.\\n" "$2"
		FPATH=~/.config/sublime-text-3/Packages/User/bioSyntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=../sublime_text_3/Packages/
	elif [ "$1" == "gedit" ]; then
		printf "Setting up %s lang file(s) and bioKate theme for Linux Gedit.\\n" "$2"
		FPATH=/usr/share/gtksourceview-3.0/language-specs/
		TPATH=/usr/share/gtksourceview-3.0/styles/
	elif [ "$1" == "vim" ]; then
		printf "Setting up %s syntax file(s) and style file(s) for Linuxvim.\\n" "$2"
		if [ ! -e ~/.vimrc ]; then touch ~/.vimrc; fi
		if ! grep -q ":syntax enable" ~/.vimrc; then echo ":syntax enable\\n" > ~/.vimrc; fi
		if [ ! -d ~/.vim/ ]; then mkdir ~/.vim/; fi
		FPATH=~/.vim/syntax
		if [ ! -d "${FPATH}" ]; then sudo mkdir "${FPATH}"; fi
		TPATH=~/.vim/ftdetect/
		if [ ! -d "${TPATH}" ]; then sudo mkdir "${TPATH}"; fi
	elif [ "$1" == "less" ]; then
		printf "Installing/updating source-highlight for Less and setting up %s lang file(s) and style file(s) for Linux Less.\\n" "$2"
		apt-get update
	apt-get install source-highlight
		FPATH=/usr/share/source-highlight/
		TPATH=/usr/share/source-highlight/
		if ! grep -q "bioSyntax" ~/.bashrc; then sudo cat /less/rc_append.txt >> ~/.bashrc; fi
		sudo mv "/less/src-hilite-lesspipe_BIO.sh" "${TPATH}/src-hilite-lesspipe.sh"
		sudo mv "/less/biosyntax.outlang" "${TPATH}"
		sudo mv "/less/bioSyntax-vcf.outlang" "${TPATH}"
	else
		printf "ERROR: %s is not a valid/supported editor for Linux Ubuntu. Currently, bioSyntax is available for sublime, gedit, vim, and less for Linux Ubuntu.\\n" "$1"
		exit 1
	fi

# Windows - Available for: Sublime Text 3, Gedit, Vim
else
	if [ "$1" == "sublime" ]; then
		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Windows Sublime Text 3.\\n" "$2"
		FPATH=%APPDATA%/Roaming/Sublime Text 3/Packages/User/bioSyntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=C:/Program Files/Sublime Text 3/Packages/
	elif [ "$1" == "gedit" ]; then
		printf "Setting up %s lang file(s) and bioKate theme for Windows Gedit.\\n" "$2"
		# !!! GET THE WINDOWS PATHS FOR THE SYNTAX FILES AND THEME
		#C:\Program Files\gedit\share\gtksourceview-2.0\language-specs\
		#C:\Program Files\gedit\share\gtksourceview-2.0\styles\
		FPATH=/
		TPATH=/
	elif [ "$1" == "vim" ]; then
		printf "Setting up %s syntax file(s) and style file(s) for Windows vim.\\n" "$2"
		if [ ! -e "$HOME/.vimrc" ]; then touch "$HOME/.vimrc"; fi
		if ! grep -q ":syntax enable" "$HOME/.vimrc"; then echo ":syntax enable\\n" > $HOME/.vimrc; fi
		if [ ! -d $HOME/vimfiles/ ]; then mkdir $HOME/vimfiles/; fi
		FPATH=$HOME/vimfiles/syntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=$HOME/vimfiles/ftdetect/
		if [ ! -d "${TPATH}" ]; then mkdir "${FPATH}"; fi
	#elif [ "$1" == "less" ]; then
	#printf "Installing/updating source-highlight for Less and setting up %s lang file(s) and style file(s) for Windows Less.\\n" "$2"
	#	FPATH=/
	#	TPATH=/
	else
		printf "ERROR: %s is not a valid/supported editor for Windows. Currently, bioSyntax is available for sublime, gedit, and vim for Windows.\\n" "$1"
		exit 1
	fi
fi

## FILE AND URL FORMATTING, DOWNLOAD THEME/STYLE FILE, PLACE IT IN RIGHT DIRECTORY, CHANGE TO READ-ONLY

if [ "$1" == "sublime" ]; then
	SOURCE="/sublime/"
	THEME="Color Scheme - bioSyntax.sublime-package"
	sudo chmod 0644 "${SOURCE}/${THEME}"
	sudo mv "${SOURCE}/${THEME}" "${TPATH}/${THEME}"
	FILE=".sublime-syntax"
	FILES=("bed" "clustal" "faidx" "fasta" "fasta-clustal" "fasta-hydro" "fasta-nt" "fasta-taylor" "fasta-zappo" "fastq" "flagstat" "gtf" "pdb" "sam" "vcf" "wig")
elif [ "$1" == "gedit" ]; then
	SOURCE="/gedit/"
	THEME="bioKate.xml"
	sudo chmod 0644 "${SOURCE}/${THEME}"
	sudo mv "${SOURCE}/${THEME}" "${TPATH}/${THEME}"
	FILE=".lang"
	FILES=("bed" "clustal" "faidx" "fasta" "fasta-clustal" "fasta-cysteine" "fasta-hydrophobicity" "fasta-taylor" "fasta-zappo" "fastq" "gtf" "sam" "wig")
elif [ "$1" == "vim" ]; then
	SOURCE="/vim/"
	THMFOLDER="${SOURCE}/ftdetect/" 
	THEME=".vim"
	FILE=".vim"
	FILES=("bed" "clustal" "faidx" "fasta" "fastq" "gtf" "pdb" "sam" "vcf")
	if [ -z "$2" ]; then
		for ((f=0; f<${#FILES[@]}; f++)); do
			sudo chmod 0644 "${THMFOLDER}/${FILES[${f}]}${THEME}"
			sudo mv "${THMFOLDER}/${FILES[${f}]}${THEME}" "${TPATH}"
		done
	else
		sudo chmod 0644 "${THMFOLDER}/${2}${THEME}"
		sudo mv "${THMFOLDER}/${2}${THEME}" "${TPATH}"
	fi
elif [ "$1" == "less" ]; then
	SOURCE="/less/"
	THEME=".style"
	FILE=".lang"
	FILES=("bed" "clustal" "faidx" "fasta" "fastq" "flagstat" "gtf" "pdb" "sam" "vcf")
	if [ -z "$2" ]; then
		for ((f=0; f<${#FILES[@]}; f++)); do
			sudo chmod 0644 "${SOURCE}/${FILES[${f}]}${THEME}"
			sudo mv "$${SOURCE}/{FILES[${f}]}${THEME}" "${TPATH}"
		done
	else
		sudo chmod 0644 "${SOURCE}/${2}${THEME}"
		sudo mv "${SOURCE}/${2}${THEME}" "${TPATH}"
	fi
else
	 printf "ERROR: %s is not a valid/supported editor. Currently, bioSyntax is available for sublime, gedit, vim, and less.\\n" "$1"
	 exit 1
fi

# DOWNLOAD SYNTAX FILE(S), PLACE IN RIGHT DIRECTORY, CHANGE TO READ-ONLY
if [ -z "$2" ]; then
	for ((f=0; f<${#FILES[@]}; f++)); do
		sudo chmod 0644 "${SOURCE}/${FILES[${f}]}${FILE}"
		sudo mv "${SOURCE}/${FILES[${f}]}${FILE}" "${FPATH}"
	done
else
	sudo chmod 0644 "${SOURCE}/${2}${FILE}"
	sudo mv "${SOURCE}/${2}${FILE}" "${FPATH}"
fi

printf "Installation successful. Restart %s and you will now have pretty %s formats! Thank you for your support!\\n" "$1" "$2"
exit 0


