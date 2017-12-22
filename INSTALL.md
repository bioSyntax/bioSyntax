# bioSyntax Installation
  version 0.1-beta
  Visit http://bioSyntax.org/install for webpage version of this file.

# Automatic Installation

bioSyntax comes with a handy installation script. Simply run:

	```
		bash bioSyntax_SETUP.sh <editor-of-choice>
	```
	{: .language-bash}

	'<editors> = vim || less || gedit || sublime'

**Note**: The installation script should be run from root and requires super-user commands at the moment. If you don't have permissions or don't like this; simply follow the Manual Installation instructions below, but some files will need to be placed in paths accessed via root as well. (Also: sudo commands do not work in Windows so just run the commands without sudo in your command line as an adminstrator).

# Manual Installations

1. [sublime](#sublime)
2. [gedit](#gedit)
3. [vim](#vim) (easiest installation)
4. [less](#less)

## sublime
**(Linux / Mac / Win)**

0. Install [Sublime Text](http://www.sublimetext.com/).
The easiest method to install bioSyntax for Sublime is via Package Control.
- Install [Package Control for Sublime](https://packagecontrol.io/installation).
- Once installed, in Sublime, go to `Preferences > Package Control > Package Control: Install Package` and search for `BioSyntax`, and click on it. Package Control will install the syntax files for you.
If not, follow the manual installation instructions below:
1. Unzip the downloaded bioSyntax release to your root.

	```
		sudo unzip bioSyntax-<release>.<zip/tar.gz> -d <insert-path>/bioSyntax/
	```
	{: .language-bash}

2. In the bioSyntax/sublime folder rename the `Color%20Scheme%20-%20bioSyntax.sublime-package` file to `Color Scheme - bioSyntax.sublime-package`.

	```
		mv Color%20Scheme%20-%20bioSyntax.sublime-package Color\ Scheme\ -\ bioSyntax.sublime-package
	```
	{: .language-bash}

3. Copy it to your Sublime Text application packages folder:
- **Linux**: `/opt/sublime_text/Packages/`
- **Windows**: `~/AppData/Roaming/Sublime\ Text\ 3/Packages/User/bioSyntax/`
- **Mac**: `/Applications/Sublime\ Text.app/Contents/MacOS/Packages/`

	```
		sudo cp Color\ Scheme\ -\ bioSyntax.sublime-package <insert-path>
	```
	{: .language-bash}

4. Copy your desired `*.sublime-syntax` files from the `bioSyntax/sublime` folder into the Sublime Text Packages folder:
- **Linux**: `~/.config/sublime-text-3/Packages/User/`
- **Windows**: `~/AppData/Roaming/Sublime\ Text\ 3/Packages/User/`
- **Mac**: `/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/`

	```
		cp /bioSyntax-<release>/*.sublime-syntax -d <insert-path>/bioSyntax/
	```
	{: .language-bash}

Alternatively, you can clone [this repository](https://github.com/bioSyntax/bioSyntax-sublime.git) into the appropriate paths above.

	```
		git clone https://github.com/bioSyntax/bioSyntax-sublime.git <insert-path>/bioSyntax/
	```
	{: .language-bash}

5. Restart `Sublime` and go select the bioSyntax (bioMonokai) theme
`Preferences > Color Scheme > bioMonokai`
6. Formats should auto-detect; you can select a specific syntax at the drop-menu at the bottom-right corner of the window (e.g. Plain Text)
7. You now have pretty formats!

## gedit
**(Linux / Win)**

0. Install [Gedit](https://wiki.gnome.org/Apps/Gedit).
1. Unzip the downloaded bioSyntax release to your root.
2. In the `/bioSyntax-<release>/gedit/` folder, copy the `bioSyntax.xml` style file to the appropriate gtksourceview style folder (depending on your version of Gedit):
- **Linux**: `/usr/share/gtksourceview-3.0/styles/`
- **Windows**: `/c/Program\ Files/gedit/share/gtksourceview-3.0/styles/`

	```
		sudo cp /bioSyntax-<release>/gedit/bioSyntax.xml <insert-path>
	```
	{: .language-bash}

3. Copy your desired `*.lang` file(s) to the appropriate gtksourceview language spec folder (also depends on version of Gedit):
- **Linux**: `/usr/share/gtksourceview-3.0/language-specs/`
- **Windows**: `/c/Program\ Files/gedit/share/gtksourceview-3.0/language-specs/`

	```
		sudo cp /bioSyntax-<release>/gedit/*.lang <insert-path>
	```
	{: .language-bash}

4. Restart `gedit` and select the bioSyntax theme
	`Edit > Preferences > Font & Color > bioSyntax'`
5.  You now have pretty formats!

## vim
**(Linux / Mac / Win)**

1. Unzip the downloaded bioSyntax release.
2. Run the following commands in your command line to create syntax, auto-detection and colouring folders in your home directory (if they don't already exist):

	```
		if [ ! -d ~/.vim/ ]; then mkdir ~/.vim/; fi
		if [ ! -d ~/.vim/syntax ]; then mkdir ~/.vim/syntax; fi
		if [ ! -d ~/.vim/ftdetect ]; then mkdir ~/.vim/ftdetect; fi
		if [ ! -d ~/.vim/colors ]; then mkdir ~/.vim/colors; fi
	```
	{: .language-bash}
3. Also run the following to enable automatic syntax highlighting in vim:

	```
		if [ ! -e ~/.vimrc ]; then touch ~/.vimrc; fi
		if ! grep -q ":syntax enable" ~/.vimrc; then echo ":syntax enable\\n" > ~/.vimrc; fi
	```
	{: .language-bash}
4. Copy your desired vim syntax, auto-detection, and colour files into their respective vim folders:

	```
	cp /bioSyntax-<release>/vim/*.vim ~/.vim/syntax/
	cp /bioSyntax-<release>/vim/ftdetect/*.vim ~/.vim/ftdetect/
	cp /bioSyntax-<release>/vim/colors/bioSyntax.vim ~/.vim/colors/
	```
	{: .language-bash}
5. Restart vim and you now have pretty formats!


## less
**(Linux, Mac)**

0. Ensure that your applications/packages are up-to-date:
- **Linux**: `sudo apt-get update`
- **Mac**: (Installing source-highlight is easiest via homebrew. The following updates brew if it is installed; installs it otherwise.)

	```
	which -s brew
	if [[ $? != 0 ]] ; then
    	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
    	brew update
	fi
	```
	{: .language-bash}
1. Install [**source-highlight**](https://www.gnu.org/software/src-highlite/) to your system:
- **Linux**: `sudo apt-get install source-highlight`
- **Mac**: (The following installs source-highlight if it isn't installed; updates it otherwise)

	```
	if [[ ! -z `brew ls --versions "source-highlight"` ]]; then
		brew upgrade source-highlight
	else
		brew install source-highlight
	fi
	```
	{: .language-bash}
2. Unzip the downloaded bioSyntax release to your root.
3. In the `/bioSyntax-<release>/less/` folder, copy the `biosyntax.outlang` and `biosyntax-vcf.outlang` files to the appropriate folder:
- **Ubuntu**: `/usr/share/source-highlight/`
- **CentOS**: `/usr/bin/`
- **Mac**: `/usr/local/opt/source-highlight/share/source-highlight/`

	```
		sudo cp /bioSyntax-<release>/less/biosyntax.outlang <insert-path>
		sudo cp /bioSyntax-<release>/less/biosyntax-vcf.outlang <insert-path>
	```
	{: .language-bash}

4. In the `/bioSyntax-<release>/less/` folder, copy the `src-hilite-lesspipe_BIO.sh` file to the appropriate folder as above and rename it to `src-hilite-lesspipe.sh`:

	```
		sudo cp /bioSyntax-<release>/less/src-hilite-lesspipe_BIO.sh <insert-path>/src-hilite-lesspipe.sh
	```
	{: .language-bash}

5. In the folder that you moved the above file to, modify it to make it executable.

	```
		sudo chmod 755 <insert-path</src-hilite-lesspipe.sh
	```
	{: .language-bash}

6. In the `/bioSyntax-<release>/less/` folder, append the appropriate `*_append.txt` file to the correct rc file based on the default shell you use.

- **Linux**:

	```
	if [ `echo $SHELL` == "/bin/bash" ]; then
		if ! grep -q "bioSyntax" ~/.bash_profile; then
			sudo cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.bash_profile;
		fi
		if ! grep -q "bioSyntax" ~/.bashrc; then
			sudo cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.bashrc;
		fi
	elif [ `echo $SHELL` == "/bin/zsh" ]; then
		if ! grep -q "bioSyntax" ~/.zprofile; then
			sudo cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.zprofile;
		fi
		if ! grep -q "bioSyntax" ~/.zshrc; then
			sudo cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.zshrc;
		fi
	else
		if ! grep -q "bioSyntax" ~/.profile; then
			sudo cat ${BIOSYNTAX}/less/rc_append.txt >> ~/.profile;
		fi
	fi
	```
	{: .language-bash}

- **Mac**:

	```
	if [ `echo $SHELL` == "/bin/bash" ]; then
		if ! grep -q "bioSyntax" ~/.bash_profile; then
			sudo cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.bash_profile;
		fi
		if ! grep -q "bioSyntax" ~/.bashrc; then
			sudo cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.bashrc;
		fi
	elif [ `echo $SHELL` == "/bin/zsh" ]; then
		if ! grep -q "bioSyntax" ~/.zprofile; then
			sudo cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.zprofile;
		fi
		if ! grep -q "bioSyntax" ~/.zshrc; then
			sudo cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.zshrc;
		fi
	else
		if ! grep -q "bioSyntax" ~/.profile; then
			sudo cat ${BIOSYNTAX}/less/bp_append.txt >> ~/.profile;
		fi
	fi
	```
	{: .language-bash}

7. Copy your desired less `*.style` and corresponding `*.lang` files to the paths as above:

	```
	cp /bioSyntax-<release>/less/*.style <insert-path>
	cp /bioSyntax-<release>/less/*.lang <insert-path>
	```
	{: .language-bash}

8. Restart your computer for your rc files to update, open less and you now have pretty formats!

# Uninstall BioSyntax

bioSyntax also comes with an uninstaller script in the release. To use it, run:

	```
		bash bioSyntax_UNINSTALL.sh <editor-of-choice>
	```
	{: .language-bash}

and then delete the release.

**Note**: The uninstaller script should also be run from root and requires super-user commands at the moment. If you don't have permissions or don't like this; simply follow the Manual Uninstallation instructions below, but some files will need to be placed in paths accessed via root as well.

## sublime
**(Linux / Mac / Win)**

Remove the bioSyntax Color Scheme, `Color Scheme - bioSyntax.sublime-package` from your Sublime Text application packages folder:
- **Linux**: `/opt/sublime_text/Packages/`
- **Windows**: `~/AppData/Roaming/Sublime\ Text\ 3/Packages/User/bioSyntax/`
- **Mac**: `/Applications/Sublime\ Text.app/Contents/MacOS/Packages/`. 

	```
		sudo rm <insert-path>/Color\ Scheme\ -\ bioSyntax.sublime-package
	```
	{: .language-bash}

2. Remove any `*.sublime-syntax` files you no longer want from the Sublime Text Packages folder
- **Linux**: `~/.config/sublime-text-3/Packages/User/`
- **Windows**: `~/AppData/Roaming/Sublime\ Text\ 3/Packages/User/`
- **Mac**: `/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/`

	```
		rm <insert-path>/<filetype>.sublime-syntax
	```
	{: .language-bash}

## gedit
**(Linux / Win)**

1. Remove the bioSyntax style file, `bioSyntax.xml` from the appropriate gtksourceview style folder (depending on your version of Gedit):
- **Linux**: `/usr/share/gtksourceview-3.0/styles/`
- **Windows**: `/c/Program\ Files/gedit/share/gtksourceview-3.0/styles/`

	```
		sudo rm <insert-path>/bioSyntax.xml
	```
	{: .language-bash}

2. Remove any `*.lang` file(s) you no longer want from the appropriate gtksourceview language specs folder (also depends on version of Gedit):
- **Linux**: `/usr/share/gtksourceview-3.0/language-specs/`
- **Windows**: `/c/Program\ Files/gedit/share/gtksourceview-3.0/language-specs/`

	```
		sudo rm <insert-path>/<filetype>.lang
	```
	{: .language-bash}

## vim
**(Linux / Mac / Win)**

1. Remove the bioSyntax color file, `bioSyntax.vim` from your Vim colors folder:

	```
		rm ~/.vim/colors/bioSyntax.vim
	```
	{: .language-bash}

2. Remove any syntax file(s) you no longer want from your Vim syntax folder:

	```
		rm ~/.vim/syntax/<filetype>.vim
	```
	{: .language-bash}

3. Remove corresponding autodetec files from your Vim ftdetect folder:

	```
		rm ~/.vim/ftdetect/<filetype>.vim
	```
	{: .language-bash}

## less
**(Linux / Mac)**

1. Remove the `biosyntax.outlang` and `biosyntax-vcf.outlang` files from your source-highlight folder:
- **Ubuntu**: `/usr/share/source-highlight/`
- **CentOS**: `/usr/bin/`
- **Mac**: `/usr/local/opt/source-highlight/share/source-highlight/`

	```
		sudo rm <insert-path>/biosyntax.outlang
		sudo rm <insert-path>/biosyntax-vcf.outlang
	```
	{: .language-bash}

2. Remove the `*.style` and corresponding `*.lang` file(s) that you no longer want from the paths as above:

	```
		sudo rm <insert-path>/<filetype>.lang
		sudo rm <insert-path>/<filetype>.style
	```
	{: .language-bash}

3. If you wish to uninstall source-highlight for less as well, run the following:
- **Linux**:

	```
		sudo apt-get remove source-highlight
	```
	{: .language-bash}

- **Mac**:

	```
		brew uinstall source-highlight
	```
	{: .language-bash}
