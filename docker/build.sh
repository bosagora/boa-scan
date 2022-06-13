#! /bin/bash
set -x

REPO=bosagora
RELEASE_VERSION=agora_v4.1.3    # Update this if it is rebased on a later upstream tag
RELEASE_VERSION=$RELEASE_VERSION make tag
RELEASE_VERSION=$RELEASE_VERSION make tag-stable
docker push bosagora/blockscout:$RELEASE_VERSION
