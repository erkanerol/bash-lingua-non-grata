#!/usr/bin/env bash

KUBECTL_VERSION="v1.16.0"
KUBECTL_BINARY_URL="https://broken_url/$KUBECTL_VERSION/bin/darwin/amd64/kubectl"

# create and go into a temp dir
cd "$(mktemp -d)"

# download kubectl and make it executable
curl -LO "$KUBECTL_BINARY_URL"
chmod +x kubectl

# put it into PATH
mv ./kubectl "/usr/local/bin/kubectl-$KUBECTL_VERSION"
echo "Done!"