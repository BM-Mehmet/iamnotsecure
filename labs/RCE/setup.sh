#!/bin/bash
# RCE labları için gerekli ortamı hazırlayan script

#network oluşturuluyor
if ! podman network exists iamnotsecure-net; then
    echo "Gerekli ağ oluşturuluyor: iamnotsecure-net"
    podman network create iamnotsecure-net
else
    echo "Ağ zaten mevcut: iamnotsecure-net"
fi

read -p "Bu labların bazıları için metasploit imajı gerekli, indirmek istiyor musunuz? (y/n) " answer
if [[ "$answer" != "y" || "$answer" != "Y" ]]; then
    echo "Gerekli metasploit imajı indiriliyor. Lütfen bekleyin..."
    podman pull docker.io/mehmetcam/my-venom:latest
    exit 0
fi
