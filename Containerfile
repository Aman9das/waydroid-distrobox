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
        lzip \
        cracklib-dicts

# Setup Environment

rm -rf /lib/modules
ln -sf /run/host/lib/modules /lib/modules
RUN chmod +x /usr/bin/ewaydroid
RUN ln -s /etc/systemd/system/waydroid-init.service /etc/systemd/system/multi-user.target.wants/waydroid-init.service
RUN ln -s /etc/systemd/system/waydroid-bg.service /etc/systemd/system/multi-user.target.wants/waydroid-bg.service


# Cleanup
RUN rm -rf /tmp/*
