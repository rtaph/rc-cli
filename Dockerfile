# syntax = docker/dockerfile:1.2
ARG DOCKER_VERSION=20.10.5

FROM docker:${DOCKER_VERSION}-dind
LABEL edu.mit.cave.tester.image.vendor="MIT CTL Computational and Visual Education Lab"
LABEL edu.mit.cave.tester.image.authors="Connor Makowski <conmak@mit.edu>, Luis Vasquez <luisvasq@mit.edu>, Willem Guter <wjguter@mit.edu>"
LABEL edu.mit.cave.tester.image.title="Routing Challenge Tester"
LABEL edu.mit.cave.tester.image.licenses="Copyright (c) 2021 MIT CTL CAVE Lab"
LABEL edu.mit.cave.tester.image.created="2021-03-17 06:36:20-05:00"
LABEL edu.mit.cave.tester.image.version="0.1.1"
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint-alt.sh
ENTRYPOINT ["docker-entrypoint-alt.sh"]
