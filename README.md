docker-bap
==========

Docker
------

Read up about docker at [docker.com](http://docker.com). Install instructions can be found on their website.

Too lazy to RTFM and running `Ubuntu 14.04`? Run

    apt-get install docker.io
    # not needed but I don't like typing docker.io
    ln -s /usr/bin/docker.io /usr/bin/docker

Build
-----

Build the docker container by running the command below in the same directory as the `Dockerfile`

    sudo docker build -t docker-bap .

The name "docker-bap" can be replaced with any name you want to call the container.

_NOTE_: `sudo` isn't needed if you create and add yourself to the `docker` group (see [here](https://docs.docker.com/installation/binaries/#giving-non-root-access)).

Run
---

Run the container with the command below

    sudo docker run --rm -it docker-bap bash

This runs the `bash` command inside the container named "docker-bap".

Flags:

* `--rm` - automatically delete the container instance when the initial process (`bash`) exits
* `-i` - run the container instance in interactive mode
* `-t` - allocate a pseudo-tty

At this point you should have working bap-0.7 binaries in `/bap-0.7/utils`

Example
-------

**TODO**
