# static-marks-docker
Containerized static-marks to convert plain yaml bookmark files into a static web app.

Inspired by [static-marks](https://github.com/darekkay/static-marks) the provided [docker-compose.yml](docker-compose.yml) builds a container, so no npm-installation is required to convert your bookmark-files into a html.

## Generate a local index.html
Put the following docker-compose.yml into a local-file:
```
version: '3'

services:
  static-marks:
    build:
      context: https://github.com/gaerfield/static-marks-docker.git
    image: static-marks
    volumes:
        - ./bookmarks:/bookmarks:ro
        - ./docs:/docs:rw
```
Provide your bookmarks file in the bookmarks subfolder and just call `docker-compose up`. By default it will put an `index.html` in the docs folder.

## Use gibhub-pages
Alternatively:
* fork this repository
* create bookmarks file
* call `docker-compose up`
* commit and push the files
* select `master-branch/docs`-Folder as source for github-pages
  * in your repository on github select the "Settings-tab"
  * scroll down to github-pages
  * select
