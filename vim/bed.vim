if exists("syntax_on")
    syntax reset
	colorscheme bioSyntax
endif

set background=dark

syntax region chr matchgroup=chr start='^' end='\n' contains=chrStart
syntax region chrStart matchgroup=chrStart start='\t' end='\n\@=' contains=chrEnd
syntax region chrEnd matchgroup=chrEnd start='\t' end='\n\@=' contains=keyword1
syntax region keyword1 matchgroup=keyword1 start='\t' end='\n\@=' 

