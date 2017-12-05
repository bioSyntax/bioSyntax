if exists("syntax_on")
        syntax reset
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
highlight Col1 ctermfg=28 cterm=bold
highlight Col2 ctermfg=10
highlight Col3 ctermfg=100
highlight Col4 ctermfg=150
highlight Col5 ctermfg=150
highlight Col6 ctermfg=100
highlight Col7 ctermfg=50
highlight Col8 ctermfg=100
highlight Col9 ctermfg=7

highlight strg ctermfg=67
highlight ident ctermfg=180
highlight ens ctermfg=172
highlight na ctermfg=59
highlight gene_type ctermfg=10
highlight gene_id ctermfg=11
highlight name ctermfg=118
highlight gene_name ctermfg=226
highlight havName ctermfg=125
highlight ont_name ctermfg=58

highlight num ctermfg=130
highlight num2 ctermfg=130

highlight s ctermfg=28
highlight s2 ctermfg=56
highlight s3 ctermfg=84
highlight s4 ctermbg=34
highlight s5 ctermbg=160
highlight s6 ctermbg=18
highlight s7 ctermfg=59
highlight s8 ctermfg=60
highlight s9 ctermfg=61

highlight plus ctermfg=20
highlight minus ctermfg=200

highlight zero ctermfg=36
highlight one ctermfg=40
highlight two ctermfg=45

