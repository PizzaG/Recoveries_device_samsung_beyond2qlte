#!/bin/bash

## PitchBlack
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export PB_MAINTAINER=PizzaG
export PB_DISABLE_MIUI_SPECIFIC_FEATURES=1
export PB_VERSION=3
export PB_REMOVE_AAPT=1
export PB_CHECK_OVERWRITE_ATTEMPTS=1
. build/envsetup.sh
lunch omni_beyond2qlte-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/PBRP-beyond2qlte-3.1.0*.zip /media/pizzag/Android/Uploads/Recoveries/PitchBlack_Recovery-beyond2qlte.zip
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/PitchBlack_Recovery-beyond2qlte.img
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/PitchBlack_Recovery-beyond2qlte.tar
cd /media/pizzag/Android/Recoveries/PitchBlack/9
make clean
#############################
#############################

