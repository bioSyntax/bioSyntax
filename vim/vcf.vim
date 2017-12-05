" Vim syntax file
" Language: VCF v4.3
" Filetypes: .vcf 
" Maintainer: bioSyntax
" Version: v0

"TODO
" Set vim sync mode so it can deal with long lines

if exists("syntax_on")
	syntax reset
	" VCF syntax is per-line so restrict context to one line
    syntax sync minlines=1

    " VCF are wide files; remove word-wrapping
    set nowrap
endif


" Syntax Organization
" Use 'containedin=' when a syntax defintion must only be matched within only one region
" Use 'contained' when a syntax definition may be matched from two or more regions
" All region definitions are limited to 'oneline' in VCF

" VCF DATA Selection
" =========================================================
"

" Column 1: LONG LINE FAILSAFE  (no highlight)
  syntax region FAILSAFE start='^' end='$' contains=COL2

" Column 1: CHROM
  syntax region chr start='^[^#]' end='$' oneline contains=COL2

" Column 2: POS
  syntax region COL2 matchgroup=COL2 start='\t' end='\n\@=' oneline contained contains=COL3
  syntax region chrStart start='\t\@<=[0-9]' end='[\n\t]\@=' contained containedin=COL2

" Column 3: ID
  syntax region COL3  matchgroup=COL3 start='\t' end='\n\@=' oneline contained contains=COL4,nt_
  syntax region ID start='\t\@<=\S' end='[\n\t]\@=' containedin=COL3


" Column 4: REF
  syntax region COL4  matchgroup=COL4 start='\t' end='\n\@=' oneline contained contains=COL5,ntA,ntT,ntG,ntC,ntN,nt_
  syntax match ntA '[Aa]' contained
  syntax match ntT '[Tt]' contained
  syntax match ntG '[Gg]' contained
  syntax match ntC '[Cc]' contained
  syntax match ntN '[Nn]' contained
  syntax match nt_ '\.'   contained

" Column 5: ALT
  syntax region COL5  matchgroup=COL5 start='\t' end='\n\@=' oneline contained contains=COL6,ntA,ntT,ntG,ntC,ntN,nt_

" Column 6: QUAL
  syntax region COL6  matchgroup=COL6 start='\t' end='\n\@=' oneline contained contains=COL7
  syntax region QUAL start='\t\@<=[0-9]' end='[\n\t]\@=' oneline containedin=COL6

" Column 7: FILTER
  syntax region COL7  matchgroup=COL7 start='\t' end='\n\@=' oneline contained contains=COL8,PASS,FAIL,nt_

" Column 8: INFO
  syntax region COL8  matchgroup=COL8 start='\t' end='\n\@=' oneline contained contains=COL9
  syntax region INFOtag start='\t\@<=[A-Za-z]' end='[\n\t]\@='  oneline containedin=COL8 contains=numeric,string

" Column 9: FORMAT
  syntax region COL9  matchgroup=COL9 start='\t' end='\n\@=' oneline contained contains=COL10
    syntax region FORMATtag start='\t\@<=[A-Za-z]' end='[\n\t]\@='  oneline containedin=COL9

" Column 10+: DATA
  syntax region COL10  matchgroup=COL10 start='\t' end='\n\@=' oneline contained

" Data Start Header Lines
syntax match header '^#CHROM.\+'



" VCF Header Selection
" =========================================================
"
syntax region comment start='^##' end='\n' oneline contains=header,FILTER,FORMAT,INFO,reference

  " First Line Header
  syntax region header start='fileformat' end='\n' oneline contained

  " FILTER Lines
  syntax region FILTER start='FILTER' end='\n' oneline contained contains=string,stringQuote,numeric 

  " FORMAT Lines
  syntax region FORMAT start='FORMAT' end='\n' oneline contained contains=string,stringQuote,numeric 

  " INFO Lines
  syntax region INFO start='INFO' end='\n' oneline contained contains=string,stringQuote,numeric 

  " Non-specification Lines
  syntax region reference start='\(contig=\|reference=\)' end='\n' oneline contained

    " Header Submatches (ID, Other Tags, Quote Strings)
    syntax region numeric start='=\@<=[^<\"]\@=' end='[,;\t]\@=' oneline contained
    syntax region string start='\(ID=\)\@<=' end='[,;\t]\@=' oneline contained
    syntax region stringQuote start='\"' end='\"' oneline contained


" Highlighting / Local Link Controls
" =========================================================
highlight link FILTERtag FILTER
highlight link FORMATtag FORMAT
highlight link INFOtag   INFO


highlight link QUAL numeric
highlight link ID   string

highlight link FILTER    keyword1
highlight link FORMAT    keyword2
highlight link INFO      keyword3
highlight link reference chrStart


" Highlighting / Global Theme Control
" =========================================================
" (TO CHANGE THEME COLORS, MODIFY VALUES BELOW ONLY) 
"
highlight numeric     ctermfg=31
highlight string      ctermfg=160
highlight stringQuote ctermfg=160 cterm=italic
highlight comment     ctermfg=08

highlight header   ctermfg=08 ctermbg=250 cterm=bold

highlight keyword1 ctermfg=130 " Orange
highlight keyword2 ctermfg=89  " Purple Dark
highlight keyword3 ctermfg=172 " Yellow

highlight chr      ctermfg=28 cterm=bold
highlight chrStart ctermfg=28

highlight ntA ctermfg=Black ctermbg=10  guibg=#272822
highlight ntG ctermfg=Black ctermbg=214 guibg=#FF8C00
highlight ntC ctermfg=Black ctermbg=9   guibg=#2A0AFD
highlight ntT ctermfg=Black ctermbg=33  guibg=#FD0A0A
highlight ntN ctermfg=Black ctermbg=255 guibg=#FD0A0A
highlight nt_ ctermfg=Black ctermbg=255 guibg=#000000
