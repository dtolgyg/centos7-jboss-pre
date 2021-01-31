FROM centos:centos7

RUN yum install -y epel-release
RUN yum update -y && \
    yum install -y \
    libXtext libXtext.i686 libXtst libXtst.i686 libXrender \
    libXrender.i686 openscap-utils openscap-engine-sce openscap-scanner \
    java-1.8.0-openjdk.x86_64 perl-ExtUtils-MakeMaker \
    perl-JSON perl-Params-* perl-Test-Simple perl-Time-HiRes \
    perl-Class-Accessor* perl-Config-General perl-Config-Tiny && \
    yum clean all
CMD ["/bin/bash"]
