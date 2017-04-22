#!/bin/sh

cd ia50

str='ia50'
tonemap mp_$str.artraw -iac
tonemap m_$str.artraw -iac

cp mp_$str.tiff m_$str.tiff ../


cd ../ia56

str1='ia56'
tonemap mp_$str1.artraw -iac
tonemap m_$str1.artraw -iac

cp mp_$str1.tiff m_$str1.tiff ../


cd ../ia60

str2='ia60'
tonemap mp_$str2.artraw -iac
tonemap m_$str2.artraw -iac

cp mp_$str2.tiff m_$str2.tiff ../



cd ../ia65

str3='ia65'

tonemap mp_$str3.artraw -iac
tonemap m_$str3.artraw -iac

cp mp_$str3.tiff m_$str3.tiff ../

