#! /bin/bash
# modified for bioSyntax v0.1

for source in "$@"; do
    case $source in
	*ChangeLog|*changelog)
        source-highlight --failsafe -f esc --lang-def=changelog.lang --style-file=esc.style -i "$source" ;;
	*Makefile|*makefile)
        source-highlight --failsafe -f esc --lang-def=makefile.lang --style-file=esc.style -i "$source" ;;
	*.tar|*.tgz|*.gz|*.bz2|*.xz)
        lesspipe "$source" ;;
	*.clustal|*.aln)
	source-highlight -f esc --lang-def=$HIGHLIGHT/clustal.lang  --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style -i "$source" ;;
	*.bed)
	source-highlight -f esc --lang-def=$HIGHLIGHT/bed.lang      --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style -i "$source" ;;
	*.fai|*.faidx)
	source-highlight -f esc --lang-def=$HIGHLIGHT/faidx.lang    --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style -i "$source" ;;
	*.fasta|*.fa|*.mfa)
	source-highlight -f esc --lang-def=$HIGHLIGHT/fasta.lang    --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style -i "$source" ;;
	*.fastq|*.fq)
	source-highlight -f esc --lang-def=$HIGHLIGHT/fastq.lang    --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/fasta.style -i "$source" ;;
	*.flagstat)
	source-highlight -f esc --lang-def=$HIGHLIGHT/flagstat.lang --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style -i "$source" ;;
	*.gtf)
	source-highlight -f esc --lang-def=$HIGHLIGHT/gtf.lang      --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/vcf.style -i "$source" ;;
	*.pdb)
	source-highlight -f esc --lang-def=$HIGHLIGHT/pdb.lang      --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/pdb.style -i "$source" ;;
	*.sam)
	source-highlight -f esc --lang-def=$HIGHLIGHT/sam.lang      --outlang-def=$HIGHLIGHT/bioSyntax.outlang     --style-file=$HIGHLIGHT/sam.style -i "$source" ;;
	*.vcf)
	source-highlight -f esc --lang-def=$HIGHLIGHT/vcf.lang      --outlang-def=$HIGHLIGHT/bioSyntax-vcf.outlang --style-file=$HIGHLIGHT/vcf.style -i "$source" ;;
        *)
	source-highlight --failsafe --infer-lang -f esc --style-file=esc.style -i "$source" ;;
    esac
done
