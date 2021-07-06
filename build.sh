#!/bin/bash -vx
# BUILD_DIR="$(cd -- "$(dirname "$0")" >/dev/null 2>&1; pwd -P)"

# TEMPLATE_DIR="$BUILD_DIR/packer-qemu-templates"
# TEMPLATE_URL="https://github.com/jakobadam/packer-qemu-templates"

# PACKER_BIN="$BUILD_DIR/packer"
# PACKER_URL="https://releases.hashicorp.com/packer/1.7.3/packer_1.7.3_linux_amd64.zip"

# echo TEMPLATE_DIR="$TEMPLATE_DIR"
# echo TEMPLATE_URL="$TEMPLATE_URL"
# echo PACKER_BIN="$PACKER_BIN"
# echo PACKER_URL="$PACKER_URL"

# echo "# You'll be prompted for your password if packer, git, unzip or curl packages have to be installed"
# which curl funzip packer git >/dev/null || sudo apt-get install packer curl unzip git -y

# echo "# Cloning $TEMPLATE_URL if not already @ $BUILD_DIR"
# test -d "$TEMPLATE_DIR" || git clone "$TEMPLATE_URL" "$TEMPLATE_DIR"

# test -f "$PACKER_BIN" || { curl "$PACKER_URL" --output - | funzip > "$PACKER_BIN"; chmod +x "$PACKER_BIN"; }

which packer 2>/dev/null >/dev/null || sudo apt install packer -y

test -d "ubuntu" && pushd "ubuntu" || return

PACKER_LOG=1 packer .
PACKER_LOG=1 packer build -var-file=ubuntu1804.json ubuntu.json

popd || return
