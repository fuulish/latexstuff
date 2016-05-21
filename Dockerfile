FROM debian:jessie

#RUN apt-get update && apt-get install -my texlive-full git latexdiff

RUN apt-get update && apt-get install -my texlive git && tlmgr install texliveonfly
RUN git clone https://gitlab.com/git-latexdiff/git-latexdiff.git git-latexdiff.git && cd git-latexdiff.git && make install
