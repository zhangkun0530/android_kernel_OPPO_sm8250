### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=KernelSU for OPPO Reno6 Pro+ 5G (PENM00/OP4EC1)
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=PENM00
device.name2=OP4EC1
device.name3=reno6proplus
device.name4=CPH2247
device.name5=CPH2249
supported.versions=13
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel boot install
dump_boot;

# Disable vbmeta verification if the flag is set.
# Only needed if your device/ROM enforces verified boot on the kernel.
vbmeta_disable_verification;

write_boot;
## end boot install
