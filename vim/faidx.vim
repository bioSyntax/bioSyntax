" Vim syntax file
" Language: faidx
" Filetypes: .fai, .faidx 
" Maintainer: bioSyntax
" Version: v0

if exists("syntax_on")
	syntax reset
endif

" Robust Column Selection in Vim Syntax
" -- This logic can be extended for N columns
" -- To add highlighting to a column add it to the contains list (submatch)
syntax region Col1 matchgroup=Col1 start='^' end='\n' contains=Col2
syntax region Col2 matchgroup=Col2 start='\t' end='\n\@=' contains=Col3,submatch
syntax region Col3 matchgroup=Col3 start='\t' end='\n\@=' contains=Col4
syntax region Col4 matchgroup=Col4 start='\t' end='\n\@=' contains=Col5
syntax region Col5 matchgroup=Col5 start='\t' end='\n\@=' contains=Col6
syntax region Col6 matchgroup=Col6 start='\t' end='\n\@='

" Submatch Definitions
syntax match submatch '3' contained


" Highlighting / Theme Control
" =========================================================
highlight Col1 ctermfg=28 cterm=bold
highlight Col2 ctermfg=28
highlight Col3 ctermfg=62
highlight Col4 ctermfg=250
highlight Col5 ctermfg=250
highlight Col6 ctermfg=250

highlight submatch ctermfg=28