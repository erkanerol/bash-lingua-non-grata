#!/usr/bin/env bash

KUBECTL_VERSION="v1.16.0"
KUBECTL_BINARY_URL="https://broken_url/$KUBECTL_VERSION/bin/darwin/amd64/kubectl"

# create and go into a temp dir
cd "$(mktemp -d)"  && \
curl -LO "$KUBECTL_BINARY_URL" && \
chmod +x kubectl && \
mv ./kubectl "/usr/local/bin/kubectl-$KUBECTL_VERSION" && \
echo "Done!" || { echo "Failure!"; exit 1; }