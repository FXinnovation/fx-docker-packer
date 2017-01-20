# Packer
## Description
This container contains packer from Hashicorp

The image is based on alpine, it should be very lightweight.

## Tags
We do publish a latest tag for this image since it is a build image. It allows ou CI to always have the latest image with minimal maintenance.

If you want to run a specific version of packer, please have a look at the other available tags.

Our docker tags will follow the packer release versions since there is only packer in the container.

## Usage
```
docker run --rm \
  -v $(pwd):/data \
  fxinnovation/packer \
  [COMMAND_OPTIONS]
```

Where [COMMAND_OPTIONS] are the actual command you wan to send to packer.

Since the image's entrypoint is `packer` you don't need to specify it.

## Comments & Issues
If you have comments or detect an issue, please be adviced we don't check the docker hub comments. You can always contact us through the repository.
