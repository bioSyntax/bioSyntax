#!/bin/bash
# General Cross-Platform Uninstaller Script for bioSyntax files
#
# Usage:
# bash bioSyntax_UNINSTALL.sh <text_editor> (<file format>)
#
# AVAILABLE FOR:
#	- Linux Ubuntu: sublime, gedit, vim, less
#	- Windows: sublime, gedit, vim
#	- MacOSX: sublime, vim, less
#
# SYNTAX FILES FORMATS:
#	- Sublime Text 3: bed, clustal, faidx, fasta, fasta-clustal, fasta-hydro, fasta-nt, fasta-taylor, fasta-zappo, fastq, flagstat, gtf, pdb, sam, vcf, wig
#	- Gedit: bed, clustal, faidx, fasta, fasta-clustal, fasta-hydro, fasta-nt, fasta-taylor, fasta-zappo, fastq, gtf, pdb, sam, wig
#	- Vim: bed, clustal, faidx, fasta, fastq, gtf, pdb, sam, vcf
#	- Less: bed, clustal, faidx, fasta, fastq, flagstat, gtf, pdb, sam, vcf

printf "bioSyntax: Syntax Highlighting for Computational Biology.\\n"
printf "           For more information, visit bioSyntax.org.\\n"

# Script needs to be run from main bioSyntax directory.
BIOSYNTAX="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "$1" ]; then
	printf "\\n"
	printf " $(tput setaf 2)bio$(tput setaf 1)Syntax$(tput setaf 0):$(tput sgr0) v0.1-beta \\n"
	printf " ---------------------------------\\n"
	printf " install script -- v0.1-beta\\n"
	printf "\\n"
	printf " Usage: \\n"
	printf " bash bioSyntax_UNINSTALL.sh <text_editor> <file_format (optional)> \\n"
	printf "\\n"
	printf " <text_editor> = vim || less || gedit || sublime \\n"
	printf "\\n"
	printf " <file_format> = (blank for all) || fasta || fastq || sam || vcf || pdb ... \\n"
	printf "\\n"
	printf "\\n"
	printf "\\n"
	printf " For more information, visit bioSyntax.org \\n"
	printf "\\n"
	exit 1
fi

if  [ "$(uname)" == "Darwin" ]; then

	if [ "$1" == "sublime" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/bioSyntax/
		TPATH=/Applications/Sublime\ Text.app/Contents/MacOS/Packages/
		
		# REMOVES BIOSYNTAX COLOR SCHEME
		THEME="Color Scheme - bioSyntax.sublime-package"
		sudo rm "${TPATH}/${THEME}"

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			rm -r "${FPATH}"
			printf "bioSyntax for Sublime Text 3 MacOS has uninstalled successfully.\\n"
		else
			rm "${FPATH}/${2}.sublime-syntax"
			printf "bioSyntax support for %s in Sublime Text 3 MacOS has uninstalled successfully.\\n" "$2"
		fi

	elif [ "$1" == "vim" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED
		SOURCE="${BIOSYNTAX}/vim/"
		FPATH=~/.vim/syntax/
		TPATH=~/.vim/ftdetect/
		THEMES=(`find "${BIOSYNTAX}/vim/ftdetect/" -name "*.vim" -print`)
		FILES=(`find "${BIOSYNTAX}/vim/" -name "*.vim" -print`)

		# REMOVES BIOSYNTAX COLOR SCHEME
		rm ~/.vim/colors/bioSyntax.vim

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				rm "${TPATH}/${THEMES[${t}]}"
				rm "${FPATH}/${FILES[${t}]}"
			done
			printf "bioSyntax for vim MacOS has uninstalled successfully.\\n"
		else
			rm "${TPATH}/${2}.vim"
			rm "${FPATH}/${2}.vim"
			printf "bioSyntax support for %s in vim MacOS has uninstalled successfully.\\n" "$2"
		fi

	#elif [ "$1" == "gedit" ]; then

	elif [ "$1" == "less" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED, LISTS FILES TO BE REMOVED
		SOURCE="${BIOSYNTAX}/less/"
		FPATH=/usr/local/opt/source-highlight/share/source-highlight/
		TPATH=/usr/local/opt/source-highlight/share/source-highlight/
		THEMES=(`find "${BIOSYNTAX}/less/" -name "*.style" -print`)
		FILES=(`find "${BIOSYNTAX}/less/" -name "*.lang" -print`)

		# REMOVES BIOSYNTAX COLOR SCHEME
		sudo rm "${TPATH}/biosyntax.outlang"
		sudo rm "${TPATH}/biosyntax-vcf.outlang"

		# REMOVES ALL BIOSYNTAX SYNTAX/STYLE FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				sudo rm "${TPATH}/${THEMES[${t}]}"
				sudo rm "${FPATH}/${FILES[${t}]}"
			done
			printf "bioSyntax for less MacOS has uninstalled successfully.\\n"
		else
			sudo rm "${TPATH}/${2}.style"
			sudo rm "${FPATH}/${2}.lang"
			printf "bioSyntax support for %s in less MacOS has uninstalled successfully.\\n" "$2"
		fi

		# UNINSTALLS SOURCE-HIGHLIGHT FOR LESS
		#brew uinstall source-highlight

	else
		printf "ERROR: %s is not a valid/supported editor for MacOS. Currently, bioSyntax is available for sublime, less, and vim for MacOS.\\n" "$1"
		exit 1
	fi

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

	if [ "$1" == "sublime" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/.config/sublime-text-3/Packages/User/bioSyntax/
		TPATH=/opt/sublime_text/Packages/

		# REMOVES BIOSYNTAX COLOR SCHEME
		THEME="Color Scheme - bioSyntax.sublime-package"
		sudo rm "${TPATH}/${THEME}"

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			rm -r "${FPATH}"
			printf "bioSyntax for Linux Sublime Text 3 has uninstalled successfully.\\n"
		else
			rm "${FPATH}/${2}.sublime-syntax"
			printf "bioSyntax support for %s in Linux Sublime Text 3 has uninstalled successfully.\\n" "$2"
		fi

	elif [ "$1" == "vim" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED, LISTS FILES TO BE REMOVED
		SOURCE="${BIOSYNTAX}/vim/"
		FPATH=~/.vim/syntax/
		TPATH=~/.vim/ftdetect/
		THEMES=(`find "${BIOSYNTAX}/less/" -name "*.style" -print`)
		FILES=(`find "${BIOSYNTAX}/less/" -name "*.lang" -print`)

		# REMOVES BIOSYNTAX COLOR SCHEME
		rm ~/.vim/colors/bioSyntax.vim

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				rm "${TPATH}/${THEMES[${t}]}"
				rm "${FPATH}/${FILES[${t}]}"
			done
			printf "bioSyntax for Linux vim has uninstalled successfully.\\n"
		else
			rm "${TPATH}/${2}.vim"
			rm "${FPATH}/${2}.vim"
			printf "bioSyntax support for %s in Linux vim has uninstalled successfully.\\n" "$2"
		fi

	elif [ "$1" == "gedit" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED, LISTS FILES TO BE REMOVED
		SOURCE="${BIOSYNTAX}/gedit/"
		FPATH=/usr/share/gtksourceview-3.0/language-specs/
		TPATH=/usr/share/gtksourceview-3.0/styles/
		FILES=(`find "${BIOSYNTAX}/gedit/" -name "*.lang" -print`)

		# REMOVES BIOSYNTAX COLOR SCHEME
		THEME="bioSyntax.xml"
		sudo rm "${TPATH}/${THEME}"

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				rm "${FPATH}/${FILES[${f}]}"
			done
			printf "bioSyntax for Linux gedit has uninstalled successfully.\\n"
		else
			rm "${FPATH}/${2}.lang"
			printf "bioSyntax support for %s in Linux gedit has uninstalled successfully.\\n" "$2"
		fi

	elif [ "$1" == "less" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED, LISTS FILES TO BE REMOVED
		SOURCE="${BIOSYNTAX}/less/"
		FPATH=/usr/share/source-highlight/
		TPATH=/usr/share/source-highlight/
		THEMES=(`find "${BIOSYNTAX}/less/" -name "*.style" -print`)
		FILES=(`find "${BIOSYNTAX}/less/" -name "*.lang" -print`)

		# REMOVES BIOSYNTAX COLOR SCHEME
		sudo rm "${TPATH}/biosyntax.outlang"
		sudo rm "${TPATH}/biosyntax-vcf.outlang"

		# REMOVES ALL BIOSYNTAX SYNTAX/STYLE FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				sudo rm "${TPATH}/${THEMES[${t}]}"
				sudo rm "${FPATH}/${FILES[${t}]}"
			done
			printf "bioSyntax for Linux less has uninstalled successfully.\\n"
		else
			sudo rm "${TPATH}/${2}.style"
			sudo rm "${FPATH}/${2}.lang"
			printf "bioSyntax support for %s in Linux less has uninstalled successfully.\\n" "$2"
		fi

		# UNINSTALLS SOURCE-HIGHLIGHT FOR LESS
		#sudo apt-get remove source-highlight

	else
		printf "ERROR: %s is not a valid/supported editor for Linux Ubuntu. Currently, bioSyntax is available for sublime, gedit, vim, and less for Linux Ubuntu.\\n" "$1"
		exit 1
	fi

else

	if [ "$1" == "sublime" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/AppData/Roaming/Sublime\ Text\ 3/Packages/User/bioSyntax/
		TPATH=/c/Program\ Files/Sublime\ Text\ 3/Packages/
		
		# REMOVES BIOSYNTAX COLOR SCHEME
		THEME="Color Scheme - bioSyntax.sublime-package"
		rm "${TPATH}/${THEME}"

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			rm -r "${FPATH}"
			printf "bioSyntax for Windows Sublime Text 3 has uninstalled successfully.\\n"
		else
			rm "${FPATH}/${2}.sublime-syntax"
			printf "bioSyntax support for %s in Windows Sublime Text 3 has uninstalled successfully.\\n" "$2"
		fi

	elif [ "$1" == "vim" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED, LISTS FILES TO BE REMOVED
		SOURCE="${BIOSYNTAX}/vim/"
		FPATH=~/.vim/syntax/
		TPATH=~/.vim/ftdetect/
		THEMES=(`find "${BIOSYNTAX}/less/" -name "*.style" -print`)
		FILES=(`find "${BIOSYNTAX}/less/" -name "*.lang" -print`)

		# REMOVES BIOSYNTAX COLOR SCHEME
		rm ~/.vim/colors/bioSyntax.vim

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				rm "${TPATH}/${THEMES[${t}]}"
				rm "${FPATH}/${FILES[${t}]}"
			done
			printf "bioSyntax for Windows vim has uninstalled successfully.\\n"
		else
			rm "${TPATH}/${2}.vim"
			rm "${FPATH}/${2}.vim"
			printf "bioSyntax support for %s in Windows vim has uninstalled successfully.\\n" "$2"
		fi

	elif [ "$1" == "gedit" ]; then
		# SETS PATHS WHERE SYNTAX/THEME FILES ARE LOCATED, LISTS FILES TO BE REMOVED
		SOURCE="${BIOSYNTAX}/gedit/"
		FPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/language-specs/
		TPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/styles/
		FILES=(`find "${BIOSYNTAX}/gedit/" -name "*.lang" -print`)

		# REMOVES BIOSYNTAX COLOR SCHEME
		THEME="bioSyntax.xml"
		sudo rm "${TPATH}/${THEME}"

		# REMOVES ALL BIOSYNTAX SYNTAX FILES OR THE ONE SPECIFIED
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				rm "${FPATH}/${FILES[${f}]}"
			done
			printf "bioSyntax for Windows gedit has uninstalled successfully.\\n"
		else
			rm "${FPATH}/${2}.lang"
			printf "bioSyntax support for %s in Windows gedit has uninstalled successfully.\\n" "$2"
		fi

	#elif [ "$1" == "less" ]; then

	else
		printf "ERROR: %s is not a valid/supported editor for Windows. Currently, bioSyntax is available for sublime, gedit, and vim for Windows.\\n" "$1"
		exit 1
	fi

fi