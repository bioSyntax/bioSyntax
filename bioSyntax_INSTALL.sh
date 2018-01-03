#!/bin/bash
# General Cross-Platform Installer Script for bioSyntax files
# MUST BE EXECUTED FROM ROOT AS ADMIN
#
# Usage:
# bash bioSyntax_SETUP.sh <text_editor> (<file format>)
#
# AVAILABLE FOR:
#	- Linux Ubuntu: sublime, gedit, vim, less
#	- Windows: sublime, gedit, vim
#	- MacOSX: sublime, vim, less
#
# SYNTAX FILES FORMATS: (see website for most recent list)
#	- Sublime Text 3: bed, clustal, faidx, fasta, fasta-clustal, fasta-hydro,
#	  fasta-nt, fasta-taylor, fasta-zappo, fastq, flagstat, gtf, pdb, sam,
#	  vcf, wig
#	- Gedit: bed, clustal, faidx, fasta, fasta-clustal, fasta-hydro, fasta-nt,
#	  fasta-taylor, fasta-zappo, fastq, gtf, pdb, sam, wig
#	- Vim: bed, clustal, faidx, fasta, fastq, gtf, pdb, sam, vcf
#	- Less: bed, clustal, faidx, fasta, fastq, flagstat, gtf, pdb, sam, vcf
#

printf "bioSyntax: Syntax Highlighting for Computational Biology.\\n"
printf "		   For more information, visit bioSyntax.org.\\n"

# Script needs to be run from main bioSyntax directory.
BIOSYNTAX="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "$1" ]; then
	printf "\\n"
	printf " $(tput setaf 2)bio$(tput setaf 1)Syntax$(tput setaf 0):$(tput sgr0) v0.1-beta \\n"
	printf " ---------------------------------\\n"
	printf " install script -- v0.1-beta\\n"
	printf "\\n"
	printf " Usage: \\n"
	printf " bash bioSyntax_SETUP.sh <text_editor> <file_format (optional)> \\n"
	printf "\\n"
	printf " <text_editor> = vim || less || gedit || sublime \\n"
	printf "\\n"
	printf " <file_format> = (blank for all) || fasta || fastq || sam || vcf || pdb ... \\n"
	printf "\\n"
	printf " Notes: \\n "
	printf "   -- auto-installation requires some commands to be run as root \\n"
	printf "   -- less installation will install 'source-highlight' to function \\n"
	printf "\\n"
	printf "\\n"
	printf " For more information, visit bioSyntax.org \\n"
	printf "\\n"
	exit 1
fi


# Status message for Sublime / Vim
printf "\n"

if [ "$1" == "sublime" ]; then

	printf " Installing sublime-bioSyntax...\n\n"
	printf "  (Y): Install manually with script.\n"
	printf "  (N): Install via sublime Package Control.\n"
	printf "\n"
	printf "\t- Open Sublime.\n"
	printf "\t- Open command line: ctrl+shift+p\n"
	printf "\t- 'Package Control:bioSyntax'\n"
	printf ""

	read -p "  Enter: " yn
	case $yn in
		[Yy]*)
			printf "\n" # continue
			;;
		[Nn]*)
			exit 1
			;;
	esac

elif [ "$1" == "vim" ]; then

	printf " Installing vim-bioSyntax...\n\n"
	printf "  (1): Install manually with script.\n"
	printf "  (2): Install via Pathogen (if installed).\n"
	printf "\n"
	printf "\tcd ~/.vim/bundle &&\n"
	printf "\tgit clone https://github.com/bioSyntax/bioSyntax-vim.git\n"
	printf "\n"
	printf "  (3): exit\n"
	printf "\n"

	read -p "  Enter: " yn
	case $yn in
		[1]*)
			printf "\n" # continue
			;;
		[2]*)
			cd ~/.vim/bundle &&
			git clone https://github.com/bioSyntax/bioSyntax-vim.git &&
			exit 0
			;;
		*)
			exit 1
			;;
	esac
elif [ "$1" == "less" ]; then

	printf " Installing less-bioSyntax...\n\n"
	printf "  (y): Install source highlight + bioSyntax\n"
	printf "  (n): exit\n"
	printf "\n"
	printf " Note:\n"
	printf "\t- less installation requires source-highlight\n"
	printf "\t  it will be installed or updated.\n"
	printf "\t- Writing to the source-highlight folder will then require\n"
	printf "\t  sudo commands.\n"
	read -p "  Enter: " yn
	case $yn in
		[Yy]*)
			printf "\n" # continue
			;;
		*)
			exit 0
			;;
	esac
fi
### Gedit prompt

# Mac OSX - Available for: Sublime Text 3, Vim
if  [ "$(uname)" == "Darwin" ]; then

	printf " "
	if [ "$1" == "sublime" ]; then

		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Mac OSX Sublime Text 3.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
		if [ ! -d "${FPATH}" ]; then
			sudo mkdir "${FPATH}";
		fi
		TPATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGES IT TO READ-ONLY
		THEME="bioSyntax.tmTheme"
		chmod 0644 "${SOURCE}/${THEME}"
		cp "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILES=(`find "${BIOSYNTAX}/sublime/" -name "*.sublime-syntax" -print`)
		FILE=".sublime-syntax"

	elif [ "$1" == "vim" ]; then

		printf "Setting up %s syntax file(s) and style file(s) for Mac OSX Vim.\\n" "$2"
		# CREATES/SETS .vimrc FILE AND ENABLES AUTOMATIC SYNTAX HIGHLIGHTING
		if [ ! -e ~/.vimrc ]; then
			touch ~/.vimrc;
		fi
		if ! grep -q ":syntax enable" ~/.vimrc; then
			echo ":syntax enable" >> ~/.vimrc;
		fi

		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/vim/"
		if [ ! -d ~/.vim/ ]; then
			mkdir ~/.vim/;
		fi
		FPATH=~/.vim/syntax/
		if [ ! -d "${FPATH}" ]; then
			mkdir "${FPATH}";
		fi
		TPATH=~/.vim/ftdetect/
		if [ ! -d "${TPATH}" ]; then
			mkdir "${TPATH}";
		fi

		# COPIES COLOR SCHEME TO RIGHT PATH AND CHANGES IT TO READ-ONLY
		if [ ! -d ~/.vim/colors/ ]; then
			mkdir ~/.vim/colors/;
		fi

		chmod 0644 "${BIOSYNTAX}/vim/colors/bioSyntax.vim"
		cp "${BIOSYNTAX}/vim/colors/bioSyntax.vim" ~/.vim/colors/

		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		THEMES=(`find "${BIOSYNTAX}/vim/ftdetect/" -name "*.vim" -print`)
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				chmod 0644 "${THEMES[${t}]}"
				cp "${THEMES[${t}]}" "${TPATH}"
			done
		else
			chmod 0644 "${BIOSYNTAX}/vim/ftdetect/{$2}.vim"
			cp "${BIOSYNTAX}/vim/ftdetect/{$2}.vim" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILE(S)
		FILES=(`find "${BIOSYNTAX}/vim/syntax/" -name "*.vim" -print`)
		FILE=".vim"

	# gedit currently not supported for mac
	#elif [ "$1" == "gedit" ]; then
	#	printf "Setting up %s lang file(s) and bioSyntax theme for Mac OSX Gedit.\\n" "$2"
	#	FPATH=/
	#	TPATH=/

	elif [ "$1" == "less" ]; then

		printf "Installing/updating brew and source-highlight for Less and setting up %s lang file(s) and style file(s) for Mac OSX Less.\\n" "$2"
		# CHECKS IF BREW IS INSTALLED. IF IT IS, UPDATES IT, IF NOT, INSTALLS IT
		which -s brew
		if [[ $? != 0 ]] ; then
			printf "bioSyntax for less is dependent on the source-highlight package, which needs to be installed via Homebrew. Homebrew is not currently installed on your system. Install brew now?\\n"
			read ans
			if echo "$ans" | grep -iq "^y"; then
				ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
			else
				printf "bioSyntax installation cancelled.\\n"
				exit 0
			fi
		else
			printf "bioSyntax for less is dependent on the source-highlight package, which needs to be installed via Homebrew. Update brew now?\\n"
			read ans
			if echo "$ans" | grep -iq "^y"; then
				brew update
			fi
		fi

		# CHECKS IF SOURCE-HIGHLIGHT PACKAGE IS INSTALLED. IF IT IS, UPDATES IT, IF NOT, INSTALLS IT
		if [[ ! -z `brew ls --versions "source-highlight"` ]]; then
			printf "source-highlight is installed in your system. Update now?\\n"
			read ans
			if echo "$ans" | grep -iq "^y"; then
				brew upgrade source-highlight
			fi
		else
			printf "source-highlight needs to be installed in your system for bioSyntax to function. Install now?\\n"
			read ans
			if echo "$ans" | grep -iq "^y"; then
				brew install source-highlight
			else
				printf "bioSyntax installation cancelled.\\n"
				exit 0
			fi
		fi

		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME FILE(S), LESSPIPE SCRIPT AND SYNTAX FILE(S)
		SOURCE="${BIOSYNTAX}/less/"
		FPATH=/usr/local/opt/source-highlight/share/source-highlight/
		TPATH=/usr/local/opt/source-highlight/share/source-highlight/

		# DETECTS DEFAULT SHELL AND APPENDS LESSPIPE TO APPROPRIATE RC FILE
		if [ `echo $SHELL` == "/bin/bash" ]; then
			if ! grep -q "bioSyntax" ~/.bash_profile; then
				cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.bash_profile;
			fi
			if ! grep -q "bioSyntax" ~/.bashrc; then
				cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.bashrc;
			fi
		elif [ `echo $SHELL` == "/bin/zsh" ]; then
			if ! grep -q "bioSyntax" ~/.zprofile; then
				cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.zprofile;
			fi
			if ! grep -q "bioSyntax" ~/.zshrc; then
				cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.zshrc;
			fi
		else
			if ! grep -q "bioSyntax" ~/.profile; then
				cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.profile;
			fi
		fi

		# COPIES LESSPIPE SCRIPT AND THEME FILE(S) TO RIGHT PATHS, CHANGES LESSPIPE SCRIPT TO EXECUTABLE AND THE REST TO READ-ONLY
		sudo cp "${BIOSYNTAX}/less/src-hilite-lesspipe_BIO.sh" "/usr/local/bin/src-hilite-lesspipe.sh"
		sudo chmod 755 "/usr/local/bin/src-hilite-lesspipe.sh"
		sudo cp "${BIOSYNTAX}/less/biosyntax.outlang" "${TPATH}"
		sudo cp "${BIOSYNTAX}/less/bioSyntax-vcf.outlang" "${TPATH}"

		THEMES=(`find "${BIOSYNTAX}/less/" -name "*.style" -print`)
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				sudo chmod 0644 "${THEMES[${t}]}"
				sudo cp "${THEMES[${t}]}" "${TPATH}"
			done
		else
			sudo chmod 0644 "${BIOSYNTAX}/less/${2}.style"
			sudo cp "${BIOSYNTAX}/less/${2}.style" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILES
		FILES=(`find "${BIOSYNTAX}/less/" -name "*.lang" -print`)
		FILE=".lang"
	else
		printf "ERROR: %s is not a valid/supported editor for MacOS. Currently, bioSyntax is available for sublime, less, and vim for MacOS.\\n" "$1"
		exit 1
	fi


	# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
	# LESS/GEDIT INSTALLATION REQUIRES SUDO
	if [ -z "$2" ]; then
		if [ "$1" == "less" || "$1" == "gedit" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				chmod 0644 "${FILES[${f}]}"
				sudo cp "${FILES[${f}]}" "${FPATH}"
			done
		else
			for ((f=0; f<${#FILES[@]}; f++)); do
				chmod 0644 "${FILES[${f}]}"
				cp "${FILES[${f}]}" "${FPATH}"
			done
		fi
	elif [ "$1" == "less" || "$1" == "gedit" ]; then
		chmod 0644 "${SOURCE}/${2}${FILE}"
		sudo cp "${SOURCE}/${2}${FILE}" "${FPATH}"
	else
		chmod 0644 "${SOURCE}/${2}${FILE}"
		cp "${SOURCE}/${2}${FILE}" "${FPATH}"
	fi


# Linux Ubuntu - Available for: Sublime Text 3, Gedit, Vim, Less
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	if [ "$1" == "sublime" ]; then

		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Linux Sublime Text 3.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/.config/sublime-text-3/Packages/User/
		if [ ! -d "${FPATH}" ]; then
			mkdir "${FPATH}";
		fi
		TPATH=~/.config/sublime-text-3/Packages/User/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
		THEME="bioSyntax.tmTheme"

		chmod 0644 "${SOURCE}/${THEME}"
		cp "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILES=(`find "${BIOSYNTAX}/sublime/" -name "*" -print`)
		FILE=".sublime-syntax"

	elif [ "$1" == "gedit" ]; then

		printf "Setting up %s lang file(s) and bioSyntax theme for Linux Gedit.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/gedit/"
		FPATH=/usr/share/gtksourceview-3.0/language-specs/
		TPATH=/usr/share/gtksourceview-3.0/styles/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
		THEME="bioSyntax.xml"
		chmod 0644 "${SOURCE}/${THEME}"
		sudo cp "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILES=(`find "${BIOSYNTAX}/gedit/" -name "*.lang" -print`)
		FILE=".lang"

	elif [ "$1" == "vim" ]; then

		printf "Setting up %s syntax file(s) and style file(s) for Linux vim.\\n" "$2"
		# CREATES/SETS .vimrc FILE AND ENABLES AUTOMATIC SYNTAX HIGHLIGHTING
		if [ ! -e ~/.vimrc ]; then
			touch ~/.vimrc;
		fi
		if ! grep -q "syntax enable" ~/.vimrc; then
			echo "syntax enable" >> ~/.vimrc;
		fi
		if [ ! -d ~/.vim/ ]; then
			mkdir ~/.vim/;
		fi

		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/vim/"
		FPATH=~/.vim/syntax/
		if [ ! -d "${FPATH}" ]; then
			mkdir "${FPATH}";
		fi
		TPATH=~/.vim/ftdetect/
		if [ ! -d "${TPATH}" ]; then
			mkdir "${TPATH}";
		fi

		# COPIES COLOR SCHEME TO RIGHT PATH AND CHANGES IT TO READ-ONLY
		if [ ! -d ~/.vim/colors/ ]; then
			mkdir ~/.vim/colors/;
		fi
		chmod 0644 "${BIOSYNTAX}/vim/colors/bioSyntax.vim"
		cp "${BIOSYNTAX}/vim/colors/bioSyntax.vim" ~/.vim/colors/

		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		THEMES=(`find "${BIOSYNTAX}/vim/ftdetect/" -name "*.vim" -print`)
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				chmod 0644 "${THEMES[${t}]}"
				cp "${THEMES[${t}]}" "${TPATH}"
			done
		else
			chmod 0644 "${BIOSYNTAX}/vim/ftdetect/{$2}.vim"
			cp "${BIOSYNTAX}/vim/ftdetect/{$2}.vim" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILE(S)
		FILES=(`find "${BIOSYNTAX}/vim/syntax/" -name "*.vim" -print`)
		FILE=".vim"

	elif [ "$1" == "less" ]; then

		printf "Installing/updating source-highlight for Less and setting up %s lang file(s) and style file(s) for Linux Less.\\n" "$2"
		# UPDATES APPS AND UPDATES/INSTALLS SOURCE-HIGHLIGHT
		# PROMPT MOVED UPSTREAM
		sudo apt-get update
		sudo apt-get install source-highlight

		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/less/"
		FPATH=/usr/share/source-highlight/
		TPATH=/usr/share/source-highlight/

		# DETECTS DEFAULT SHELL AND APPENDS LESSPIPE TO APPROPRIATE RC FILE
		if [ `echo $SHELL` == "/bin/bash" ]; then
			if ! grep -q "bioSyntax" ~/.bash_profile; then
				cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.bash_profile;
			fi
			if ! grep -q "bioSyntax" ~/.bashrc; then
				cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.bashrc;
			fi
		elif [ `echo $SHELL` == "/bin/zsh" ]; then
			if ! grep -q "bioSyntax" ~/.zprofile; then
				cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.zprofile;
			fi
			if ! grep -q "bioSyntax" ~/.zshrc; then
				cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.zshrc;
			fi
		else
			if ! grep -q "bioSyntax" ~/.profile; then
				cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.profile;
			fi
		fi

		# COPIES LESSPIPE SCRIPT AND THEME FILE(S) TO RIGHT PATHS, CHANGES LESSPIPE SCRIPT TO EXECUTABLE AND THE REST TO READ-ONLY
		sudo cp "/less/src-hilite-lesspipe_BIO.sh" "${TPATH}/src-hilite-lesspipe.sh"
		chmod 755 "${TPATH}/src-hilite-lesspipe.sh"
		sudo cp "/less/biosyntax.outlang" "${TPATH}"
		sudo cp "/less/bioSyntax-vcf.outlang" "${TPATH}"

		THEMES=(`find "${BIOSYNTAX}/less/" -name "*.style" -print`)
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				sudo chmod 0644 "${THEMES[${t}]}"
				sudo cp "${THEMES[${t}]}" "${TPATH}"
			done
		else
			sudo chmod 0644 "${BIOSYNTAX}/less/${2}.style"
			sudo cp "${BIOSYNTAX}/less/${2}.style" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILES
		FILES=(`find "${BIOSYNTAX}/less/" -name "*.lang" -print`)
		FILE=".lang"
	else
		printf "ERROR: %s is not a valid/supported editor for Linux Ubuntu. Currently, bioSyntax is available for sublime, gedit, vim, and less for Linux Ubuntu.\\n" "$1"
		exit 1
	fi


	# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
	# LESS/GEDIT INSTALLATION REQUIRES SUDO
	if [ -z "$2" ]; then
		if [ "$1" == "less" || "$1" == "gedit" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				chmod 0644 "${FILES[${f}]}"
				sudo cp "${FILES[${f}]}" "${FPATH}"
			done
		else
			for ((f=0; f<${#FILES[@]}; f++)); do
				chmod 0644 "${FILES[${f}]}"
				cp "${FILES[${f}]}" "${FPATH}"
			done
		fi
	elif [ "$1" == "less" || "$1" == "gedit" ]; then
		chmod 0644 "${SOURCE}/${2}${FILE}"
		sudo cp "${SOURCE}/${2}${FILE}" "${FPATH}"
	else
		chmod 0644 "${SOURCE}/${2}${FILE}"
		cp "${SOURCE}/${2}${FILE}" "${FPATH}"
	fi



# Windows - Available for: Sublime Text 3, Gedit, Vim
else
	if [ "$1" == "sublime" ]; then

		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Windows Sublime Text 3.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/AppData/Roaming/Sublime\ Text\ 3/Packages/User/
		if [ ! -d "${FPATH}" ]; then
			mkdir "${FPATH}";
		fi
		TPATH=~/AppData/Roaming/Sublime\ Text\ 3/Packages/User/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
		THEME="bioSyntax.tmTheme"
		chmod 0644 "${SOURCE}/${THEME}"
		cp "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILES=(`find "${BIOSYNTAX}/sublime/" -name "*.sublime-syntax" -print`)
		FILE=".sublime-syntax"

	elif [ "$1" == "gedit" ]; then

		printf "Setting up %s lang file(s) and bioSyntax theme for Windows Gedit.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/gedit/"
		FPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/language-specs/
		TPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/styles/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
		THEME="bioSyntax.xml"
		chmod 0644 "${SOURCE}/${THEME}"
		cp "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILES=(`find "${BIOSYNTAX}/gedit/" -name "*.lang" -print`)
		FILE=".lang"

	elif [ "$1" == "vim" ]; then

		printf "Setting up %s syntax file(s) and style file(s) for Windows vim.\\n" "$2"
		# CREATES/SETS .vimrc FILE AND ENABLES AUTOMATIC SYNTAX HIGHLIGHTING
		if [ ! -e $HOME/_vimrc ]; then
			touch $HOME/_vimrc;
		fi
		if ! grep -q ":syntax enable" $HOME/_vimrc; then
			echo ":syntax enable" >> $HOME/_vimrc;
		fi
		if [ ! -d $HOME/vimfiles/ ]; then
			mkdir $HOME/vimfiles/;
		fi

		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/vim/"
		FPATH=$HOME/vimfiles/syntax/
		if [ ! -d "${FPATH}" ]; then
			mkdir "${FPATH}";
		fi
		TPATH=$HOME/vimfiles/ftdetect/
		if [ ! -d "${TPATH}" ]; then
			mkdir "${TPATH}";
		fi

		# COPIES COLOR SCHEME TO RIGHT PATH AND CHANGES IT TO READ-ONLY
		if [ ! -d $HOME/vimfiles/colors/ ]; then
			mkdir $HOME/vimfiles/colors;
		fi
		chmod 0644 "${BIOSYNTAX}/vim/colors/bioSyntax.vim"
		cp "${BIOSYNTAX}/vim/colors/bioSyntax.vim" $HOME/vimfiles/colors/

		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		THEMES=(`find "${BIOSYNTAX}/vim/ftdetect/" -name "*.vim" -print`)
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				chmod 0644 "${THEMES[${t}]}"
				cp "${THEMES[${t}]}" "${TPATH}"
			done
		else
			chmod 0644 "${BIOSYNTAX}/vim/ftdetect/{$2}.vim"
			cp "${BIOSYNTAX}/vim/ftdetect/{$2}.vim" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILE(S)
		FILES=(`find "${BIOSYNTAX}/vim/" -name "*.vim" -print`)
		FILE=".vim"

	#elif [ "$1" == "less" ]; then

		#printf "Installing/updating source-highlight for Less and setting up %s lang file(s) and style file(s) for Windows Less.\\n" "$2"
		#	FPATH=/
		#	TPATH=/

	else
.
	fi

	# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
	if [ -z "$2" ]; then
		for ((f=0; f<${#FILES[@]}; f++)); do
			chmod 0644 "${FILES[${f}]}"
			cp "${FILES[${f}]}" "${FPATH}"
		done
	else
		chmod 0644 "${SOURCE}/${2}${FILE}"
		cp "${SOURCE}/${2}${FILE}" "${FPATH}"
	fi

fi

printf "Installation successful. Restart %s and you will now have pretty %s formats! Thank you for your support!\\n" "$1" "$2"
exit 0

