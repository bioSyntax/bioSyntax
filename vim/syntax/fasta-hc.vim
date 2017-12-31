if exists("syntax_on")
	syntax reset
	colorscheme bioSyntax
	set nowrap
endif

" To be implemented:
" Command to switch between types of fasta coloring
" from vim terminal directly
"
" For now to use High Contrast theme, 
" rename this file in ~/.vim/syntax/:
" "fasta-hc.vim" --> "fasta.vim"


" In the future, implement 'context-aware' fasta
" in which Nucleotides vs. Amino Acid sequences are detected
" and colored accordingly

syntax match headerbw ">.*$"
syntax match hcA "[Aa]"
syntax match hcG "[Gg]" 
syntax match hcC "[Cc]" 
syntax match hcT "[Tt]" 
syntax match hcU "[Uu]" 
syntax match hcR "[Rr]" 
syntax match hcY "[Yy]" 
syntax match hcS "[Ss]" 
syntax match hcW "[Ww]" 
syntax match hcM "[Mm]" 
syntax match hcK "[Kk]" 
syntax match hcD "[Dd]" 
syntax match hcB "[Bb]" 
syntax match hcV "[Vv]" 
syntax match hcH "[Hh]" 
syntax match hcN "[Nn]" 
syntax match hcGap "[/\-/\.]" 
