if exists("syntax_on")
        syntax reset
	colorscheme bioSyntax
	set nowrap
endif

" Robust Column Selection in Vim Syntax
" " -- This logic can be extended for N columns
" " -- To add highlighting to a column add it to the contains list (submatch)
syntax region Col1 matchgroup=Col1 start='^' end='\n' contains=Col2
syntax region Col2 matchgroup=Col2 start='\t' end='\n\@=' contains=Col3
syntax region Col3 matchgroup=Col3 start='\t' end='\n\@=' contains=Col4,s,s2,s3,s4,s5,s6,s7,s8,s9
syntax region Col4 matchgroup=Col4 start='\t' end='\n\@=' contains=Col5
syntax region Col5 matchgroup=Col5 start='\t' end='\n\@=' contains=Col6
syntax region Col6 matchgroup=Col6 start='\t' end='\n\@=' contains=Col7
syntax region Col7 matchgroup=Col7 start='\t' end='\n\@=' contains=Col8,plus,minus
syntax region Col8 matchgroup=Col8 start='\t' end='\n\@=' contains=Col9,zero,one,two
syntax region Col9 matchgroup=Col9 start='\t' end='\n\@=' contains=strg,num,gene_type,semi,id,geneName,havana,ont

" " -- To create a region just for strings inside Col9
syntax region strg matchgroup=strg start='\s"\@=' end=';' contains=na,num2
syntax region id matchgroup=id start='\(\(gene_id\|transcript_id\|exon_id\|protein_id\)\s"\)\@=' end=';' contains=ens
syntax region geneName matchgroup=geneName start='\(\(gene_name\|transcript_name\)\s"\)\@=' end=';' contains=gene_name
syntax region ont matchgroup=ont start='\(\(ont\)\s"\)\@=' end=';' contains=ont_name
syntax region havana matchgroup=havana start='\(\(havana_gene\|havana_transcript\)\s"\)\@=' end=';' contains=havName 


" " -- To identify the header #
syntax region header matchgroup=header start='#' end='\n\@='
"
" " Submatch Definitions
" " specific colours under type
syntax match s 'exon' contained
syntax match s2 'transcript' contained
syntax match s3 'gene' contained
syntax match s4 'start_codon' contained
syntax match s5 'stop_codon' contained
syntax match s6 'CDS' contained
syntax match s7 '5UTR' contained
syntax match s8 '3UTR' contained
syntax match s9 'UTR' contained

" " specific colours for strand
syntax match plus '+' contained
syntax match minus '-' contained

" " matches within Col8
syntax match zero '0' contained
syntax match one '1' contained
syntax match two '2' contained


" " matches within Col9 (i.e. non-string - in general)
syntax match num '\d' contained
syntax match semi ';' contained

" " matches within strings
" syntax match ident '"\<\w*_\w*\>"' contained
syntax match ens '"\<[0-9A-Za-z.-_]*\>"' contained
" " matches NA
syntax match na '"NA"' contained
" " matches numerics in strings
syntax match num2 '"[-+][0-9]\+\.\d*"' contained
syntax match num2 '"[0-9]*"' contained
syntax match num2 '"[0-9.]*"' contained

" " matches names
syntax match gene_name '"\<[0-9A-Za-z.-]*\>"' contained
syntax match ont_name '"\<[0-9A-Za-z.-:]*\>"' contained
syntax match havName '"\<[0-9A-Za-z.-]*\>"' contained

"
" " Highlighting / Theme Control
" =========================================================
highlight link Col1 chr 
highlight link Col2 keyword
highlight link Col3 normal
highlight link Col4 chrStart
highlight link Col5 chrEnd
highlight Col6 ctermfg=100
highlight link Col7 strandNone
highlight Col8 ctermfg=100
highlight Col9 ctermfg=7

highlight link strg quoteString
highlight link ident keyword3
highlight ens ctermfg=172
highlight na ctermfg=59
highlight link gene_type geneSymbol
highlight link gene_id geneSymbol
"highlight name ctermfg=118
highlight link gene_name keyword
highlight link havName keyword4
highlight link ont_name keyword6

highlight link num numeric
highlight link num2 numeric2

highlight link s exonLevel
highlight link s2 transcriptLevel
highlight link s3 geneLevel
highlight link s4 start_codon
highlight link s5 stop_codon
highlight link s6 cds
highlight link s7 utr
highlight link s8 utr
highlight link s9 utr

highlight link plus strandPlus
highlight link minus strandMinus

highlight link zero keyword4
highlight link one keyword5
highlight link two keyword6

