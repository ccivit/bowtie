Disclaimer: This repo is being worked on and is incomplete

# bowtie
Implementation of Bowtie genetic alignment search

```
cd indexes
wget ftp://ftp.ccb.jhu.edu/pub/data/bowtie_indexes/s_cerevisiae.ebwt.zip
unzip s_cerevisiae.ebwt.zip 
```

Test if installation successful

```
cd ..
python bowtie -c s_cerevisiae ATTGTAGTTCGAGTAAGTAATGTGGGTTTG
```


output should be
```
Setting the index via positional argument will be deprecated in a future release. Please use -x option instead.
0	+	Scchr02	90972	ATTGTAGTTCGAGTAAGTAATGTGGGTTTG	IIIIIIIIIIIIIIIIIIIIIIIIIIIIII	0	
# reads processed: 1
# reads with at least one alignment: 1 (100.00%)
# reads that failed to align: 0 (0.00%)
Reported 1 alignments
```
