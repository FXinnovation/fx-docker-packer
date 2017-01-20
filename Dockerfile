FROM alpine:3.5

MAINTAINER FXinnovation

VOLUME /data

WORKDIR /data

ENV PACKER_VERSION=0.12.1

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

ENTRYPOINT ["packer"]
