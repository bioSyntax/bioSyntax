" Vim syntax file
" Language: clustal
" Filetypes: .clustal .aln
" Maintainer: bioSyntax
" Version: v0

if exists("syntax_on")
        syntax reset
	colorscheme bioSyntax	
endif

" REGEX Engine
" =========================================================

" Nucleotide matching
syntax match ntA "[Aa]"
syntax match ntG "[Gg]" 
syntax match ntC "[Cc]" 
syntax match ntT "[Tt]" 
syntax match ntU "[Uu]" 
syntax match ntR "[Rr]" 
syntax match ntY "[Yy]" 
syntax match ntS "[Ss]" 
syntax match ntW "[Ww]" 
syntax match ntM "[Mm]" 
syntax match ntK "[Kk]" 
syntax match ntD "[Dd]" 
syntax match ntB "[Bb]" 
syntax match ntV "[Vv]" 
syntax match ntH "[Hh]" 
syntax match ntN "[Nn]" 
syntax match ntGap "[/\-/\.]"

" Sequence Name
syntax match comment '^\S*\s' 

" Header starts with CLUSTAL
syntax match header "CLUSTAL.*"


" Highlighting / Theme Control
" =========================================================

"highlight header ctermfg=Black ctermbg=8
"highlight comment ctermfg=8

"highlight ntA ctermfg=Black ctermbg=10 guibg=#47ff19
"highlight ntG ctermfg=Black ctermbg=214 guibg=#f09000
"highlight ntC ctermfg=Black ctermbg=9 guibg=#ff4641
"highlight ntT ctermfg=Black ctermbg=33 guibg=#4192ff
highlight ntU ctermfg=Black ctermbg=13 guibg=#8a89ff
"highlight ntN ctermfg=8 ctermbg=15 guibg=#ffffff
" highlight ntGap #No Highlight
