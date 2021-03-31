# Docker SPPARKS

Run [SPPARKS Kinetic Monte Carlo Simulator](https://spparks.sandia.gov) with Docker.

## Usage

First: Get [Docker](https://www.docker.com/products/docker-desktop) installed.

Clone this repo and visit it:

```bash
git clone https://github.com/VioletVivirand/docker-spparks.git && \
  cd docker-spparks && \
  git checkout patched
```

Then build an Ubuntu Docker image:

```bash
./build.sh
```

The image will be tagged with `spparks:latest` and `spparks:<DATE>`.

Put the `in.*` script we're going to simulate in current directory, then execute with:

```bash
./run.sh <filename>
```

DONE! 🍻
