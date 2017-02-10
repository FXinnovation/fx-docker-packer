FROM alpine:3.5

MAINTAINER FXinnovation <cloudsquad@fxinnovation.com>

VOLUME /data

WORKDIR /data

ENV PACKER_VERSION=0.12.2

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

ENTRYPOINT ["packer"]
