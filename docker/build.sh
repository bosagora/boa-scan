#! /bin/bash
set -x

REPO=bosagora
RELEASE_VERSION=5.1.5    # Update this if it is rebased on a later upstream tag
COIN=BOA make
RELEASE_VERSION=$RELEASE_VERSION make tag
RELEASE_VERSION=$RELEASE_VERSION make tag-stable
docker push bosagora/blockscout:$RELEASE_VERSION
