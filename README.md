<p align="center">
  <a href="https://minnekdigital.com/">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://assets.minnekdigital.com/logo-md.jpg">
      <img alt="Minnek Logo" src="https://assets.minnekdigital.com/logo-md.jpg">
    </picture>    
  </a>
</p>

---

# Docker Stencil CLI

An unofficial [dockerfile](https://docs.docker.com/engine/reference/builder/) for BigCommerce's [Stencil CLI](https://github.com/bigcommerce/stencil-cli).

## Build

```bash
# build docker image from Dockerfile
docker build -t stencil-cli -f Dockerfile .
```

## Run

### OSX & Linux:

```bash
# stencil init
docker run -it -v $(pwd):/theme -p3000:3000 stencil init

# stencil start
docker run -it -v $(pwd):/theme -p3000:3000 stencil start
```

### Windows (bash):

```bash
# stencil init
docker run -it -v /$(PWD):/theme -p3000:3000 stencil init

# stencil start
docker run -it -v /$(PWD):/theme -p3000:3000 stencil start
```

## Creating an alias

### .bashrc entry

Open `~/.bashrc` in your preferred editor and add an `alias` for the docker command.

### OSX & Linux:

```bash
alias stencil-cli="docker run -it -v $(pwd):/theme -p3000:3000 stencil"
```

### Windows:

```bash
alias stencil-cli="docker run -it -v /$(PWD):/theme -p3000:3000 stencil"
```

Reload your `~/.bashrc`.

```bash
source ~/.bashrc
```

Now you can use the `stencil-cli` alias to run the docker command.

```bash
stencil-cli start
```

## About

<a href="https://minnekdigital.com/">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://assets.minnekdigital.com/logo-sm.jpg">
    <img alt="Minnek Logo" src="https://assets.minnekdigital.com/logo-sm.jpg">
  </picture>
</a>

This project is maintained and funded by Minnek.

We ❤️ open source and do our part in sharing our work with the community!
See [our other projects][community] or [hire our team][hire] to help build your product.

Want to join? [Check out our Jobs][jobs]!

[community]: https://github.com/Minnek-Digital-Studio
[hire]: https://minnekdigital.com/
[jobs]: https://minnekdigital.com/careers
