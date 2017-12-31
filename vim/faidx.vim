" Vim syntax file
" Language: faidx
" Filetypes: .fai, .faidx 
" Maintainer: bioSyntax
" Version: v0

if exists("syntax_on")
	syntax reset
	colorscheme bioSyntax
endif

" Robust Column Selection in Vim Syntax
" -- This logic can be extended for N columns
" -- To add highlighting to a column add it to the contains list (submatch)
syntax region chr matchgroup=chr start='^' end='\n' contains=chrStart
syntax region chrStart matchgroup=chrStart start='\t' end='\n\@=' contains=numeric2,submatch
syntax region numeric2 matchgroup=numeric2 start='\t' end='\n\@=' contains=Col4
syntax region Col4 matchgroup=Col4 start='\t' end='\n\@=' contains=Col5
syntax region Col5 matchgroup=Col5 start='\t' end='\n\@=' contains=Col6
syntax region Col6 matchgroup=Col6 start='\t' end='\n\@='

" Submatch Definitions
syntax match submatch '3' contained


" Highlighting / Theme Control
" =========================================================
highlight link Col4 numeric 
highlight link Col5 numeric
highlight link Col6 numeric

highlight submatch ctermfg=28
