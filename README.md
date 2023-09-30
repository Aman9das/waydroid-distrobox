# waydroid-distrobox

[![build-waydroid-distrobox](https://github.com/ublue-os/waydroid-distrobox/actions/workflows/build.yml/badge.svg)](https://github.com/ublue-os/waydroid-distrobox/actions/workflows/build.yml) 

[Fedora-distrobox](https://github.com/ublue-os/fedora-distrobox) images with Waydroid and dependencies included.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/ublue-os/waydroid-distrobox
