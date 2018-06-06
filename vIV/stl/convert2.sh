#from https://sourceforge.net/tracker/?func=detail&atid=640802&aid=3575774&group_id=105292
#mv CEBIV.stl CEBIV.stl.tar.gz
#tar zxvf CEBIV.stl.tar.gz
#mv STL CEBIV.STL
#cd CEBIV.STL
rm -f cebiv.g
j=0
for i in /home/mdupont/Downloads/OSE/STL/*.STL ; do
cp "$i" .

done
