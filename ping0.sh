#!/bin/sh

ARCH=$(uname -m)
case "$ARCH" in
    x86_64)
        DOWNLOAD_URL="https://ping0.cc/data/ping0"
        ;;
    armv7l)
        DOWNLOAD_URL="https://ping0.cc/data/ping0-arm"
        ;;
    aarch64)
        DOWNLOAD_URL="https://ping0.cc/data/ping0-arm64"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

apk update && apk add wget

echo "Downloading file for architecture: $ARCH"
wget -N -q --no-check-certificate "$DOWNLOAD_URL" -O /usr/bin/ping0

chmod +x /usr/bin/ping0

echo "Downloaded file is ready: ping0"