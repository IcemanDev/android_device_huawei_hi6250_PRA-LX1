# android_device_huawei_hi6250
TWRP device tree for  P8 Lite 2017 (PRA LX1).
This device tree has FBE decryption support.

We recommend compiling TWRP with LineageOS

Download the source code (15.1 = android 8.1) (16.0 = android 9.0):

- cd ~/your_folder_lineage
- sudo repo init -u https://github.com/LineageOS/android.git -b lineage-15.1
- sudo repo sync

Set the following parameters (go to the lineage folder):

- cd ~/your_folder_lineage
- export USE_CCACHE=1
- prebuilts/misc/linux-x86/ccache/ccache -M 50.0G
- export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4096m"

IMPORTANT!
- replace the bootable/recovery folder with the suitable TWRP one and rename it bootable/recovery-twrp
- in the bootable/recovery-twrp/tests/Android.mk file, replace:

	resource_files := $(call find-files-in-subdirs, bootable/recovery, \
	
	with
	
	resource_files := $(call find-files-in-subdirs, bootable/recovery-twrp, \


- install your_folder_lineage/external/busybox (if not present)
- in the BoardConfig.mk add the flags (if not present):
	
	BOARD_KERNEL_IMAGE_NAME := Image
	
	RECOVERY_VARIANT := twrp
	
To compile the twrp:
- cd ~/your_folder_lineage
- . build/envsetup.sh
- lunch (and select the option that interests you)
- export ALLOW_MISSING_DEPENDENCIES=true && export LC_ALL=C && mka adbd recoveryimage

Greetings and good work! IceMan.
