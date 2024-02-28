<p align="center">
  <a href="https://minnekdigital.com/">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://assets.minnekdigital.com/logo-md.jpg">
      <img alt="Minnek Logo" src="https://assets.minnekdigital.com/logo-md.jpg">
    </picture>
  </a>
</p>

---

# BigCommerce Stencil CLI Image

This is a base image designed for working with BigCommerce Stencil Themes and GitHub Actions, includes:
- NodeJS 18
- Stencil CLI
- Grunt CLI

## Build

```bash
docker build -t minnek/mnk-stencil-cli .
```

## How to publish the image to Docker Hub

This repository contains and action to build publish the image to the Docker Hub with multiple architectures.

```bash
docker login -u our_username -p your_password
docker push <your_username>/<image_name>:<tag_name>
```

## How to use the image

Use the image on GitHub actions:

```yml
name: Docker Stencil CLI

on:
  push:
    branches:
      - master

jobs:
  build:
    runs-on: ubuntu-latest

    container:
      image: docker://minnek/mnk-stencil-cli:latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Example Command
        run: |
          # run the NPM, Yarn or whatever you want to do
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
