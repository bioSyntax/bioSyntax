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

LOGO="$(tput setaf 2)bio$(tput setaf 1)Syntax$(tput setaf 0):$(tput sgr0)"
printf "$LOGO Syntax Highlighting for Computational Biology.\\n"
printf "\tFor more information, visit bioSyntax.org.\\n"

# Script needs to be run from main bioSyntax directory.
BIOSYNTAX="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "$1" ]; then
	printf "\\n"
	printf " $LOGO version 0.1.0 \\n"
	printf " ---------------------------------\\n"
	printf " install script -- v0.1.0\\n"
	printf "\\n"
	printf " Usage: \\n"
	printf " bash bioSyntax_INSTALL.sh <text_editor> <file_format (optional)> \\n"
	printf "\\n"
	printf " <text_editor> = vim || less || gedit || sublime \\n"
	printf " <file_format> = (blank for all) || fasta || fastq || sam || vcf || pdb ... \\n"
	printf "\\n"
	printf " OR\\n"
	printf "\\n"
	printf " Enter: (1) vim. (2) less. (3) gedit. (4) sublime. (Q) quit\\n"
	printf " Notes: \\n "
	printf "   -- auto-installation requires some commands to be run as root \\n"
	printf "   -- installer script requires bash/zsh \\n"
	printf "   -- avoid running script in paths with whitespaces \\n"
	printf "   -- less installation requires bioSyntax folder to be placed in and run from root\\n"
	printf "\\n"
	printf " For detailed install instructions, visit bioSyntax.org/install \\n"
	printf "\\n"

	# Allow user to enter which port to install
	read -p "  Enter: " yn
	case $yn in
		[1]*)
			port='vim'
			;;
		[2]*)
			port='less'
			;;
		[3]*)
			port='gedit'
			;;
		[4]*)
			port='sublime'
			;;
		*)
			exit 1
			;;
	esac

else
	port=$1
fi


# Status message for Sublime / Vim
printf "\n"

if [ "$port" == "sublime" ]; then

	printf " Installing sublime-bioSyntax...\n\n"
	printf "  (Y): Install manually with script (may require sudo depending on OS).\n"
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

elif [ "$port" == "vim" ]; then

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
elif [ "$port" == "less" ]; then

	printf " Installing less-bioSyntax...\n\n"
	printf "  (y): Install source highlight + bioSyntax\n"
	printf "  (n): exit\n"
	printf "\n"
	printf " Note:\n"
	printf "\t- less installation requires bioSyntax folder to be placed in and run from the root directory\n"
	printf "\t- less installation requires source-highlight\n"
	printf "\t  it will be installed or updated. (requires sudo)\n"
	printf "\t"
	printf "\t- 'less' will be aliased to 'less -NSi -#10' for readability."
    printf "\t   To unset this, edit your '~/.bashrc' file after install."

	read -p "  Enter: " yn
	case $yn in
		[Yy]*)
			printf "\n" # continue
			;;
		*)
			exit 0
			;;
	esac
elif [ "$port" == "gedit" ]; then

	printf " Installing gedit-bioSyntax...\n\n"
	printf "  (y): Install bioSyntax for gedit / GTK sourceview 3.0\n"
	printf "  (n): exit\n"
	printf "\n"
	read -p "  Enter: " yn
	case $yn in
		[Yy]*)
			printf "\n" # continue
			;;
		*)
			exit 0
			;;
	esac
else
	printf " I don't know which port of bioSyntax you would like to install.\n"
	printf " try \`bash bioSyntax_INSTALL.sh\' for usage\n\n"
	exit 3 # exit with incorrect port declared
fi

# Mac OSX - Available for: Sublime Text 3, Vim
if  [ "$(uname)" == "Darwin" ]; then

	printf " "
	if [ "$port" == "sublime" ]; then

		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Mac OSX Sublime Text 3.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/bioSyntax/
		if [ ! -d "${FPATH}" ]; then
			sudo mkdir "${FPATH}";
		fi
		TPATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/bioSyntax/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGES IT TO READ-ONLY
		THEME="bioSyntax.tmTheme"
		sudo install --mode=0644 "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILE=".sublime-syntax"
		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

	elif [ "$port" == "vim" ]; then

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

		sudo install --mode=0644 "${SOURCE}/colors/bioSyntax.vim" ~/.vim/colors/

		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		THEME=".vim"
		THEMES=(`find "${SOURCE}/ftdetect/" -name "*${THEME}" -print`)

		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				sudo install --mode=0644 "${THEMES[${t}]}" "${TPATH}"
			done
		else
			sudo install --mode=0644 "${SOURCE}/ftdetect/{$2}.vim" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILE(S)
		FILE=".vim"
		FILES=(`find "${SOURCE}/syntax/" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		# SUBLIME (MANUAL, as of MacOS High Sierra Update)/LESS/GEDIT INSTALLATION REQUIRES SUDO
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				sudo install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			sudo install --mode=0644 "${SOURCE}/syntax/${2}${FILE}" "${FPATH}"
		fi


	# gedit currently not supported for mac
	#elif [ "$port" == "gedit" ]; then
	#	printf "Setting up %s lang file(s) and bioSyntax theme for Mac OSX Gedit.\\n" "$2"
	#	FPATH=/
	#	TPATH=/

	elif [ "$port" == "less" ]; then

		printf "Installing/updating brew and source-highlight for Less and setting up %s lang file(s) and style file(s) for Mac OSX Less.\\n" "$2"
		# CHECKS IF BREW IS INSTALLED. IF IT IS, UPDATES IT, IF NOT, INSTALLS IT
		which -s brew
		if [[ $? != 0 ]] ; then
			printf "bioSyntax for less is dependent on the source-highlight package, which needs to be installed via Homebrew. Homebrew is not currently installed on your system. Install brew now? (y/n)\\n"
			read ans
			if echo "$ans" | grep -iq "^y"; then
				ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
			else
				printf "bioSyntax installation cancelled.\\n"
				exit 0
			fi
		else
			printf "bioSyntax for less is dependent on the source-highlight package, which needs to be installed via Homebrew. Update brew now? (y/n)\\n"
			read ans
			if echo "$ans" | grep -iq "^y"; then
				brew update
			fi
		fi

		# CHECKS IF SOURCE-HIGHLIGHT PACKAGE IS INSTALLED. IF IT IS, UPDATES IT, IF NOT, INSTALLS IT
		if [[ ! -z `brew ls --versions "source-highlight"` ]]; then
			printf "source-highlight is installed in your system. Update now? (y/n)\\n"
			read ans
			if echo "$ans" | grep -iq "^y"; then
				brew upgrade source-highlight
			fi
		else
			printf "source-highlight needs to be installed in your system for bioSyntax to function. Install now? (y/n)\\n"
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
		HIGHLIGHT="/usr/local/opt/source-highlight/share/source-highlight/"
		FPATH=$HIGHLIGHT
		TPATH=$HIGHLIGHT

		# DETECTS DEFAULT SHELL AND APPENDS LESSPIPE TO APPROPRIATE RC FILE
		if [ `echo $SHELL` == "/bin/bash" ]; then
			if ! grep -q "bioSyntax" ~/.bash_profile; then
				cat ${SOURCE}/bp_append.txt >> ~/.bash_profile;
			fi
			if ! grep -q "bioSyntax" ~/.bashrc; then
				cat ${SOURCE}/bp_append.txt >> ~/.bashrc;
			fi
		elif [ `echo $SHELL` == "/bin/zsh" ]; then
			if ! grep -q "bioSyntax" ~/.zprofile; then
				cat ${SOURCE}/bp_append.txt >> ~/.zprofile;
			fi
			if ! grep -q "bioSyntax" ~/.zshrc; then
				cat ${SOURCE}/bp_append.txt >> ~/.zshrc;
			fi
		else
			if ! grep -q "bioSyntax" ~/.profile; then
				cat ${SOURCE}/bp_append.txt >> ~/.profile;
			fi
		fi

		# COPIES LESSPIPE SCRIPT AND THEME FILE(S) TO RIGHT PATHS, CHANGES LESSPIPE SCRIPT TO EXECUTABLE AND THE REST TO READ-ONLY
		sudo install --mode=0755 "${SOURCE}/src-hilite-lesspipe-bio.sh" "/usr/local/bin/src-hilite-lesspipe.sh"
		sudo install --mode=0755 "${SOURCE}/bioSyntax.outlang" "${TPATH}"
		sudo install --mode=0755 "${SOURCE}/bioSyntax-vcf.outlang" "${TPATH}"

		THEME=".style"
		THEMES=(`find "${SOURCE}" -name "*${THEME}" -print`)

		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				sudo install --mode=0644 "${THEMES[${t}]}" "${TPATH}"
			done
		else
			sudo install --mode=0644 "${SOURCE}/${2}${THEME}" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILES
		FILE=".lang"
		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		# SUBLIME (MANUAL, as of MacOS High Sierra Update)/LESS/GEDIT INSTALLATION REQUIRES SUDO
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				sudo install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			sudo install --mode=0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
		fi

	else
		printf "ERROR: %s is not a valid/supported editor for MacOS. Currently, bioSyntax is available for sublime, less, and vim for MacOS.\\n" "$port"
		exit 1
	fi

# Linux Ubuntu - Available for: Sublime Text 3, Gedit, Vim, Less
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	if [ "$port" == "sublime" ]; then

		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Linux Sublime Text 3.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/.config/sublime-text-3/Packages/bioSyntax/
		if [ ! -d "${FPATH}" ]; then
			mkdir "${FPATH}";
		fi
		TPATH=~/.config/sublime-text-3/Packages/bioSyntax/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
		THEME="bioSyntax.tmTheme"

		install --mode=0644 "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILE=".sublime-syntax"
		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		# LESS/GEDIT INSTALLATION REQUIRES SUDO
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
		fi

	elif [ "$port" == "gedit" ]; then

		printf "Setting up %s lang file(s) and bioSyntax theme for Linux Gedit.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/gedit"
		FPATH="$HOME/.local/share/gtksourceview-3.0/language-specs"
		TPATH="$HOME/.local/share/gtksourceview-3.0/styles"

		# MAKE DIR IF IT DOESN'T EXIST
		mkdir -p $TPATH
		mkdir -p $FPATH

		# COPIES THEME FILE TO RIGHT PATH AND CHANGES IT TO READ-ONLY
		THEME="bioSyntax.xml"

		install --mode=0644 "${SOURCE}/styles/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILE=".lang"
		FILES=(`find ${SOURCE}/language-specs/ -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		# LESS/GEDIT INSTALLATION REQUIRES SUDO
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/language-specs/${2}${FILE}" "${FPATH}"
		fi

	elif [ "$port" == "vim" ]; then

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
		install --mode=0644 "${SOURCE}/colors/bioSyntax.vim" ~/.vim/colors/

		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		THEME=".vim"
		THEMES=(`find "${SOURCE}/ftdetect/" -name "*${THEME}" -print`)

		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				install --mode=0644 "${THEMES[${t}]}" "${TPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/ftdetect/{$2}${THEME}" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILE(S)
		FILE=".vim"
		FILES=(`find "${SOURCE}/syntax/" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		# LESS/GEDIT INSTALLATION REQUIRES SUDO
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/syntax/${2}${FILE}" "${FPATH}"
		fi


	elif [ "$port" == "less" ]; then

		printf "Installing/updating source-highlight for Less and setting up\\n"
		printf "%s lang file(s) and style file(s) for Linux Less.\\n" "$2"
		printf "Run:\\n"
		printf "  sudo apt-get update\\n"
		printf "  sudo apt-get install source-highlight\\n"
		# UPDATES APPS AND UPDATES/INSTALLS SOURCE-HIGHLIGHT
		# PROMPT MOVED UPSTREAM
		sudo apt-get update
		sudo apt-get install source-highlight

		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/less/"
		HIGHLIGHT="$HOME/.local/share/source-highlight"
		FPATH=$HIGHLIGHT
		TPATH=$HIGHLIGHT
		mkdir -p $HIGHLIGHT

		# DETECTS DEFAULT SHELL AND APPENDS LESSPIPE TO APPROPRIATE RC FILE
		if [ `echo $SHELL` == "/bin/bash" ]; then
			if ! grep -q "bioSyntax" ~/.bash_profile; then
				cat ${SOURCE}/rc_append.txt >> ~/.bash_profile;
			fi
			if ! grep -q "bioSyntax" ~/.bashrc; then
				cat ${SOURCE}/rc_append.txt >> ~/.bashrc;
			fi
		elif [ `echo $SHELL` == "/bin/zsh" ]; then
			if ! grep -q "bioSyntax" ~/.zprofile; then
				cat ${SOURCE}/rc_append.txt >> ~/.zprofile;
			fi
			if ! grep -q "bioSyntax" ~/.zshrc; then
				cat ${SOURCE}/rc_append.txt >> ~/.zshrc;
			fi
		else
			if ! grep -q "bioSyntax" ~/.profile; then
				cat ${SOURCE}/rc_append.txt >> ~/.profile;
			fi
		fi

		# COPIES LESSPIPE SCRIPT AND THEME FILE(S) TO RIGHT PATHS, CHANGES LESSPIPE SCRIPT TO EXECUTABLE AND THE REST TO READ-ONLY
		install --mode=0755 "${SOURCE}/src-hilite-lesspipe-bio.sh" "${TPATH}/src-hilite-lesspipe-bio.sh"
		sudo install --mode=0755 "${SOURCE}/bioSyntax.outlang" "${TPATH}"
		sudo install --mode=0755 "${SOURCE}/bioSyntax-vcf.outlang" "${TPATH}"

		THEME=".style"
		THEMES=(`find "${SOURCE}" -name "*${THEME}" -print`)

		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				install --mode=0644 "${THEMES[${t}]}" "${TPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/${2}${THEME}" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILES
		FILE=".lang"
		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		# LESS/GEDIT INSTALLATION REQUIRES SUDO
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
		fi


	else
		printf "ERROR: %s is not a valid/supported editor for Linux Ubuntu. Currently, bioSyntax is available for sublime, gedit, vim, and less for Linux Ubuntu.\\n" "$port"
		exit 1
	fi

# Windows - Available for: Sublime Text 3, Gedit, Vim
else
	if [ "$port" == "sublime" ]; then

		printf "Setting up %s syntax file(s) and bioSyntax Color Scheme for Windows Sublime Text 3.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/sublime/"
		FPATH=~/AppData/Roaming/Sublime\ Text\ 3/Packages/bioSyntax/
		if [ ! -d "${FPATH}" ]; then
			mkdir "${FPATH}";
		fi
		TPATH=~/AppData/Roaming/Sublime\ Text\ 3/Packages/bioSyntax/

		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
		THEME="bioSyntax.tmTheme"
		install --mode=0644 "${SOURCE}/${THEME}" "${TPATH}/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILE=".sublime-syntax"
		FILES=(`find "${SOURCE}" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/${2}${FILE}" "${FPATH}"
		fi

	elif [ "$port" == "gedit" ]; then

		printf "Setting up %s lang file(s) and bioSyntax theme for Windows Gedit.\\n" "$2"
		# SETS/CREATES PATHS & VARIABLES FOR PLACING THEME AND SYNTAX FILES
		SOURCE="${BIOSYNTAX}/gedit"
		FPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/language-specs
		TPATH=/c/Program\ Files/gedit/share/gtksourceview-3.0/styles

		# MAKE DIR IF IT DOESN'T EXIST
		mkdir -p $TPATH
		mkdir -p $FPATH

		# COPIES THEME FILE TO RIGHT PATH AND CHANGESG IT TO READ-ONLY
		THEME="bioSyntax.xml"

		install --mode=0644 "${SOURCE}/styles/${THEME}" "${TPATH}/styles/${THEME}"

		# LISTS ALL SYNTAX FILES
		FILE=".lang"
		FILES=(`find "${SOURCE}/language-specs/" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/language-specs/${2}${FILE}" "${FPATH}"
		fi

	elif [ "$port" == "vim" ]; then

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
		install --mode=0644 "${SOURCE}/colors/bioSyntax.vim" $HOME/vimfiles/colors/

		# COPIES ALL AUTO-DETECT FILES T0 RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		THEME=".vim"
		THEMES=(`find "${SOURCE}/ftdetect/" -name "*${THEME}" -print`)
		if [ -z "$2" ]; then
			for ((t=0; t<${#THEMES[@]}; t++)); do
				install --mode=0644 "${THEMES[${t}]}" "${TPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/ftdetect/{$2}${THEME}" "${TPATH}"
		fi

		# LISTS ALL SYNTAX FILE(S)
		FILE=".vim"
		FILES=(`find "${SOURCE}/syntax/" -name "*${FILE}" -print`)

		# COPIES SYNTAX FILE(S) TO RIGHT PATHS AND CHANGES THEM TO READ-ONLY
		if [ -z "$2" ]; then
			for ((f=0; f<${#FILES[@]}; f++)); do
				install --mode=0644 "${FILES[${f}]}" "${FPATH}"
			done
		else
			install --mode=0644 "${SOURCE}/syntax/${2}${FILE}" "${FPATH}"
		fi

	#elif [ "$port" == "less" ]; then

		#printf "Installing/updating source-highlight for Less and setting up %s lang file(s) and style file(s) for Windows Less.\\n" "$2"
		#	FPATH=/
		#	TPATH=/

	else
.
	fi

fi

printf "Installation successful. Restart %s and you will now have pretty %s formats!\\n"
printf "Thank you for your support!\\n" "$port" "$2"
exit 0
