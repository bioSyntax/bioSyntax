# bioSyntax Makefile
# packages the bioSyntax release from the
# git repository.
#
# For a new release be sure to update the release download link
# https://www.bioSyntax.org/release
#   (on github/biosyntax/biosyntax-site
#   --> `release.md` line 4 )

#-- System Config            --
SHELL =/bin/bash
SOURCEDIR = $(PWD)
ZIP = tar -zcvf
PANDOC = pandoc

CD = cd
MKDIR_P = mkdir -p
RM = rm
MV = mv
CP_R = cp -r

#-- bioSyntax Release Config --
version = v0.1.5
release = bioSyntax_$(version)
components = all gedit sublime vim less alt man zip


.PHONY: $(components)
all: $(release) $(components)

$(release):
	$(MKDIR_P) $(release)

gedit:
	# gedit -----------------------------------------------
	$(CP_R) $(SOURCEDIR)/gedit $(release)
	#
	#

sublime:
	# sublime --------------------------------------------
	$(CP_R) $(SOURCEDIR)/sublime $(release)
	# TODO: Add control to ensure that bioSyntax-sublime
	# submodule is downloaded via git

	# Create sublime-settings file for each sublime syntax
	# {bash script}

	$(CD) $(release)/sublime;\
	{ \
	TEMPLATE='bioSyntax.sublime-settings' ;\
	for SYNTAXFILE in $$(ls *.sublime-syntax);\
		do SYNTAX=$$(basename -s .sublime-syntax $$SYNTAXFILE) ;\
		printf " Making .sublime-settings file for:\t$$SYNTAX\n" ;\
		cp $$TEMPLATE $$SYNTAX".sublime-settings" ;\
	done;\
	}
	#

vim:
	# vim -------------------------------------------------
	$(CP_R) $(SOURCEDIR)/vim $(release)
	# TODO: Add control to ensure that bioSyntax-vim
	# submodule is downloaded via git
	#

less:
	# less ------------------------------------------------
	$(CP_R) $(SOURCEDIR)/less $(release)
	#

alt:
	# alt-syntax + examples -------------------------------
	$(CP_R) $(SOURCEDIR)/examples $(release)
	$(CP_R) $(SOURCEDIR)/alt-syntax $(release)
	#

man:
	# scripts + manuals -----------------------------------
	$(CP_R) INSTALL.md $(release)
	$(CP_R) bioSyntax_INSTALL.sh $(release)
	$(CP_R) LICENSE.md $(release)
	$(CD) dev/man/ ;\
	$(PANDOC) man_pdf.md -f markdown -t latex -o ../../$(release)/man.pdf
	$(CP_R) dev/man/man_pdf.md $(release)/README.md
	#

zip:
	# Create zip of release
	$(ZIP) $(release).tar.gz $(release)
