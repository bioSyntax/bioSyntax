set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bioSyntax"
" set Line Numbering color to gray
highlight LineNr ctermfg=grey

" bioSyntax Theme Standard
" Generic Classes
highlight   normal	cterm=NONE	guibg=NONE	guifg=NONE	ctermbg=NONE	ctermfg=NONE
highlight	string	cterm=NONE	guibg=NONE	guifg=#FF4641	ctermbg=NONE	ctermfg=160
highlight	quoteString	cterm=NONE	guibg=NONE	guifg=#FF4641	ctermbg=NONE	ctermfg=160
highlight	numeric	cterm=NONE	guibg=NONE	guifg=#0087af	ctermbg=NONE	ctermfg=31
highlight	numeric2	cterm=NONE	guibg=NONE	guifg=#AE81FF	ctermbg=NONE	ctermfg=61
highlight	header	cterm=bold	guibg=#3E3D32	guifg=#E6DB74	ctermbg=0	ctermfg=253
highlight	headerbw	cterm=NONE	guibg=NONE	guifg=#BDB691	ctermbg=NONE	ctermfg=137
highlight	comment	cterm=NONE	guibg=NONE	guifg=#B1B1AF	ctermbg=NONE	ctermfg=250
highlight	comment2	cterm=NONE	guibg=NONE	guifg=#B1B1AF	ctermbg=NONE	ctermfg=245
highlight	url	cterm=NONE	guibg=NONE	guifg=#66D9EF	ctermbg=NONE	ctermfg=45

highlight	keyword1	cterm=NONE	guibg=NONE	guifg=#F92672	ctermbg=NONE	ctermfg=162
highlight	keyword2	cterm=NONE	guibg=NONE	guifg=#A6E22E	ctermbg=NONE	ctermfg=113
highlight	keyword3	cterm=NONE	guibg=NONE	guifg=#66D9EF	ctermbg=NONE	ctermfg=45
highlight	keyword4	cterm=NONE	guibg=NONE	guifg=#FD971F	ctermbg=NONE	ctermfg=166
highlight	keyword5	cterm=NONE	guibg=NONE	guifg=#AE81FF	ctermbg=NONE	ctermfg=61
highlight	keyword6	cterm=NONE	guibg=NONE	guifg=#E6DB74	ctermbg=NONE	ctermfg=178

highlight	genome	cterm=bold	guibg=NONE	guifg=#1E8449	ctermbg=NONE	ctermfg=28
highlight	chr	cterm=bold	guibg=NONE	guifg=#1E8449	ctermbg=NONE	ctermfg=28
highlight	chrStart	cterm=NONE	guibg=NONE	guifg=#1E8449	ctermbg=NONE	ctermfg=28
highlight	chrEnd	cterm=NONE	guibg=NONE	guifg=#1E8449	ctermbg=NONE	ctermfg=28
highlight	strandPlus	cterm=NONE	guibg=#4192FF	guifg=#000000	ctermbg=33	ctermfg=0
highlight	strandMinus	cterm=NONE	guibg=#F09000	guifg=#000000	ctermbg=166	ctermfg=0
highlight	strandNone	cterm=NONE	guibg=NONE	guifg=#B1B1AF	ctermbg=NONE	ctermfg=245
highlight	geneSymbol	cterm=NONE	guibg=NONE	guifg=#1E8449	ctermbg=NONE	ctermfg=28
highlight	geneLevel	cterm=bold	guibg=NONE	guifg=#1E8449	ctermbg=NONE	ctermfg=28
highlight	transcriptLevel	cterm=NONE	guibg=NONE	guifg=#4192FF	ctermbg=NONE	ctermfg=33
highlight	exonLevel	cterm=NONE	guibg=NONE	guifg=#AE81FF	ctermbg=NONE	ctermfg=61
highlight	cds	cterm=NONE	guibg=#000000	guifg=#A6E22E	ctermbg=0	ctermfg=113
highlight	start_codon	cterm=NONE	guibg=#4192FF	guifg=#000000	ctermbg=33	ctermfg=0
highlight	stop_codon	cterm=NONE	guibg=#FF4641	guifg=#000000	ctermbg=9	ctermfg=0
highlight	utr	cterm=NONE	guibg=#FFFFFF	guifg=#B1B1AF	ctermbg=15	ctermfg=245

highlight	software	cterm=NONE	guibg=NONE	guifg=#FD971F	ctermbg=NONE	ctermfg=166
highlight	version	cterm=NONE	guibg=NONE	guifg=#AE81FF	ctermbg=NONE	ctermfg=61
highlight	command	cterm=NONE	guibg=NONE	guifg=#FD971F	ctermbg=NONE	ctermfg=166

highlight	library	cterm=NONE	guibg=NONE	guifg=#66D9EF	ctermbg=NONE	ctermfg=45
highlight	platform	cterm=NONE	guibg=NONE	guifg=#F92672	ctermbg=NONE	ctermfg=162
highlight	bon	cterm=NONE	guibg=#4192FF	guifg=#000000	ctermbg=33	ctermfg=0
highlight	mal	cterm=NONE	guibg=#FF4641	guifg=#000000	ctermbg=9	ctermfg=0

highlight	cigMat	cterm=NONE	guibg=NONE	guifg=#D8D8D7	ctermbg=NONE	ctermfg=253
highlight	cigMis	cterm=NONE	guibg=NONE	guifg=#FF4641	ctermbg=NONE	ctermfg=9
highlight	cigIns	cterm=NONE	guibg=NONE	guifg=#4192FF	ctermbg=NONE	ctermfg=33
highlight	cigDel	cterm=NONE	guibg=NONE	guifg=#F09000	ctermbg=NONE	ctermfg=166
highlight	cigN	cterm=NONE	guibg=NONE	guifg=#4F504B	ctermbg=NONE	ctermfg=240
highlight	cigClip	cterm=NONE	guibg=NONE	guifg=#4F504B	ctermbg=NONE	ctermfg=240

" Color Gradient 1
highlight	grad0	cterm=NONE	guibg=NONE	guifg=#FFFFFF	ctermbg=NONE	ctermfg=NONE
highlight	grad1	cterm=NONE	guibg=NONE	guifg=#FFE7FD	ctermbg=NONE	ctermfg=NONE
highlight	grad2	cterm=NONE	guibg=NONE	guifg=#FFCFFB	ctermbg=NONE	ctermfg=NONE
highlight	grad3	cterm=NONE	guibg=NONE	guifg=#FFB7F9	ctermbg=NONE	ctermfg=NONE
highlight	grad4	cterm=NONE	guibg=NONE	guifg=#FF9FF7	ctermbg=NONE	ctermfg=NONE
highlight	grad5	cterm=NONE	guibg=NONE	guifg=#FF88F6	ctermbg=NONE	ctermfg=NONE
highlight	grad6	cterm=NONE	guibg=NONE	guifg=#FF70F4	ctermbg=NONE	ctermfg=NONE
highlight	grad7	cterm=NONE	guibg=NONE	guifg=#FF58F2	ctermbg=NONE	ctermfg=NONE
highlight	grad8	cterm=NONE	guibg=NONE	guifg=#FF40F0	ctermbg=NONE	ctermfg=NONE
highlight	grad9	cterm=NONE	guibg=NONE	guifg=#FF29EF	ctermbg=NONE	ctermfg=NONE
highlight	grad10	cterm=NONE	guibg=NONE	guifg=#FF00EB	ctermbg=NONE	ctermfg=NONE

" Black and White Gradient 1
highlight	gradbw0	cterm=NONE	guibg=NONE	guifg=#3C3D38	ctermbg=0	ctermfg=245
highlight	gradbw1	cterm=NONE	guibg=NONE	guifg=#4F504B	ctermbg=246	ctermfg=0
highlight	gradbw2	cterm=NONE	guibg=NONE	guifg=#63635F	ctermbg=247	ctermfg=0
highlight	gradbw3	cterm=NONE	guibg=NONE	guifg=#767773	ctermbg=248	ctermfg=0
highlight	gradbw4	cterm=NONE	guibg=NONE	guifg=#8A8A87	ctermbg=249	ctermfg=235
highlight	gradbw5	cterm=NONE	guibg=NONE	guifg=#9D9E9B	ctermbg=250	ctermfg=235
highlight	gradbw6	cterm=NONE	guibg=NONE	guifg=#B1B1AF	ctermbg=251	ctermfg=241
highlight	gradbw7	cterm=NONE	guibg=NONE	guifg=#C4C4C3	ctermbg=252	ctermfg=241
highlight	gradbw8	cterm=NONE	guibg=NONE	guifg=#D8D8D7	ctermbg=253	ctermfg=241
highlight	gradbw9	cterm=NONE	guibg=NONE	guifg=#EBEBEB	ctermbg=255	ctermfg=250
highlight	gradbw10	cterm=NONE	guibg=NONE	guifg=#FFFFFF	ctermbg=15	ctermfg=250
highlight	gradbbw9	cterm=bold	guibg=NONE	guifg=#EBEBEB	ctermbg=255	ctermfg=250
highlight	gradbbw10	cterm=bold	guibg=NONE	guifg=#FFFFFF	ctermbg=15	ctermfg=250

" Nucleotide Coloring (Standard)
highlight	ntA	cterm=NONE	guibg=#47FF19	guifg=#000000	ctermbg=10	ctermfg=0
highlight	ntT	cterm=NONE	guibg=#4192FF	guifg=#000000	ctermbg=33	ctermfg=0
highlight	ntG	cterm=NONE	guibg=#FFAF00	guifg=#000000	ctermbg=214	ctermfg=0
highlight	ntC	cterm=NONE	guibg=#FF4641	guifg=#000000	ctermbg=9	ctermfg=0
highlight	ntU	cterm=NONE	guibg=#8A89FF	guifg=#000000	ctermbg=105	ctermfg=0
highlight	ntR	cterm=NONE	guibg=#FFFE80	guifg=#000000	ctermbg=229	ctermfg=0
highlight	ntY	cterm=NONE	guibg=#E180FF	guifg=#000000	ctermbg=183	ctermfg=0
highlight	ntS	cterm=NONE	guibg=#FF9B80	guifg=#000000	ctermbg=174	ctermfg=0
highlight	ntW	cterm=NONE	guibg=#80FFF2	guifg=#000000	ctermbg=86	ctermfg=0
highlight	ntM	cterm=NONE	guibg=#CE8834	guifg=#000000	ctermbg=130	ctermfg=0
highlight	ntK	cterm=NONE	guibg=#90B82C	guifg=#000000	ctermbg=148	ctermfg=0
highlight	ntD	cterm=NONE	guibg=#C7FFB9	guifg=#000000	ctermbg=158	ctermfg=0
highlight	ntB	cterm=NONE	guibg=#F8C1C0	guifg=#000000	ctermbg=225	ctermfg=0
highlight	ntV	cterm=NONE	guibg=#FFE3B9	guifg=#000000	ctermbg=223	ctermfg=0
highlight	ntH	cterm=NONE	guibg=#BFD8F9	guifg=#000000	ctermbg=153	ctermfg=0
highlight	ntN	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=15	ctermfg=0
highlight	ntX	cterm=NONE	guibg=NONE	guifg=#E6E6E6	ctermbg=NONE	ctermfg=254
highlight	ntGap	cterm=NONE	guibg=NONE	guifg=#E6E6E6	ctermbg=NONE	ctermfg=254

" Nucleotide Coloring (High Contrast)
highlight	hcA	cterm=NONE	guibg=#D2D2D2	guifg=#000000	ctermbg=15	ctermfg=0
highlight	hcT	cterm=NONE	guibg=#4192FF	guifg=#FFFFFF	ctermbg=33	ctermfg=15
highlight	hcG	cterm=NONE	guibg=#FF3200	guifg=#000000	ctermbg=9	ctermfg=0
highlight	hcC	cterm=NONE	guibg=#000000	guifg=#FFFFFF	ctermbg=0	ctermfg=15
highlight	hcU	cterm=NONE	guibg=#4A5CFF	guifg=#FFFFFF	ctermbg=63	ctermfg=15
highlight	hcR	cterm=NONE	guibg=#F49ACE	guifg=#000000	ctermbg=213	ctermfg=0
highlight	hcY	cterm=NONE	guibg=#00007D	guifg=#FFFFFF	ctermbg=17	ctermfg=15
highlight	hcS	cterm=NONE	guibg=#7D0000	guifg=#FFFFFF	ctermbg=1	ctermfg=15
highlight	hcW	cterm=NONE	guibg=#7DC8FF	guifg=#000000	ctermbg=14	ctermfg=0
highlight	hcM	cterm=NONE	guibg=#FFFE80	guifg=#000000	ctermbg=229	ctermfg=0
highlight	hcK	cterm=NONE	guibg=#9309A1	guifg=#000000	ctermbg=5	ctermfg=0
highlight	hcD	cterm=NONE	guibg=#EEB88E	guifg=#000000	ctermbg=223	ctermfg=0
highlight	hcB	cterm=NONE	guibg=#8B4915	guifg=#FFFFFF	ctermbg=130	ctermfg=0
highlight	hcV	cterm=NONE	guibg=#FF6432	guifg=#000000	ctermbg=225	ctermfg=0
highlight	hcH	cterm=NONE	guibg=#BFD8F9	guifg=#000000	ctermbg=153	ctermfg=0
highlight	hcN	cterm=NONE	guibg=#FFFFFF	guifg=#838383	ctermbg=7	ctermfg=8
highlight	hcX	cterm=NONE	guibg=#FFFFFF	guifg=#838383	ctermbg=7	ctermfg=8
highlight	hcGap	cterm=NONE	guibg=NONE	guifg=#838383	ctermbg=NONE	ctermfg=8

" Amino Acid Coloring (CLUSTAL)
highlight	aaA	cterm=NONE	guibg=#80A0F0	guifg=#000000	ctermbg=NONE	ctermfg=33
highlight	aaR	cterm=NONE	guibg=#F01505	guifg=#000000	ctermbg=NONE	ctermfg=9
highlight	aaN	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=10
highlight	aaD	cterm=NONE	guibg=#C048C0	guifg=#000000	ctermbg=NONE	ctermfg=90
highlight	aaC	cterm=NONE	guibg=#F08080	guifg=#000000	ctermbg=NONE	ctermfg=125
highlight	aaQ	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=10
highlight	aaE	cterm=NONE	guibg=#C048C0	guifg=#000000	ctermbg=NONE	ctermfg=90
highlight	aaG	cterm=NONE	guibg=#F09048	guifg=#000000	ctermbg=NONE	ctermfg=94
highlight	aaH	cterm=NONE	guibg=#15A4A4	guifg=#000000	ctermbg=NONE	ctermfg=37
highlight	aaI	cterm=NONE	guibg=#80A0F0	guifg=#000000	ctermbg=NONE	ctermfg=33
highlight	aaL	cterm=NONE	guibg=#80A0F0	guifg=#000000	ctermbg=NONE	ctermfg=33
highlight	aaK	cterm=NONE	guibg=#F01505	guifg=#000000	ctermbg=NONE	ctermfg=9
highlight	aaM	cterm=NONE	guibg=#80A0F0	guifg=#000000	ctermbg=NONE	ctermfg=33
highlight	aaF	cterm=NONE	guibg=#80A0F0	guifg=#000000	ctermbg=NONE	ctermfg=33
highlight	aaP	cterm=NONE	guibg=#FFFF00	guifg=#000000	ctermbg=NONE	ctermfg=11
highlight	aaS	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=10
highlight	aaT	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=10
highlight	aaW	cterm=NONE	guibg=#80A0F0	guifg=#000000	ctermbg=NONE	ctermfg=33
highlight	aaY	cterm=NONE	guibg=#15A4A4	guifg=#000000	ctermbg=NONE	ctermfg=37
highlight	aaV	cterm=NONE	guibg=#80A0F0	guifg=#000000	ctermbg=NONE	ctermfg=33
highlight	aaB	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	aaX	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	aaZ	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE

" Amino Acid Coloring (Zappo)
highlight	zappoA	cterm=NONE	guibg=#FFAFAF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoR	cterm=NONE	guibg=#6464FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoN	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoD	cterm=NONE	guibg=#FF0000	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoC	cterm=NONE	guibg=#FFFF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoQ	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoE	cterm=NONE	guibg=#FF0000	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoG	cterm=NONE	guibg=#FF00FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoH	cterm=NONE	guibg=#6464FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoI	cterm=NONE	guibg=#FFAFAF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoL	cterm=NONE	guibg=#FFAFAF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoK	cterm=NONE	guibg=#6464FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoM	cterm=NONE	guibg=#FFAFAF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoF	cterm=NONE	guibg=#FFC800	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoP	cterm=NONE	guibg=#FF00FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoS	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoT	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoW	cterm=NONE	guibg=#FFC800	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoY	cterm=NONE	guibg=#FFC800	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoV	cterm=NONE	guibg=#FFAFAF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoB	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoX	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	zappoZ	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE

" Amino Acid Coloring (Taylor)
highlight	taylorA	cterm=NONE	guibg=#CCFF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorR	cterm=NONE	guibg=#0000FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorN	cterm=NONE	guibg=#CC00FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorD	cterm=NONE	guibg=#FF0000	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorC	cterm=NONE	guibg=#FFFF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorQ	cterm=NONE	guibg=#FF00CC	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorE	cterm=NONE	guibg=#FF0066	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorG	cterm=NONE	guibg=#FF9900	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorH	cterm=NONE	guibg=#0066FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorI	cterm=NONE	guibg=#66FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorL	cterm=NONE	guibg=#33FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorK	cterm=NONE	guibg=#6600FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorM	cterm=NONE	guibg=#00FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorF	cterm=NONE	guibg=#00FF66	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorP	cterm=NONE	guibg=#FFCC00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorS	cterm=NONE	guibg=#FF3300	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorT	cterm=NONE	guibg=#FF6600	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorW	cterm=NONE	guibg=#00CCFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorY	cterm=NONE	guibg=#00FFCC	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorV	cterm=NONE	guibg=#99FF00	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorB	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorX	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	taylorZ	cterm=NONE	guibg=#FFFFFF	guifg=#000000	ctermbg=NONE	ctermfg=NONE

" Amino Acid Coloring (Hydrophobicity)
highlight	hydroA	cterm=NONE	guibg=#AD0052	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroR	cterm=NONE	guibg=#0000FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroN	cterm=NONE	guibg=#0C00F3	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroD	cterm=NONE	guibg=#0C00F3	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroC	cterm=NONE	guibg=#C2003D	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroQ	cterm=NONE	guibg=#0C00F3	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroE	cterm=NONE	guibg=#0C00F3	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroG	cterm=NONE	guibg=#6A0095	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroH	cterm=NONE	guibg=#1500EA	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroI	cterm=NONE	guibg=#FF0000	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroL	cterm=NONE	guibg=#EA0015	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroK	cterm=NONE	guibg=#0000FF	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroM	cterm=NONE	guibg=#B0004F	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroF	cterm=NONE	guibg=#CB0034	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroP	cterm=NONE	guibg=#4600B9	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroS	cterm=NONE	guibg=#5E00A1	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroT	cterm=NONE	guibg=#61009E	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroW	cterm=NONE	guibg=#5B00A4	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroY	cterm=NONE	guibg=#4F00B0	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroV	cterm=NONE	guibg=#F60009	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroB	cterm=NONE	guibg=#0C00F3	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroX	cterm=NONE	guibg=#680097	guifg=#000000	ctermbg=NONE	ctermfg=NONE
highlight	hydroZ	cterm=NONE	guibg=#0C00F3	guifg=#000000	ctermbg=NONE	ctermfg=NONE
