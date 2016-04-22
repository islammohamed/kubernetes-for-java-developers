#!/bin/sh

echo "Building rhuss/talk-kubernetes-2016-jax"
extra_args=""
if [ x$1 != x ]; then
  extra_args="--build-arg KUBERNETES_MASTER=$1"
fi
docker --tlsverify=false build ${extra_args} -t rhuss/talk-kubernetes-2016-jax .