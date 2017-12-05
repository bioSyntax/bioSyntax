if exists("syntax_on")
	syntax reset
endif

syntax match comment ">.*$"
syntax match ntA "A"
syntax match ntG "G"
syntax match ntC "C"
syntax match ntT "T"

hi def link comment Identifier
highlight ntA ctermfg=Black ctermbg=Green guibg=#272822
highlight ntG ctermfg=Black ctermbg=Yellow guibg=#FF8C00
highlight ntC ctermfg=Black ctermbg=Blue guibg=#2A0AFD
highlight ntT ctermfg=Black ctermbg=Red guibg=#FD0A0A
