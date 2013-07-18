#!/bin/sh

BASENAME="$1"
OUTDIR="./output/"

mkdir -p $OUTDIR

if [ "$BASENAME" = "standalone.tex" ]
then
  COMMAND="\\newcommand\\content[0]{\\input{$2}}\\input{standalone.tex}"
  FILENAME="${2%.*}"
else
  COMMAND="\\input{$BASENAME}"
  FILENAME="${BASENAME%.*}"
fi

pdflatex -output-directory=$OUTDIR -file-line-error \
  -jobname $FILENAME \
  $COMMAND

