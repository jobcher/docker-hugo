FROM nginx:1.21
LABEL maintainer="nb@nbtyfood.com"
RUM yum -y install wget \
    && wget -O hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v0.92.1/hugo_0.92.1_Linux-64bit.tar.gz" \
    && tar -zxvf hugo.tar.gz \
    && chmod +x hogo \
    && hugo server -D