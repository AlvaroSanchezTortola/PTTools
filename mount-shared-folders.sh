#!/bin/bash

vmware-hgfsclient | while read folder; do
  echo "[i] Mounting Kali-shared   (/mnt/hgfs/Kali-shared)"
  mkdir -p "/mnt/hgfs/Kali-shared"
  umount -f "/mnt/hgfs/Kali-shared" 2>/dev/null
  vmhgfs-fuse -o allow_other -o auto_unmount ".host:/Kali-shared" "/mnt/hgfs/Kali-shared"
done

sleep 2s
