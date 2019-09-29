#!/usr/bin/env bash

# reference: https://arslan.io/2019/07/03/how-to-write-idempotent-bash-scripts/

mkdir mydir     # not idempotent
mkdir -p mydir  # idempotent

ln -s source_file target_link   # not idempotent
ln -sf source_file target_link  # idempotent

rm example.txt        # not idempotent
rm -f example.txt     # idempotent

# not idempotent
echo "/dev/sda1 /mnt/dev ext4 defaults 0 0" | sudo tee -a /etc/fstab

# idempotent
if ! grep -qF "/mnt/dev" /etc/fstab; then
  echo "/dev/sda1 /mnt/dev ext4 defaults 0 0" | sudo tee -a /etc/fstab
fi
