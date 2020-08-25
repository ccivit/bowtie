Disclaimer: This repo is being worked on and is incomplete

# bowtie
Docker wrapper around Bowtie genetic alignment search. All code is base to make it easier to run, as described in the [project website](http://bowtie-bio.sourceforge.net/index.shtml)


```
git clone https://github.com/ccivit/bowtie
cd bowtie
```

```
docker build -t bowtie .
docker run -it bowtie
```

To test that the installation has gone correctly, you should be able to run without errors:
```
python bowtie e_coli reads/e_coli_1000.fq
```


## Installing prebuild indexes

As it is, t can only run wrappers found in the [old FTP server](ftp://ftp.ccb.jhu.edu/pub/data/bowtie_indexes/). For example, if we want to run a sequence on <em>s. cerevisiae</em>. We first need to go into the index folder:
```
cd indexes
```
And download the indexes that we need:
```
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
