#!/usr/bin/env bash

PROTOC=`which protoc`

$PROTOC --go_out=plugins=grpc:.