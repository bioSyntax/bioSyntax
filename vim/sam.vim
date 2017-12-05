" Sam syntax file
" Language: SAM
" Filetypes: .sam 
" Maintainer: bioSyntax
" Version: v0

if exists("syntax_on")
	syntax reset
	" sam syntax is per-line so restrict context to one line
    syntax sync minlines=1
  " sam are wide files; remove word-wrapping
    set nowrap
endif

" SAM DATA Selection
" =========================================================
"
" Column 1: CHROM
  syntax region readname start='^[^@]' end='$' keepend contains=COL2

" Column 2: POS
  syntax region COL2  matchgroup=COL2 start='\t' end='\n\@=' keepend contained contains=COL3
  syntax match flag '[0-9]\+' containedin=COL2
  " Add 512+ flag tag logic

" Column 3: RNAME
  syntax region COL3  matchgroup=COL3 start='\t' end='\n\@=' keepend contained contains=COL4,rname
  syntax match rname '\t\@<=\S\+\t\@=' containedin=COL3

" Column 4: POS
  syntax region COL4  matchgroup=COL4 start='\t' end='\n\@=' keepend contained contains=COL5,pos
  syntax match pos '\t\@<=\d\+\t\@=' containedin=COL4

" Column 5: MAPQ
  syntax region COL5  matchgroup=COL5 start='\t' end='\n\@=' keepend contained contains=COL6,mapq
  syntax match mapq00 '\t\@<=\(0\|255\)\t\@=' containedin=COL5
  syntax match mapq0 '\t\@<=[1-9]\t\@=' containedin=COL5
  syntax match mapq1 '\t\@<=1[0-9]\t\@=' containedin=COL5
  syntax match mapq2 '\t\@<=2[0-9]\t\@=' containedin=COL5
  syntax match mapq3 '\t\@<=3[0-9]\t\@=' containedin=COL5
  syntax match mapq4 '\t\@<=4[0-9]\t\@=' containedin=COL5
  syntax match mapq5 '\t\@<=[5-9][0-9]\t\@=' containedin=COL5

" Column 6: CIGAR
  syntax region COL6  matchgroup=COL6 start='\t' end='\n\@=' keepend contained contains=COL7 
  "syntax match cigMat  '[0-9]*[M=]' containedin=COL6
  syntax match cigClpS  '\t\@<=[0-9]*[NSHP]' containedin=COL6
  syntax match cigClpE  '[0-9]*[NSHP]\t\@=' containedin=COL6
  syntax match cigMis  '[0-9]*X' containedin=COL6
  syntax match cigIns  '[0-9]*I' containedin=COL6
  syntax match cigDel  '[0-9]*D' containedin=COL6

" Column 7: RNEXT + Column 8: PNEXT
  syntax region COL7  matchgroup=COL7 start='\t' end='\n\@=' keepend contained contains=COL9
  "RNext = RName
  syntax match rmis '\t\@<=\S\+\t[0-9]\+' containedin=COL7
  "RNext = RName
  syntax match rmatch '=\t[0-9]\+' containedin=COL7

" Column 9: TLEN
  syntax region COL9  matchgroup=COL9 start='\t' end='\n\@=' keepend contained contains=COL10
  syntax match tlen '\t\@<=[0-9]\+' containedin=COL9

" Column 10: NT SEQ
  syntax region COL10  matchgroup=COL10 start='\t' end='\n\@=' keepend contained contains=COL11,nt
  syntax match ntA '[Aa]\+' containedin=COL10
  syntax match ntT '[Tt]\+' containedin=COL10
  syntax match ntG '[Gg]\+' containedin=COL10
  syntax match ntC '[Cc]\+' containedin=COL10

" Column 11: PHRED SCORE
  syntax region COL11  matchgroup=COL11 start='\t' end='\n\@=' keepend contained contains=COL12,phred
  " Complete Phred Scale
  " !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
  "
  " Illumina 1.8 Scale (IMPLEMENTED)
  " 0.2.......................26...31.......41     
  " !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKL
  " |   |   |   |   |   |   |   |   |   |   | ...
  syntax match phred00 '[!-$]\+'  containedin=COL11
  syntax match phred0  '[%-(]\+'  containedin=COL11
  syntax match phred1  '[)-,]\+'  containedin=COL11
  syntax match phred2  '[\--0]\+' containedin=COL11
  syntax match phred3  '[1-4]\+'  containedin=COL11
  syntax match phred4  '[5-8]\+'  containedin=COL11
  syntax match phred5  '[9-<]\+'  containedin=COL11
  syntax match phred6  '[=-@]\+'  containedin=COL11
  syntax match phred7  '[A-D]\+'  containedin=COL11
  syntax match phred9  '[E-H]\+'  containedin=COL11
  syntax match phred10 '[I-L]\+'  containedin=COL11

" Column 12: Tags
  syntax region COL12  matchgroup=COL12 start='\t' end='\n\@=' keepend contained contains=ENDLINE

  syntax region endtag start='\t\@<=[A-Z][A-Z]:' end='\t' containedin=COL12 contains=ENDLINE
    syntax region numtag matchgroup=numtag start='[ifH]:' end='\t' containedin=endtag
    syntax match ifh ':\@<=\S\+' containedin=numtag

    syntax region strtag matchgroup=numtag start='[AZB]:' end='\t' containedin=endtag
    syntax match azb ':\@<=\S\+' containedin=strtag


" End of line
syntax match ENDLINE '\n' contained


" SAM Header Selection
" =========================================================
"
syntax region header start='@\@=' end='\n' keepend contains=headerHD,headerSQ,headerRG,headerPG
  
  " Generic Header
  syntax region XX start='[A-Za-z][A-Za-z]:' end='\t' contained contains=numeric,string
        syntax match string ':\@<=\S*[\t\n]\@=' containedin=XX
        syntax match numeric ':\@<=[\-\.0-9]*[\t\n]\@=' containedin=XX

  syntax match TAB '\t' contained

  " HD Header Header
  syntax region headerHD start='@HD' end='\n' keepend contains=VN,SO,XX,TAB 

    syntax region VN start='VN:' end='[\t\n]' keepend containedin=headerHD
      syntax match version ':\@<=\S*[\t\n]\@=' containedin=VN
    syntax region SO start='SO:' end='[\t\n]' keepend containedin=headerHD
      syntax match sorted ':\@<=\(coordinate\|queryname\)[\t\n]\@=' containedin=SO
      syntax match unsorted ':\@<=\(unsorted\|unknown\)[\t\n]\@=' containedin=SO

  " SQ Sequence Header
  syntax region headerHD start='@SQ' end='\n' keepend contains=SN,LN,XX,TAB

    syntax region SN start='SN:' end='[\t\n]' keepend containedin=headerSQ
        syntax match chr ':\@<=\S*[\t\n]\@=' containedin=SN
    syntax region LN start='LN:' end='[\t\n]' keepend containedin=headerSQ
        syntax match chrStart ':\@<=\d*[\t\n]\@=' containedin=LN

  " RG Read Group Header
  syntax region headerRG start='@RG' end='\n' keepend contains=ID,PL,XX,TAB
    " Sample Tags
    syntax region ID start='\(ID\|LB\|SM\):' end='[\t\n]' keepend containedin=headerRG
        syntax match library ':\@<=\S*[\t\n]\@=' containedin=ID
    " Sample Tags
    syntax region PL start='\(PL\|PU\):' end='[\t\n]' keepend containedin=headerRG
        syntax match platform ':\@<=\S*[\t\n]\@=' containedin=PL

  " PG Program Group Header
  syntax region headerRG start='@PG' end='\n' keepend contains=PN,VN,CL,XX,TAB
    syntax region PN start='\(ID\|PN\|SM\|CL\):' end='[\t\n]' keepend containedin=headerPG
        syntax match software ':\@<=.*[\t\n]\@=' containedin=PN

  " CO Comment Header
  syntax region headerCO start='@CO' end='\n' keepend

" Highlighting / Local Link Controls
" =========================================================

" Data Variables
highlight link readname string
highlight link flag numeric2
highlight link rname chr
highlight link pos chrStart

highlight link mapq00 gradbw00
highlight link mapq0 gradbw0
highlight link mapq1 gradbw2
highlight link mapq2 gradbw4
highlight link mapq3 gradbw6
highlight link mapq4 gradbw9
highlight link mapq5 gradbw10

highlight link cigClpE comment2
highlight link cigClpS comment2
highlight link cigMat default
highlight link cigMis string
highlight link cigIns numeric
highlight link cigDel keyword1

highlight link rmatch chrStart
highlight link rmis   string

highlight link tlen   comment2

highlight link phred00 gradbw00
highlight link phred0  gradbw0
highlight link phred1  gradbw1
highlight link phred2  gradbw2
highlight link phred3  gradbw3
highlight link phred4  gradbw4
highlight link phred5  gradbw5
highlight link phred6  gradbw6
highlight link phred7  gradbw7
highlight link phred8  gradbw8
highlight link phred9  gradbw9
highlight link phred10 gradbw10

highlight link endtag string
highlight link numtag comment2
highlight link strtag comment2
highlight link ifh    numeric
highlight link azb    keyword3

" Header Variables
highlight link headerTag header
 highlight link headerHD headerTag
 highlight link headerSQ headerTag
 highlight link headerRG headerTag
 highlight link headerPG headerTag
 highlight link headerCO comment

highlight link headerText default
 highlight link VN headerText
 highlight link SO headerText
 highlight link SN headerText
 highlight link LN headerText
 highlight link ID headerText " LB, SM
 highlight link PL headerText " PU
 highlight link PN headerText " ID (software), PN
 highlight link XX headerText " Generic

highlight link version numeric2

highlight link sorted ntT
highlight link unsorted ntC

highlight link library numeric
highlight link platform string


" Highlighting / Global Theme Control
" =========================================================
" (TO CHANGE THEME COLORS, MODIFY VALUES BELOW ONLY) 
"
highlight header   ctermfg=08 ctermbg=250 cterm=bold

highlight numeric     ctermfg=31
highlight numeric2    ctermfg=61
highlight string      ctermfg=160
highlight stringQuote ctermfg=160
highlight comment2    ctermfg=245 cterm=italic

highlight keyword1 ctermfg=130 " Orange
highlight keyword2 ctermfg=89  " Purple Dark
highlight keyword3 ctermfg=172 " Yellow
highlight keyword4 ctermfg=33  " L.blue

highlight software ctermfg=166

highlight chr      ctermfg=28 cterm=bold
highlight chrStart ctermfg=28

highlight ntA ctermfg=Black ctermbg=10  guibg=#272822
highlight ntG ctermfg=Black ctermbg=214 guibg=#FF8C00
highlight ntC ctermfg=Black ctermbg=9   guibg=#2A0AFD
highlight ntT ctermfg=Black ctermbg=33  guibg=#FD0A0A
highlight ntN ctermfg=Black ctermbg=255 guibg=#FD0A0A
highlight nt_ ctermfg=Black ctermbg=255 guibg=#000000

highlight gradbw00 ctermfg=243 ctermbg=0
highlight gradbw0  ctermfg=245 ctermbg=0
highlight gradbw1  ctermfg=0 ctermbg=246
highlight gradbw2  ctermfg=0 ctermbg=247
highlight gradbw3  ctermfg=0 ctermbg=248
highlight gradbw4  ctermfg=235 ctermbg=249
highlight gradbw5  ctermfg=235 ctermbg=250
highlight gradbw6  ctermfg=241 ctermbg=251
highlight gradbw7  ctermfg=241 ctermbg=252
highlight gradbw8  ctermfg=241 ctermbg=253
highlight gradbw9  ctermfg=250 ctermbg=255
highlight gradbw10 ctermfg=250 ctermbg=15
