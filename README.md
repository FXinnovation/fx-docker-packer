# Packer
This container contains packer from Hashicorp

The image is based on alpine, it should be very lightweight.

The nightly tag is used for nightly builds only and should not be used unless for testing purposes.

If you want to run a specific version of packer, please have a look at the other available tags.
### Usage
```
docker run --rm \
  -v $(pwd):/data \
  [IMAGE_URL]:[TAG] \
  [COMMAND_OPTIONS]
```
