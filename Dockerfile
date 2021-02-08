ARG ALPINE_VERSION=3.13.1
FROM alpine:${ALPINE_VERSION}
ARG ALPINE_VERSION

ENV PACKER_VERSION=1.6.5 \
    CURL_VERSION=7.74.0-r0

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

VOLUME /data

WORKDIR /data

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

ENTRYPOINT ["packer"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="packer" \
      "org.label-schema.base-image.name"="docker.io/library/alpine" \
      "org.label-schema.base-image.version"=$ALPINE_VERSION \
      "org.label-schema.description"="Packer in a container" \
      "org.label-schema.url"="https://www.packer.io" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-packer" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.packer.version"=$PACKER_VERSION \
      "org.label-schema.applications.curl.version"=$CURL_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="docker run --rm $(pwd):/data fxinnovation/packer help"
