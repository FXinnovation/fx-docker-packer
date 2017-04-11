FROM alpine:3.5

ENV PACKER_VERSION=1.0.0 \
    CURL_VERSION=7.53.1-r1

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
      "org.label-schema.base-image.version"="3.5" \
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
