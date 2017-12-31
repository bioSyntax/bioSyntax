if exists("syntax_on")
	syntax reset
	colorscheme bioSyntax
	set nowrap
endif

" In the future, implement 'context-aware' fasta
" in which Nucleotides vs. Amino Acid sequences are detected
" and colored accordingly

syntax match headerbw ">.*$"
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
