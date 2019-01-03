#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color
vmware-hgfsclient | while read folder; do
  echo -e "[i] ${RED}Mounting Kali-shared   (/mnt/hgfs/Kali-shared)${NC}"
  mkdir -p "/mnt/hgfs/Kali-shared"
  umount -f "/mnt/hgfs/Kali-shared" 2>/dev/null
  #vmhgfs-fuse -o allow_other -o auto_unmount ".host:/Kali-shared" "/mnt/hgfs/Kali-shared"
  vmhgfs-fuse -o allow_other -o auto_unmount ".host:/Kali-shared" "/root/Desktop/Kali-shared"
done

sleep 2s
