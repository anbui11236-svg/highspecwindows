wqemwgeRedOS.iso https://archive.org/download/red-star-en/RedStarEN.iso
qemu-img create -f raw -o size=10 RedOS.img

qemu-system-ppc -L pc-bios -boot d -M mac99,via=pmu -m 512 \
-prom-env 'auto-boot?=true' -prom-env 'boot-args=-v' -prom-env 'vga-ndrv?=true' \
-drive file=RedOS.iso,format=raw,media=cdrom \
-drive file=RedOS.img,format=raw,media=disk \
-netdev user,id=network01 -device sungem,netdev=network01 \
-device VGA,edid=on \
