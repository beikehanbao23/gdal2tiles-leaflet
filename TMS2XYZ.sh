#!/bin/bash

if [ "$#" -lt 1 ]; then
	 echo "===================="
    echo "TMS2XYZ shell script,director structure example (TMS:tiles/z/x/y.png)"
    echo "By [beikehanbao23]"
    echo "    1) Directory path "
    echo $#

    exit 0 # Exiting with a non-error code in order not to break the rest of the build
fi

echo "$0: " $0
echo "$01 " $1
 

set -u -x
DIR=$1
for dir in $(ls $DIR) 
do
   echo $dir
  
done

# BUILD_MODE=$1
# FOLDER=$2
# KEY=$3
# TARGET="${4-testing}"

# rm -f $FOLDER/omim/android/build/outputs/apk/android-symbols.zip

# zip -r $FOLDER/omim/android/build/outputs/apk/android-symbols.zip $FOLDER/omim/android/obj 

# # Upload the files to DropBox:
# # Later this ugly bit will be replaced by a new and shiny python script
# # 1) Delete the files from dropbox first
# for s in $(curl -H "Authorization: Bearer $KEY" "https://api.dropboxapi.com/1/metadata/auto/$TARGET/$BUILD_MODE" -X GET | python -m json.tool | grep "path" | grep "/$TARGET/" | cut -d ":" -f 2 | sed "s/\",//" | sed "s/\"//");
# do
#     curl -H "Authorization: Bearer $KEY" "https://api.dropbox.com/1/fileops/delete" -X POST --data "root=auto&path=$s"
# done

# cd $FOLDER/omim/android/build/outputs/apk/

# # 2) Upload the new ones now
# for s in $(ls | grep "android" | grep -v "unaligned");
# do
#     curl -H "Authorization: Bearer $KEY" https://api-content.dropbox.com/1/files_put/auto/$TARGET/$BUILD_MODE/ -T $s;
# done