# Packer
This container contains packer from Hashicorp

The image is based on alpine, it should be very lightweight.

If you want to run a specific version of packer, please have a look at the other available tags.
### Usage
```
docker run --rm \
  -v $(pwd):/data \
  -it \
  [IMAGE_URL]:[TAG] \
  [COMMAND_OPTIONS]
```
