# cfml-ci-tools

A docker container with several CI tools for CFML installed: 

## Features

* fixinator
* cfml-compiler
* commandbox-codechecker
* commandbox-cflint
* commandbox-cfformat
* commandbox-dotenv
* commandbox-cfconfig
* commandbox-docbox

## Usage

The cfml-ci-tools image is built and hosted on the Github Container Registry. To use the image, you can use the image directly:

```bash
docker pull ghcr.io/foundeo/cfml-ci-tools/cfml-ci-tools
docker run -v $PWD:/app foundeo/cfml-ci-tools box install
```

or, for advanced purposes, create a `Dockerfile` which extends this image:

```bash
from ghcr.io/foundeo/cfml-ci-tools/cfml-ci-tools:1.0.1
// ...
```