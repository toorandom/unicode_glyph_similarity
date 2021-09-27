#!/bin/bash
# Generates the inverse lookup assuming UNIX environment
echo Creating inverse lookup from UC_SimList...
cp  UC_SimList0.8.txt x.txt
iconv -f UTF-16LE -t UTF-8 x.txt  > y.txt
egrep -e "^00" y.txt  | tr "\t" "," | sed 's/:.,/,/g' | sed 's/,\r//g'  > z.txt
echo "unicode,similar_to,uc_similar_to,similarity" > unicode_glyph_similarity.csv
./inverse_db.py | grep -v '\\x'  >> unicode_glyph_similarity.csv
rm -f x.txt y.txt z.txt
