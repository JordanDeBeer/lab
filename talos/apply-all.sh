#!/bin/bash
#
sops --ignore-mac -d /home/jordan/Code/lab/talos/controlplane.enc.yaml > /home/jordan/Code/lab/talos/controlplane.yaml
talosctl -e 192.168.3.2 apply-config -n 192.168.3.2 -f /home/jordan/Code/lab/talos/controlplane.yaml -p @/home/jordan/Code/lab/talos/host1.yaml
talosctl -e 192.168.3.3 apply-config -n 192.168.3.3 -f /home/jordan/Code/lab/talos/controlplane.yaml -p @/home/jordan/Code/lab/talos/host2.yaml
talosctl -e 192.168.3.4 apply-config -n 192.168.3.4 -f /home/jordan/Code/lab/talos/controlplane.yaml -p @/home/jordan/Code/lab/talos/host3.yaml
rm /home/jordan/Code/lab/talos/controlplane.yaml
