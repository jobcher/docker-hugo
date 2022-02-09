FROM alpine:3.15.0 as build
LABEL maintainer="nb@nbtyfood.com"

RUN apk add wget \
    && apk add git \
    && wget -O hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v0.92.1/hugo_0.92.1_Linux-64bit.tar.gz" \
    && tar -zxvf hugo.tar.gz \
    && chmod +x hugo \
    && mv hugo /usr/local/bin \
    && hugo new site blog
COPY posts/ /blog/content/posts
COPY static/ /blog/static
COPY config.toml /blog/config.toml
RUN cd /opt/blog/themes \
    && git clone https://github.com/dillonzq/LoveIt.git \
    && hugo -t LoveIt -D

FROM nginx:1.21
COPY --from=build /blog/public/ /usr/share/nginx/html