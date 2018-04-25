##   __     __   __           ___
##  |__) | /  \ /__` \ / |\ |  |   /\  \_/
##  |__) | \__/ .__/  |  | \|  |  /~~\ / \
##  =======================================
##
## Syntax Highlighting for computational biology rc.append
## v0.1
##
## Append this to your ~/.bashprofile in MacOS
## to enable source-highlight for less and add
## bioSyntax pipe capability on your command line
##
export HIGHLIGHT="/usr/local/opt/source-highlight/share/source-highlight"
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "

alias less='less -NSi -# 10'
# -N: add line numbers
# -S: don't wrap lines (force to single line)
# -# 10: Horizontal scroll distance

alias more='less'

# Explicit call of  <file format>-less for piping data
# i.e:  samtools view -h aligned_hits.bam | sam-less
# Core syntaxes (default)
alias clustal-less='source-highlight -f esc --lang-def=$HIGHLIGHT/clustal.lang --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style | less'
alias bed-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/bed.lang     --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style   | less'
alias fa-less='source-highlight      -f esc --lang-def=$HIGHLIGHT/fasta.lang   --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style | less'
alias fq-less='source-highlight      -f esc --lang-def=$HIGHLIGHT/fastq.lang   --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style | less'
alias gtf-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/gtf.lang     --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/vcf.style   | less'
alias pdb-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/pdb.lang     --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/pdb.style   | less'
alias sam-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/sam.lang     --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style   | less'
alias vcf-less='source-highlight     -f esc --lang-def=$HIGHLIGHT/vcf.lang     --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/vcf.style   | less'
alias bam-less='sam-less'

# Auxillary syntaxes (uncomment to activate)
alias fai-less='source-highlight      -f esc --lang-def=$HIGHLIGHT/faidx.lang    --outlang-def=$HIGHLIGHT/bioSyntax.outlang   --style-file=$HIGHLIGHT/sam.style   | less'
alias flagstat-less='source-highlight -f esc --lang-def=$HIGHLIGHT/flagstat.lang --outlang-def=$HIGHLIGHT/bioSyntax.outlang   --style-file=$HIGHLIGHT/sam.style   | less'
