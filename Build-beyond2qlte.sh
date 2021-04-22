#!/bin/bash

## Batik
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_beyond2qlte-eng
mka recoveryimage -j$(nproc --all)
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/Batik_Recovery-beyond2qlte.img
mv $OUT/BR-beyond2qlte*.zip /media/pizzag/Android/Uploads/Recoveries/Batik_Recovery-beyond2qlte.zip
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/Batik_Recovery-beyond2qlte.tar
cd /media/pizzag/Android/Recoveries/Batik/9
make clean
#############################
#############################

