FROM rsrchboy/perl-stable
MAINTAINER Damien Garros <dgarros@gamil.com>

RUN apt-get update
RUN apt-get -y install libexpat1-dev libxslt-dev libxml2-dev zlib1g-dev

## Install JSNAP from Github
RUN git clone https://github.com/dgarros/jsnap-perl.git
ENV PERL5LIB $PERL5LIB:jsnap-perl/lib

## Install Netconf Client
RUN git clone https://github.com/Juniper/netconf-perl.git
ENV PERL5LIB $PERL5LIB:netconf-perl/lib

## Install missing Perl module
RUN cpanm Try::Tiny
RUN cpanm XML::XPath
RUN cpanm YAML::Syck
RUN cpanm XML::LibXML
RUN cpanm Expect
RUN cpanm File::Which

RUN alias jsnap="perl jsnap-perl/bin/jsnap.pl"

ENV PATH jsnap-perl/bin:$PATH
