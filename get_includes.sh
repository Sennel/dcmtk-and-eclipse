#!/bin/sh

ROOT_UID=0   # Root has $UID 0.

if [ "$UID" -eq "$ROOT_UID" ]  # login as root.
then
  clear
  echo "Logged in as Root, continuing"
else
  echo "Login as root and restart this script"
  exit 0
fi


echo "Getting all include files and copying them to /usr/local/dicom/include.."

includedir="/usr/local/dicom/include" #This is the directory the includes will be copied to.

echo "Checking whether the directory exists or not"

if [ -d $a"include/dcmtk" ]
  then
   echo "Dir allready exists, continuing"
  else
   echo "$includedir does not exist, creating it."
   mkdir $includedir
   echo "$includedir created."
fi



for a in `ls -d */`
do
  if [ -d $a"include/dcmtk" ]
  then
   echo "$a""include/dcmtk exists." 
   echo "Copying: $a""include/dcmtk" 
   cp -r $a"include/dcmtk" $includedir 
   echo ""
  fi
done

echo "Done copying"
echo ""
echo "***************************"
echo "Keep my sabbaths and reverence my sanctuary: I am the LORD."
echo "***************************"
exit 0

