#!/bin/sh

BASENAME="$1"
CONTENT="$2"
FILENAME="$2"
OUTDIR="./output/"
OUTFILE="$OUTDIR$FILENAME.pdf"

mkdir -p $OUTDIR

pdflatex -output-directory=$OUTDIR -file-line-error \
-jobname $FILENAME \
"\\newcommand\\content[0]{\\input{$CONTENT}}\\input{$BASENAME}"

