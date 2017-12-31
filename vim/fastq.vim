if exists("syntax_on")
    syntax reset
	colorscheme bioSyntax
	set nowrap	
endif

syntax match gradbw1 "[/\!-/\$]" contained
syntax match gradbw2 "[/\%-/\(]" contained
syntax match gradbw3 "[/\)-/\,]" contained
syntax match gradbw4 "[/\--/\/]" contained
syntax match gradbw5 "[0-4]" contained
syntax match gradbw6 "[5-9]" contained
syntax match gradbw7 "[/\:/\;/\<]" contained
syntax match gradbw8 "[/\=/\>/\?/\@]" contained
syntax match gradbw9 "[A-E]" contained
syntax match gradbw10 "[F-J]" contained

syntax region headerbw start="^@\{1,2}.*$" end="\n\@="
syntax region bases start="^[ACGT]\{10,}" end=".*$" contains=ntA,ntG,ntC,ntT
syntax region comment2 start="\([ACGT]\{10,}\)\@<=" end="\n\@=" 
syntax region quality start="\(+*$\n\@=\)\@<=.*" end="\n\@=" contains=gradbw1,gradbw2,gradbw3,gradbw4,gradbw5,gradbw6,gradbw7,gradbw8,gradbw9,gradbw10

syntax match ntA "A" contained
syntax match ntG "G" contained
syntax match ntC "C" contained
syntax match ntT "T" contained

"highlight header ctermfg=100
"highlight com ctermfg=20
"highlight qual0 ctermfg=DarkGrey
"highlight qual1 ctermfg=Grey
"highlight qual2 ctermfg=Red
"highlight qual3 ctermfg=DarkRed

"highlight ntA ctermfg=Black ctermbg=Green guibg=#272822
"highlight ntG ctermfg=Black ctermbg=Yellow guibg=#FF8C00
"highlight ntC ctermfg=Black ctermbg=Blue guibg=#2A0AFD
"highlight ntT ctermfg=Black ctermbg=Red guibg=#FD0A0A
