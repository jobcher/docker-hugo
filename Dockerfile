FROM alpine:3.15.0 as build
LABEL maintainer="nb@nbtyfood.com"

RUN apk add wget \
    && wget -O hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v0.92.1/hugo_0.92.1_Linux-64bit.tar.gz" \
    && tar -zxvf hugo.tar.gz \
    && chmod +x hugo \
    && mv hugo /usr/local/bin \
    && hugo new site blog \
    && cd /blog/themes \
    && wget -O loveit.tar.gz "https://github.com/dillonzq/LoveIt/archive/refs/tags/v0.2.10.tar.gz" \
    && tar -zxvf loveit.tar.gz \
    && mv /blog/themes/LoveIt-0.2.10 /blog/themes/LoveIt

COPY . /blog

RUN cd /blog \
    && hugo -t LoveIt -D

FROM nginx:1.21
COPY --from=build /blog/public/ /usr/share/nginx/html