FROM node:10-alpine

RUN npm install -g static-marks
COPY template.html /

VOLUME /bookmarks
VOLUME /docs

WORKDIR /bookmarks
ENTRYPOINT ["static-marks"]
CMD ["build","--template-file","/template.html","--output","/docs/index.html","*"]
