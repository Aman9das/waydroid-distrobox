FROM ghcr.io/ublue-os/fedora-distrobox:latest AS waydroid-distrobox

COPY system_files /

# Install Waydroid & required packages
RUN dnf install -y \
        waydroid \
        weston \
        systemd-pam \
        iptables \
        dbus-x11 \
        kmod \
        curl \
        mutter \
        lzip

# Cleanup
RUN rm -rf /tmp/*
