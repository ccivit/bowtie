FROM biopython/biopython

RUN wget https://sourceforge.net/projects/bowtie-bio/files/bowtie/1.3.0/bowtie-1.3.0-linux-x86_64.zip/download
RUN unzip download
RUN rm -r download

WORKDIR /biopython/bowtie-1.3.0-linux-x86_64

RUN alias python=python3

ENTRYPOINT '/bin/bash'
