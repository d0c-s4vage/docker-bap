#

FROM ubuntu:13.10

RUN apt-get update

# install pre-requisites from http://bap.ece.cmu.edu/download/bap-0.7/INSTALL
#
RUN apt-get install -y ocaml ocaml-native-compilers ocaml-findlib camlidl binutils-dev automake libcamomile-ocaml-dev otags libpcre3-dev camlp4-extra bison flex zlib1g-dev libgmp3-dev g++ libtool gcc-multilib g++-multilib lib32z1-dev libllvm-3.1-ocaml-dev

# other packages
#
RUN apt-get install -y build-essential wget

RUN wget -O /tmp/bap-0.7.tgz http://bap.ece.cmu.edu/download/bap-0.7.tar.gz
RUN tar -xzf /tmp/bap-0.7.tgz
RUN bash -c "cd /bap-0.7 ; ./autogen.sh && ./configure && make"

WORKDIR /bap-0.7
