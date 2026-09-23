#!/bin/sh
# Add the techbysaurabh apt repository.
set -e

KEYRING=/usr/share/keyrings/techbysaurabh.gpg
LIST=/etc/apt/sources.list.d/techbysaurabh.list
BASE=https://techbysaurabh.github.io/apt

if [ "$(id -u)" -ne 0 ]; then
    if command -v sudo >/dev/null 2>&1; then SUDO=sudo; else
        echo "Run this as root, or install sudo." >&2; exit 1
    fi
else
    SUDO=""
fi

command -v curl >/dev/null 2>&1 || { echo "curl is required." >&2; exit 1; }

echo "Adding the techbysaurabh apt repository..."
curl -fsSL "$BASE/key.gpg" | $SUDO tee "$KEYRING" > /dev/null
echo "deb [signed-by=$KEYRING] $BASE stable main" | $SUDO tee "$LIST" > /dev/null
$SUDO apt-get update

echo
echo "Done. Install a package with, for example:"
echo "    sudo apt install meetinginsights"
