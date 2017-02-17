FROM alpine:3.5

VOLUME /data

WORKDIR /data

ENV PACKER_VERSION=0.12.2

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
      "org.label-schema.applications.packer.version"=$PACKER_VERSION
