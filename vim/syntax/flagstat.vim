if exists("syntax_on")
	syntax reset
	colorscheme bioSyntax
	set nowrap
endif


" QC-passed reads
"
syntax match numeric "^\d\+"
syntax match numeric "QC-passed reads"
syntax match numeric "(\@<=[0-9\.%]\+"
syntax match numeric "(\@<=-\?nan%"

" QC-failed reads
"
syntax match numeric2 " \d\+"
syntax match numeric2 "QC-failed reads"
syntax match numeric2 ":\@<=[0-9\.%]\+"
syntax match numeric2 ":\@<=-\?nan%"

" mapQ
"
syntax match string "mapQ>=\d\+"
