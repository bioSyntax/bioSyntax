if exists("syntax_on")
        syntax reset
endif

syntax region chr matchgroup=chr start='^' end='\n' contains=start
syntax region start matchgroup=start start='\t' end='\n\@=' contains=end,coord
syntax region end matchgroup=end start='\t' end='\n\@=' contains=desc,coord
syntax region desc matchgroup=desc start='\t' end='\n\@=' 

syntax match chr "^\w*"

syntax match coord "\(\(\s\+\)[0-9]*\)\{1,2}" 

syntax match info "\(\s\+\)\{1,}\w*$"


highlight chr ctermfg=32
highlight coord ctermfg=43
highlight info ctermfg=28
