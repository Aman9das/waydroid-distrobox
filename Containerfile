FROM ghcr.io/ublue-os/fedora-distrobox:latest AS waydroid-distrobox

# Install Waydroid & required packages
RUN dnf install -y \
        waydroid \
        weston \
        systemd-pam \
        iptables \
        dbus-x11 \
        lzip

# Cleanup
RUN rm -rf /tmp/*