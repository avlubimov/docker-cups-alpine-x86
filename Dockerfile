FROM i386/alpine:latest
ARG USER=admin
ARG GROUP=lpadmin
ARG PASSWORD=admin

MAINTAINER AVL <avlubimov@gmail.com>
LABEL maintainer="AVL <avlubimov@gmail.com>"
LABEL description="Cupsd on top of alpine x86"
LABEL cups="cups-2.4.7-r0"

ENV VOLUME=/srv

RUN apk update
RUN apk add file cups cups-filters gcompat

RUN adduser -S -H ${USER} -G ${GROUP}
RUN echo "${USER}:${PASSWORD}" | chpasswd

RUN mkdir -p ${VOLUME}
RUN mkdir -p ${VOLUME}/cups

COPY --chown=root:root --chmod=0755 docker-entrypoint.sh /

RUN mv /etc/cups/* ${VOLUME}/cups/


ENTRYPOINT /docker-entrypoint.sh /bin/sh




