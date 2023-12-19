#!/bin/bash
BASE=i386/alpine:latest
IMAGE=rhome/alpine-x86-cups:latest
CONTAINER=cups
PREFIX=/opt/docker/cups
BINDIR=${PREFIX}/bin
CONFDIR=${PREFIX}/conf
LOGSDIR=${PREFIX}/logs
DRVDIR=${PREFIX}/drivers

USER=admin


