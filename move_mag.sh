#!/bin/sh

des_folder='/Users/administrator/Desktop/egsr2017/virtual_ellipsometry_paper_egsr2017/images/'

target1='ia10_ADM.png'
target2='ia10_MDM.png'
target3='ia40_ADM.png'
target4='ia40_MDM.png'
target5='ia60_ADM.png'
target6='ia60_MDM.png'
target7='ia80_ADM.png'
target8='ia80_MDM.png'

cd one_die_r0.25

des1='one_1.5_r0.25'

cp $target1 $target3 $target5 $target7 $des_folder$des1
cd ..

cd one_gold_r0.25

des2='one_gold_r0.25'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des2
cd ..

cd three_die_die_copper

des3='three_die_die_copper'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des3
cd ..

cd three_die_die_die_r234

des4='three_1.3_1.5_1.8_r0.2_0.3_0.4'

cp $target1 $target3 $target5 $target7 $des_folder$des4
cd ..

cd three_1.3_1.5_gold

des5='three_1.3_1.5_gold'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des5
cd ..

cd two_die_al_r11

des6='two_die_al_r11'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des6
cd ..


cd two_die_al_r14
des7='two_die_al_r14'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des7
cd ..



cd two_die_copper_r53

des8='two_1.3_copper_r0.5_0.3'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des8
cd ..

cd two_die_gold_r11

des9='two_1.5_gold_r0.1_0.1'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des9
cd ..

cd two_die_gold_r14
des10='two_1.5_gold_r0.1_0.4'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des10
cd ..

cd two_die_gold_r31
des11='two_1.5_gold_r0.3_0.1'

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des11
cd ..

cd three_die_die_die_r111
des12='three_die_die_die_r111'

cp $target1 $target3 $target5 $target7 $des_folder$des12
cd ..


brewster1='ia50_ADM.png'
brewster2='ia56_ADM.png'
brewster3='ia60_ADM.png'
brewster4='ia65_ADM.png'

cd two_die15_die24_r11
des13='two_die_die_r11'

cp $brewster1 $brewster2 $brewster3 $brewster4 $des_folder$des13
cd ..

cd two_die15_die24_r37
des14='two_die_die_r37'

cp $brewster1 $brewster2 $brewster3 $brewster4 $des_folder$des14
cd ..

cd two_die15_die24_r17
des15='two_die_die_r17'

cp $brewster1 $brewster2 $brewster3 $brewster4 $des_folder$des15
cd ..

cd two_die15_die24_r71
des16='two_die_die_r71'

cp $brewster1 $brewster2 $brewster3 $brewster4 $des_folder$des16
cd ..

