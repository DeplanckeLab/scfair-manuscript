grep '^>' "Mus_musculus.GRCm39.r113.cds.all.fa" | sed -n 's/^>\([^ ]*\).*gene:\([^ .]*\)\(\.[0-9]*\)\?.*/\1\t\2/p' > Mus_musculus.GRCm39.r113.cds.all_gene_mapping.txt

grep '^>' "gencode.v35.transcripts.fa" | sed -n 's/^>\([^|]*\)|\([^|.]*\)[^|]*.*/\1\t\2/p' > gencode.v35.transcripts_gene_mapping.txt

grep '^>' "gencode.vM37.transcripts.fa" | sed -n 's/^>\([^|]*\)|\([^|.]*\)[^|]*.*/\1\t\2/p' > gencode.vM37.transcripts_gene_mapping.txt
