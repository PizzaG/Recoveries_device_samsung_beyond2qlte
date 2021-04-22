#!/bin/bash

## Dark
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_beyond2qlte-eng
mka recoveryimage -j$(nproc --all)
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/Dark_Recovery-beyond2qlte.img
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/Dark_Recovery-beyond2qlte.tar
mv $OUT/DarkRecovery-beyond2qlte*.zip /media/pizzag/Android/Uploads/Recoveries/Dark_Recovery-beyond2qlte.zip
cd /media/pizzag/Android/Recoveries/Dark/8
make clean
#############################
#############################

