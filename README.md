## Abstract

This repository provides a simple Sinatra webapp and a set of scripts to deploy
this sinatra app and a postgres db on a Kubernetes cluster (Google Container
Engine).

## Getting started

Use `scripts/clusterctrl` script to start/stop kubernetes cluster.
Please note that prior running the clusterctrl command you should properly
configure the `gcloud` utility.
