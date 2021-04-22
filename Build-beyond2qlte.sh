#!/bin/bash

## RedWolf
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
mv $OUT/RedWolf-1_afaneh92-R-beyond2qlte.img /media/pizzag/Android/Uploads/Recoveries/RedWolf_Recovery-beyond2qlte.img
mv $OUT/RedWolf-1_afaneh92-R-beyond2qlte.img.md5 /media/pizzag/Android/Uploads/Recoveries/RedWolf_Recovery-beyond2qlte.img.md5
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/RedWolf_Recovery-beyond2qlte.tar
cd /media/pizzag/Android/Recoveries/RedWolf/8
make clean
#############################
#############################

