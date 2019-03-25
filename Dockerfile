FROM node:10-alpine

RUN npm install -g static-marks

VOLUME /bookmarks
VOLUME /docs

WORKDIR /bookmarks
ENTRYPOINT ["static-marks"]
CMD ["-o","/docs/index.html","*"]
