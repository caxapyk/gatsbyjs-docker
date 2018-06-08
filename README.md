# Gatsby-docker
Source for [Docker](https://docker.com) container to run amazing blazing fast [GatsbyJs](https://gatsbyjs.com) static site generator. It includes all you need to start right now.

## Installation
```sh
git clone https://github.com/caxapyk/gatsbyjs-docker
cd gatsbyjs-docker
docker build --rm --no-cache -t gatsby .
```

## Usage
### Create a new site
Create a new site. gatsby new `gatsby-site`. When creating a new site, you can optionally specify a starter to base your new site on e.g.
```sh
docker run --rm -v $PWD:/srv/gatsby -p 8000:8000 gatsby new [SITE_DIRECTORY] [URL_OF_STARTER_GITHUB_REPO]
```
Read more at [official docs](https://www.gatsbyjs.org/docs/gatsby-starters/).

### Develop
Gatsby will start a hot-reloading development environment accessible at [localhost:8000](http://localhost:8000).
```sh
docker run --rm -it -v $PWD:/srv/gatsby -p 8000:8000 gatsby develop
```

### Build
Gatsby will perform an optimized production build for your site generating static HTML and per-route JavaScript code bundles.
```sh
docker run --rm -v $PWD:/srv/gatsby -p 8000:8000 gatsby build
```

### Serve
Gatsby starts a local HTML server for testing your built site accessible at [localhost:8000](http://localhost:8000). 
```sh
docker run --rm -it -v $PWD:/srv/gatsby -p 8000:8000 gatsby serve
```

## Plugin installation
You can use Npm or Yarn for manipulating dependencies.
```sh
docker run --rm -v $PWD:/srv/gatsby -p 8000:8000 gatsby npm install --save <PACKAGE_NAME>
docker run --rm -v $PWD:/srv/gatsby -p 8000:8000 gatsby yarn add <PACKAGE_NAME>
```