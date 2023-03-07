#!/bin/bash

set -eu
set -o pipefail

while ! kustomize build jq-nexus | kubectl apply -f -; do
	echo "Retrying to apply resources"
	sleep 30
done
