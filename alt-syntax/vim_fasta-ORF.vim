" bioSyntax
" Syntax Highlighting for Computational Biology
" =========================================================
" https://bioSyntax.org	||	info@bioSyntax.org  || GPLv3
"
" Filetype:		Fasta-ORF
" Extensions:	[no default set]
" Version:		v0.1
"
" Description:	Nucleotide Fasta highlighting open reading
"				frames (ORFs). Will highlight from first
"				'ATG' to first STOP codon.

if exists("syntax_on")
	syntax reset
	colorscheme bioSyntax
	set nowrap
endif

syntax match headerbw ">.*$"

" ORF begins at first ATG
syntax match Start '\v[Aa]\n?[Tt]\n?[Gg]\n?' nextgroup=codon

	" codon shade 1
	syntax match codon '\v[AaTtGgCc]{-3}\n|
				\[AaTtGgCc]{-3}|
				\[AaTtGgCc\n]{-4}'
				\ contained nextgroup=Opal,Ochre,Amber,codon2

	" codon shade 2
	syntax match codon2 '\v[ATGCatgc]{-3}\n|
				\[AaTtGgCc]{-3}|
				\[AaTtGgCc\n]{-4}'
				\ contained nextgroup=Opal,Ochre,Amber,codon

	" Stop codons: TGA | TAA | TAG
	syntax match Opal  '\v([Tt]\n?[Gg]\n?[Aa]|>)' contained
	syntax match Ochre '\v([Tt]\n?[Aa]\n?[Aa]|>)' contained
	syntax match Amber '\v([Tt]\n?[Aa]\n?[Gg]|>)' contained
	"syntax cluster Stops  contains=Opal,Ochre,Amber

" " Highlighting / Theme Control
" =========================================================

highlight link Start ntA
highlight link codon      numeric
highlight link codon2     numeric2

highlight link Opal  ntC
highlight link Ochre ntC
highlight link Amber ntC

