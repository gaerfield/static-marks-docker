# static-marks-docker
Containerized static-marks to convert plain yaml bookmark files into a static web app.

Inspired by [static-marks](https://github.com/darekkay/static-marks) the provided [docker-compose.yml](docker-compose.yml) builds a container, so no npm-installation is required to convert your bookmark-files into a html. You will get more details there on how to use it.

## Why its better than my local browser-bookmarks?

1) interoperability
2) independence from complicated third-party software
3) sharing specific bookmark-groups with your colleagues
4) Cauz you can search it DUDE! [Like in firefox](https://superuser.com/a/7374):
  * bookmark your link like with an `%s`-placeholder, i.e. `https://gaerfield.github.io/static-marks-docker/?search=%s`
  * give it keyword, i.e. `b`
  * type in your browsers address-bar `b chocolate`

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
* browse your site (the pattern is "https://{user}.github.io/{repository})
  * for example: [https://gaerfield.github.io/static-marks-docker](https://gaerfield.github.io/static-marks-docker)

## Additional Info
* [original static marks project](https://github.com/darekkay/static-marks)
* [example bookmark files](https://github.com/darekkay/static-marks/blob/master/docs/examples)
* [simple example](https://darekkay.com/static-marks/demo/demo-example.html#/)
