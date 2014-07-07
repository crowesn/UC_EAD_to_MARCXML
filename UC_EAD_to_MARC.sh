#!/bin/bash
FILES=./*.xml
out=".OUT"
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  xsltproc UC_EAD_to_MARC.xsl $f > $f$out
done
