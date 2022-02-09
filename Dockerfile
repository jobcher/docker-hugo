FROM centos:centos7.9.2009
LABEL maintainer="nb@nbtyfood.com"
RUN yum -y install wget \
    && wget -O hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v0.92.1/hugo_0.92.1_Linux-64bit.tar.gz" \
    && tar -zxvf hugo.tar.gz \
    && chmod +x hugo \
    && mv hugo /usr/local/bin \
    && hugo new site blog \
    && hugo server -D