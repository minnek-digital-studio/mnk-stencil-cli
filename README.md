# Docker Stencil CLI

An unofficial [dockerfile](https://docs.docker.com/engine/reference/builder/) for BigCommerce's [Stencil CLI](https://github.com/bigcommerce/stencil-cli).

## Build

```bash
# build docker image from Dockerfile
docker build -t stencil Dockerfile
```

## Run

**OSX & Linux**:

```bash
# stencil init
docker run -it -v $(pwd):/theme -p3000:3000 stencil init

# stencil start
docker run -it -v $(pwd):/theme -p3000:3000 stencil start
```

**Windows (bash)**:

```bash
# stencil init
docker run -it -v /$(PWD):/theme -p3000:3000 stencil init

# stencil start
docker run -it -v /$(PWD):/theme -p3000:3000 stencil start
```

## .bashrc entry

Open `~/.bashrc` in your preferred editor and add an `alias` for the docker command.

**OSX & Linux:**
```bash
alias stencil="docker run -it -v $(pwd):/theme -p3000:3000 stencil"
```

**Windows**:

```bash
alias stencil="docker run -it -v /$(PWD):/theme -p3000:3000 stencil"
```

Reload your `~/.bashrc`.

```bash
source ~/.bashrc
```

Now you can use the `stencil` alias to run the docker command.

```bash
stencil start
```
