#!/bin/bash

## SkyHawk
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_beyond2qlte-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/SkyHawk_Recovery-beyond2qlte.img
mv $OUT/SHRP_v3.1_stable-Unofficial*.zip /media/pizzag/Android/Uploads/Recoveries/SkyHawk_Recovery-beyond2qlte.zip
mv $OUT/SHRP_AddonRescue_v3.1*.zip /media/pizzag/Android/Uploads/Recoveries/SkyHawk_AddonRescue-beyond2qlte.zip
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/SkyHawk_Recovery-beyond2qlte.tar
cd /media/pizzag/Android/Recoveries/SkyHawk/9
make clean
#############################
#############################

