" Vim syntax file
" Language: biomolecule structure files

if exists("syntax_on")
	syntax reset
	colorscheme bioSyntax
	set nowrap
endif

" to match the following string with keywords
syn match pdbHeader '^HEADER\s\+.*\n'
syn match pdbTitle '^TITLE\s\+.*\n'
syn match pdbCompound '^COMPND\s\+.*\n'
syn match pdbSource '^SOURCE\s\+.*\n'
syn match pdbKeywords '^KEYWDS\s\+.*\n'
syn match pdbExpdta '^EXPDTA\s\+.*\n'
syn match pdbAuthor '^AUTHOR\s\+.*\n'
syn match pdbRevdat '^REVDAT\s\+.*\n'
syn match pdbJournalTitle '\s\+TITL.*'
syn match pdbRemark '^REMARK\s\+.*\n'
syn match pdbHelix '^HELIX\s\+.*\n'
syn match pdbSheet '^SHEET\s\+.*\n'
syn match pdbSite '^SITE\s\+.*\n'
syn match pdbResolution '^RESOLUTION'
syn match pdbSsbond '\(^SSBOND\|^CISPEP\).*\n'
syn match pdbHetatm '^HETATM\s\+.*\n'

"colors for chains 
syn match pdbSeqresABg '\(SEQRES\s\+\d\+\s\+\)\@<=A\s*\d\+\s*.*'
syn match pdbSeqresBBg '\(SEQRES\s\+\d\+\s\+\)\@<=B\s*\d\+\s*.*'
syn match pdbSeqresCBg '\(SEQRES\s\+\d\+\s\+\)\@<=C\s*\d\+\s*.*'
syn match pdbSeqresDBg '\(SEQRES\s\+\d\+\s\+\)\@<=D\s*\d\+\s*.*'
syn match pdbSeqresEBg '\(SEQRES\s\+\d\+\s\+\)\@<=E\s*\d\+\s*.*'
syn match pdbSeqresFBg '\(SEQRES\s\+\d\+\s\+\)\@<=F\s*\d\+\s*.*'
syn match pdbSeqresGBg '\(SEQRES\s\+\d\+\s\+\)\@<=G\s*\d\+\s*.*'
syn match pdbSeqresHBg '\(SEQRES\s\+\d\+\s\+\)\@<=H\s*\d\+\s*.*'
syn match pdbSeqresIBg '\(SEQRES\s\+\d\+\s\+\)\@<=I\s*\d\+\s*.*'
syn match pdbSeqresJBg '\(SEQRES\s\+\d\+\s\+\)\@<=J\s*\d\+\s*.*'
syn match pdbSeqresKBg '\(SEQRES\s\+\d\+\s\+\)\@<=K\s*\d\+\s*.*'
syn match pdbSeqresLBg '\(SEQRES\s\+\d\+\s\+\)\@<=L\s*\d\+\s*.*'
syn match pdbSeqresMBg '\(SEQRES\s\+\d\+\s\+\)\@<=M\s*\d\+\s*.*'
syn match pdbSeqresNBg '\(SEQRES\s\+\d\+\s\+\)\@<=N\s*\d\+\s*.*'
syn match pdbSeqresOBg '\(SEQRES\s\+\d\+\s\+\)\@<=O\s*\d\+\s*.*'
syn match pdbSeqresPBg '\(SEQRES\s\+\d\+\s\+\)\@<=P\s*\d\+\s*.*'
syn match pdbSeqresQBg '\(SEQRES\s\+\d\+\s\+\)\@<=Q\s*\d\+\s*.*'
syn match pdbSeqresRBg '\(SEQRES\s\+\d\+\s\+\)\@<=R\s*\d\+\s*.*'
syn match pdbSeqresSBg '\(SEQRES\s\+\d\+\s\+\)\@<=S\s*\d\+\s*.*'
syn match pdbSeqresTBg '\(SEQRES\s\+\d\+\s\+\)\@<=T\s*\d\+\s*.*'
syn match pdbSeqresUBg '\(SEQRES\s\+\d\+\s\+\)\@<=U\s*\d\+\s*.*'
syn match pdbSeqresVBg '\(SEQRES\s\+\d\+\s\+\)\@<=V\s*\d\+\s*.*'
syn match pdbSeqresWBg '\(SEQRES\s\+\d\+\s\+\)\@<=W\s*\d\+\s*.*'
syn match pdbSeqresXBg '\(SEQRES\s\+\d\+\s\+\)\@<=X\s*\d\+\s*.*'
syn match pdbSeqresYBg '\(SEQRES\s\+\d\+\s\+\)\@<=Y\s*\d\+\s*.*'
syn match pdbSeqresZBg '\(SEQRES\s\+\d\+\s\+\)\@<=Z\s*\d\+\s*.*'

"3 columns at ATOM section

"for aminoacids
syn match pdbAminoacidGly '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+GLY'
syn match pdbAminoacidAla '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+ALA'
syn match pdbAminoacidVal '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+VAL'
syn match pdbAminoacidLeu '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+LEU'
syn match pdbAminoacidIle '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+ILE'
syn match pdbAminoacidMet '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+MET'
syn match pdbAminoacidPro '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+PRO'
syn match pdbAminoacidPhe '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+PHE'
syn match pdbAminoacidTrp '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+TRP'
syn match pdbAminoacidSer '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+SER'
syn match pdbAminoacidThr '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+THR'
syn match pdbAminoacidCys '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+CYS'
syn match pdbAminoacidTyr '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+TYR'
syn match pdbAminoacidAsn '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+ASN'
syn match pdbAminoacidGln '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+GLN'
syn match pdbAminoacidAsp '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+ASP'
syn match pdbAminoacidGlu '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+GLU'
syn match pdbAminoacidLys '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+LYS'
syn match pdbAminoacidArg '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+ARG'
syn match pdbAminoacidHis '\(\(^ATOM\|ANISOU\)\s\+\d\+\s\+\w\+\)\@<=\s\+HIS'

"for chains
syn match pdbChainA '\([A-Z]\{3}\s\+\)\@<=A'
syn match pdbChainB '\([A-Z]\{3}\s\+\)\@<=B'
syn match pdbChainC '\([A-Z]\{3}\s\+\)\@<=C'
syn match pdbChainD '\([A-Z]\{3}\s\+\)\@<=D'
syn match pdbChainE '\([A-Z]\{3}\s\+\)\@<=E'
syn match pdbChainF '\([A-Z]\{3}\s\+\)\@<=F'
syn match pdbChainG '\([A-Z]\{3}\s\+\)\@<=G'
syn match pdbChainH '\([A-Z]\{3}\s\+\)\@<=H'
syn match pdbChainI '\([A-Z]\{3}\s\+\)\@<=I'
syn match pdbChainJ '\([A-Z]\{3}\s\+\)\@<=J'
syn match pdbChainK '\([A-Z]\{3}\s\+\)\@<=K'
syn match pdbChainL '\([A-Z]\{3}\s\+\)\@<=L'
syn match pdbChainM '\([A-Z]\{3}\s\+\)\@<=M'
syn match pdbChainN '\([A-Z]\{3}\s\+\)\@<=N'
syn match pdbChainO '\([A-Z]\{3}\s\+\)\@<=O'
syn match pdbChainP '\([A-Z]\{3}\s\+\)\@<=P'
syn match pdbChainQ '\([A-Z]\{3}\s\+\)\@<=Q'
syn match pdbChainR '\([A-Z]\{3}\s\+\)\@<=R'
syn match pdbChainS '\([A-Z]\{3}\s\+\)\@<=S'
syn match pdbChainT '\([A-Z]\{3}\s\+\)\@<=T'
syn match pdbChainU '\([A-Z]\{3}\s\+\)\@<=U'
syn match pdbChainV '\([A-Z]\{3}\s\+\)\@<=V'
syn match pdbChainW '\([A-Z]\{3}\s\+\)\@<=W'
syn match pdbChainX '\([A-Z]\{3}\s\+\)\@<=X'
syn match pdbChainY '\([A-Z]\{3}\s\+\)\@<=Y'
syn match pdbChainZ '\([A-Z]\{3}\s\+\)\@<=Z'

syn match pdbNumber '\([A-Z]\{3}\s\+[A-Z]\s\+\)\@<=\d\+'

"syn match pdbString ':\s*[A-Za-z]\+\s\+$'
syn match pdbDigitValues '\(:\)\@<=\s*-\?\d\+\.\?\d*\(\s*-\?\d\+\.\?\d*\)*'
syn match pdbString '\(:\)\@<=\s*[A-Za-z]\+\s*\d*\(,\?\s\?[A-Za-z]\s*\d*\)*'
syn match pdbNull '\(:\)\@<=\s*NULL'
syn match pdbSemiValues '\(;\)\@<=\s*-\?\d\+\.\?\d*'
syn match pdbSemiString '\(;\)\@<=\s*[A-Za-z]\+'
syn match pdbSemiNull '\(;\)\@<=\s*NULL'
"test
"syn match pdbStringValues '\(:\)\@<=\s*.*'

syn region pdbJournalRegion start="^JRNL" end="$" contains=pdbJournalTitle
syn region pdbRemarkSemicolon start=";" end=";" contains=pdbDigitValues, pdbNull, pdbString
syn region pdbRemarkRegion start="^REMARK\s\+" end="$" contains=pdbResolution, pdbDigitValues, pdbNull, pdbString, pdbSemiValues, pdbSemiNull, pdbSemiString 
syn region pdbSeqres start="^SEQRES" end="$" contains=pdbSeqresABg, pdbSeqresBBg, pdbSeqresCBg, pdbSeqresDBg, pdbSeqresEBg, pdbSeqresFBg, 
\pdbSeqresGBg, pdbSeqresHBg, pdbSeqresIBg, pdbSeqresJBg, pdbSeqresKBg, 
\pdbSeqresLBg, pdbSeqresMBg, pdbSeqresNBg, pdbSeqresOBg, pdbSeqresPBg, 
\pdbSeqresQBg, pdbSeqresRBg, pdbSeqresSBg, pdbSeqresTBg, pdbSeqresUBg, 
\pdbSeqresVBg, pdbSeqresWBg, pdbSeqresXBg, pdbSeqresYBg, pdbSeqresZBg
syn region pdbAtom start="^ATOM" end="$" contains=pdbAminoacidGly, pdbAminoacidAla, pdbAminoacidVal, pdbAminoacidLeu, 
\pdbAminoacidIle, pdbAminoacidMet, pdbAminoacidPro, pdbAminoacidPhe, 
\pdbAminoacidTrp, pdbAminoacidSer, pdbAminoacidThr, pdbAminoacidCys, 
\pdbAminoacidTyr, pdbAminoacidAsn, pdbAminoacidGln, pdbAminoacidAsp, 
\pdbAminoacidGlu, pdbAminoacidLys, pdbAminoacidArg, pdbAminoacidHis,
\pdbNumber, pdbChainA, pdbChainB, pdbChainC, pdbChainD,
\pdbChainE, pdbChainF, pdbChainG, pdbChainH, pdbChainI,
\pdbChainJ, pdbChainK, pdbChainL, pdbChainM, pdbChainN,
\pdbChainO, pdbChainP, pdbChainQ, pdbChainR, pdbChainS,
\pdbChainT, pdbChainU, pdbChainV, pdbChainW, pdbChainX,
\pdbChainY, pdbChainZ  
syn region pdbAnisou start="^ANISOU" end="$" contains=pdbAminoacidGly, pdbAminoacidAla, pdbAminoacidVal, pdbAminoacidLeu, 
\pdbAminoacidIle, pdbAminoacidMet, pdbAminoacidPro, pdbAminoacidPhe, 
\pdbAminoacidTrp, pdbAminoacidSer, pdbAminoacidThr, pdbAminoacidCys, 
\pdbAminoacidTyr, pdbAminoacidAsn, pdbAminoacidGln, pdbAminoacidAsp, 
\pdbAminoacidGlu, pdbAminoacidLys, pdbAminoacidArg, pdbAminoacidHis,
\pdbNumber, pdbChainA, pdbChainB, pdbChainC, pdbChainD,
\pdbChainE, pdbChainF, pdbChainG, pdbChainH, pdbChainI,
\pdbChainJ, pdbChainK, pdbChainL, pdbChainM, pdbChainN,
\pdbChainO, pdbChainP, pdbChainQ, pdbChainR, pdbChainS,
\pdbChainT, pdbChainU, pdbChainV, pdbChainW, pdbChainX,
\pdbChainY, pdbChainZ 

let b:current_syntax = "pdb"

highlight pdbHeader ctermfg=White ctermbg=Red guifg=White guibg=Red
highlight pdbTitle ctermfg=Red guifg=Red
highlight pdbCompound ctermfg=Blue guifg=Blue
highlight pdbSource ctermfg=Yellow guifg=Yellow
highlight pdbKeywords ctermfg=Grey guifg=Grey
highlight pdbExpdta ctermfg=Brown guifg=Brown
highlight pdbAuthor ctermfg=DarkMagenta guifg=DarkMagenta
highlight pdbRevdat ctermfg=Red guifg=Red
highlight pdbJournalTitle ctermfg=Green guifg=Green
highlight pdbRemark ctermfg=Cyan guifg=Cyan
highlight pdbResolution ctermfg=Green guifg=Green
highlight pdbSeqres ctermfg=Magenta guifg=Magenta
highlight pdbHetatm ctermfg=Red guifg=Red
highlight pdbSeqresBg ctermfg=White ctermbg=Red guifg=White guibg=Red

highlight pdbDigitValues ctermfg=Green guifg=Green
highlight pdbString ctermfg=Green guifg=Green
highlight pdbNull ctermfg=Red guifg=Red
highlight pdbSemiValues ctermfg=Green guifg=Green
highlight pdbSemiString ctermfg=Green guifg=Green
highlight pdbSemiNull ctermfg=Red guifg=Red

"different chains in SEQRES
highlight link pdbSeqresABg zappoA " ctermfg=Black ctermbg=10 guifg=Black guibg=#47FF19
highlight pdbSeqresBBg ctermfg=Black ctermbg=75 guifg=Black guibg=#4192FF 
highlight pdbSeqresCBg ctermfg=Black ctermbg=94 guifg=Black guibg=#F09000 
highlight pdbSeqresDBg ctermfg=White ctermbg=76 guifg=White guibg=#FF4641  
highlight pdbSeqresEBg ctermfg=Black ctermbg=10 guifg=Black guibg=#47FF19
highlight pdbSeqresFBg ctermfg=Black ctermbg=75 guifg=Black guibg=#4192FF 
highlight pdbSeqresGBg ctermfg=Black ctermbg=94 guifg=Black guibg=#F09000 
highlight pdbSeqresHBg ctermfg=White ctermbg=76 guifg=White guibg=#FF4641  
highlight pdbSeqresIBg ctermfg=Black ctermbg=10 guifg=Black guibg=#47FF19
highlight pdbSeqresJBg ctermfg=Black ctermbg=75 guifg=Black guibg=#4192FF 
highlight pdbSeqresKBg ctermfg=Black ctermbg=94 guifg=Black guibg=#F09000 
highlight pdbSeqresLBg ctermfg=White ctermbg=76 guifg=White guibg=#FF4641  
highlight pdbSeqresMBg ctermfg=Black ctermbg=10 guifg=Black guibg=#47FF19
highlight pdbSeqresNBg ctermfg=Black ctermbg=75 guifg=Black guibg=#4192FF 
highlight pdbSeqresOBg ctermfg=Black ctermbg=94 guifg=Black guibg=#F09000 
highlight pdbSeqresPBg ctermfg=White ctermbg=76 guifg=White guibg=#FF4641  
highlight pdbSeqresQBg ctermfg=Black ctermbg=10 guifg=Black guibg=#47FF19
highlight pdbSeqresRBg ctermfg=Black ctermbg=75 guifg=Black guibg=#4192FF 
highlight pdbSeqresSBg ctermfg=Black ctermbg=94 guifg=Black guibg=#F09000 
highlight pdbSeqresTBg ctermfg=White ctermbg=76 guifg=White guibg=#FF4641  
highlight pdbSeqresUBg ctermfg=Black ctermbg=10 guifg=Black guibg=#47FF19
highlight pdbSeqresVBg ctermfg=Black ctermbg=75 guifg=Black guibg=#4192FF 
highlight pdbSeqresWBg ctermfg=Black ctermbg=94 guifg=Black guibg=#F09000 
highlight pdbSeqresXBg ctermfg=White ctermbg=76 guifg=White guibg=#FF4641  
highlight pdbSeqresYBg ctermfg=Black ctermbg=10 guifg=Black guibg=#47FF19
highlight pdbSeqresZBg ctermfg=Black ctermbg=75 guifg=Black guibg=#4192FF 

highlight pdbHelix ctermfg=Cyan guifg=Cyan
highlight pdbSheet ctermfg=Brown guifg=Brown
highlight pdbSite ctermfg=Yellow guifg=Yellow
highlight pdbSsbond ctermfg=Green guifg=Green

"higlight aminoacids
highlight link pdbAminoacidGly aaG
highlight link pdbAminoacidAla aaA
highlight link pdbAminoacidVal aaV
highlight link pdbAminoacidLeu aaL
highlight link pdbAminoacidIle aaI
highlight link pdbAminoacidMet aaM
highlight link pdbAminoacidPro aaP
highlight link pdbAminoacidPhe aaF
highlight link pdbAminoacidTrp aaW
highlight link pdbAminoacidSer aaS
highlight link pdbAminoacidThr aaT
highlight link pdbAminoacidCys aaC
highlight link pdbAminoacidTyr aaY
highlight link pdbAminoacidAsn aaN
highlight link pdbAminoacidGln aaQ
highlight link pdbAminoacidAsp aaD
highlight link pdbAminoacidGlu aaE
highlight link pdbAminoacidLys aaK
highlight link pdbAminoacidArg aaR
highlight link pdbAminoacidHis aaH

"highlight chains
highlight link pdbChainA aaA 
highlight link pdbChainB aaB 
highlight link pdbChainC aaC 
highlight link pdbChainD aaD 
highlight link pdbChainE aaE 
highlight link pdbChainF aaF 
highlight link pdbChainG aaG 
highlight link pdbChainH aaH 
highlight link pdbChainI aaI 
highlight link pdbChainJ aaJ 
highlight link pdbChainK aaK 
highlight link pdbChainL aaL 
highlight link pdbChainM aaM 
highlight link pdbChainN aaN 
highlight link pdbChainO aaO 
highlight link pdbChainP aaP 
highlight link pdbChainQ aaQ 
highlight link pdbChainR aaR 
highlight link pdbChainS aaS 
highlight link pdbChainT aaT 
highlight link pdbChainU aaU 
highlight link pdbChainV aaV 
highlight link pdbChainW aaW 
highlight link pdbChainX aaX 
highlight link pdbChainY aaY 
highlight link pdbChainZ aaZ 

highlight link pdbNumber numeric2

hi def link pdbRemarkRegion Keyword
hi def link pdbJournalRegion String
hi def link pdbSeqres Keyword
hi def link pdbAtom String
hi def link pdbAnisou String  
