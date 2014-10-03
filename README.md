docker-jsnap
============

Docker container to run the Jsnap (perl)

Based on this project 
https://github.com/dgarros/jsnap-perl

Procedure
=========

Build the container
docker build docker-jsnap

Simple example
docker run -i -t <image-id> perl jsnap-perl/bin/jsnap.pl --snapcheck -c <conf file> -t <device ip>


Road Map
========

Integrate with ETCD
