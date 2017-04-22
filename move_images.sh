#!/bin/sh

des_folder='/Users/administrator/Desktop/SIGGRAPH17/virtual_ellipsometry_paper_siggraph2017/images/'

target1='m_ia10.tiff'
target2='mp_ia10.tiff'
target3='m_ia40.tiff'
target4='mp_ia40.tiff'
target5='m_ia60.tiff'
target6='mp_ia60.tiff'
target7='m_ia80.tiff'
target8='mp_ia80.tiff'

cd one_die_r0.25

des1='one_1.5_r0.25/'
cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des1

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

cp $target1 $target2 $target3 $target4 $target5 $target6 $target7 $target8 $des_folder$des4
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


brewster1='m_ia50.tiff'
brewster2='mp_ia50.tiff'
brewster3='m_ia56.tiff'
brewster4='mp_ia56.tiff'
brewster5='m_ia60.tiff'
brewster6='mp_ia60.tiff'
brewster7='m_ia65.tiff'
brewster8='mp_ia65.tiff'

cd two_die_die_r11
des11='two_die_die_r11'

cp $brewster1 $brewster2 $brewster3 $brewster4 $brewster5 $brewster6 $brewster7 $brewster8 $des_folder$des11
cd ..

cd two_die_die_r37
des11='two_die_die_r37'

cp $brewster1 $brewster2 $brewster3 $brewster4 $brewster5 $brewster6 $brewster7 $brewster8 $des_folder$des11
cd ..

cd two_die_die_r17
des11='two_die_die_r17'

cp $brewster1 $brewster2 $brewster3 $brewster4 $brewster5 $brewster6 $brewster7 $brewster8 $des_folder$des11
cd ..
