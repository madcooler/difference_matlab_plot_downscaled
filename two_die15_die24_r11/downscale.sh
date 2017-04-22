#!/bin/sh

cd ia50

str='ia50'
art_imagetool mp_$str.artraw -dsc 4 -o mpd_$str
art_imagetool m_$str.artraw -dsc 4 -o md_$str
polarmag mpd_$str.artraw md_$str.artraw -xs 1 -xe 128 -ys 1 -ye 128 -s 1

cd ../ia56

str1='ia56'
art_imagetool mp_$str1.artraw -dsc 4 -o mpd_$str1
art_imagetool m_$str1.artraw -dsc 4 -o md_$str1
polarmag mpd_$str1.artraw md_$str1.artraw -xs 1 -xe 128 -ys 1 -ye 128 -s 1


cd ../ia60

str2='ia60'

art_imagetool mp_$str2.artraw -dsc 4 -o mpd_$str2
art_imagetool m_$str2.artraw -dsc 4 -o md_$str2
polarmag mpd_$str2.artraw md_$str2.artraw -xs 1 -xe 128 -ys 1 -ye 128 -s 1



cd ../ia65

str3='ia65'

art_imagetool mp_$str3.artraw -dsc 4 -o mpd_$str3
art_imagetool m_$str3.artraw -dsc 4 -o md_$str3
polarmag mpd_$str3.artraw md_$str3.artraw -xs 1 -xe 128 -ys 1 -ye 128 -s 1

