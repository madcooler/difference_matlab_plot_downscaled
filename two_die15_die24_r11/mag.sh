#!/bin/sh

cd ia50

str='ia50'
polarmag mp_$str.artraw m_$str.artraw -xs 1 -xe 512 -ys 1 -ye 512 -s 2

cd ../ia56

str1='ia56'
polarmag mp_$str1.artraw m_$str1.artraw -xs 1 -xe 512 -ys 1 -ye 512 -s 2


cd ../ia60

str2='ia60'

polarmag mp_$str2.artraw m_$str2.artraw -xs 1 -xe 512 -ys 1 -ye 512 -s 2



cd ../ia65

str3='ia65'

polarmag mp_$str3.artraw m_$str3.artraw -xs 1 -xe 512 -ys 1 -ye 512 -s 2

