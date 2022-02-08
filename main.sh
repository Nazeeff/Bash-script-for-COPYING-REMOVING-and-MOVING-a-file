#!/bin/bash
echo "OPTIONS: "
echo "A. Copy a File"
echo "B. Remove a File"
echo "C. Move a File"
echo "D. Exit"
echo -n "Select your OPTION: "
read op
case $op in
A) echo -n "Enter the file name: "
read f1
echo -n "Enter new file name: "
read f2
if [ -f $f1 ]
then
cp $f1 $f2
else
echo "$f1 does not exist!"
fi
;;
B) echo -n "Enter your file name: "
read r1
if [ -f $r1 ]
then
rm -i $r1
else
echo "$r1 does not exist!"
fi
;;
C) echo -n "Enter your file name: "
read f1
echo -n "Select your destination: "
read f2
if [ -f $f1 ]
then
if [ -d $f2 ]
then
mv $f1 $f2
fi
else 
echo "$f1 does not exist!"
fi
;;
D)echo "EXIT"
exit;;
esac
