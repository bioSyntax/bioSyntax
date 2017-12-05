if exists("syntax_on")
        syntax reset
endif


syntax match qual0 "[/\!-/\/]" contained
syntax match qual1 "[0-9]" contained
syntax match qual2 "[/\:/\;/\</\=/\>/\?/\@]" contained
syntax match qual3 "[A-J]" contained

"syntax match header "^@\{1,2}.*$"
"syntax region com start="^\+" end="\n\@=" contains=quality
"syntax region quality start="\(+\_s\+\)\@<=.*" end="\n\@=" contains=qual0,qual1,qual2,qual3
"syntax region bases start="[ACGT]\ze+" end=".*$" contains=ntA,ntG,ntC,ntT
"syntax region bases start="/{[ACGT]}[/]<CR>" end=".*$" contains=ntA,ntG,ntC,ntT
"syntax region bases start="^[ACGT]\{10,}" end=".*$" contains=ntA,ntG,ntC,ntT

syntax region header start="^@\{1,2}.*$" end="\n\@="
syntax region bases start="^[ACGT]\{10,}" end=".*$" contains=ntA,ntG,ntC,ntT
"syntax region com start="^[+]\{1,2}" end="\n\@=" contains=quality
syntax region com start="\([ACGT]\{10,}\)\@<=" end="\n\@=" 
syntax region quality start="\(+*$\n\@=\)\@<=.*" end="\n\@=" contains=qual0,qual1,qual2,qual3

syntax match ntA "A" contained
syntax match ntG "G" contained
syntax match ntC "C" contained
syntax match ntT "T" contained

highlight header ctermfg=100
highlight com ctermfg=20
highlight qual0 ctermfg=DarkGrey
highlight qual1 ctermfg=Grey
highlight qual2 ctermfg=Red
highlight qual3 ctermfg=DarkRed

highlight ntA ctermfg=Black ctermbg=Green guibg=#272822
highlight ntG ctermfg=Black ctermbg=Yellow guibg=#FF8C00
highlight ntC ctermfg=Black ctermbg=Blue guibg=#2A0AFD
highlight ntT ctermfg=Black ctermbg=Red guibg=#FD0A0A
