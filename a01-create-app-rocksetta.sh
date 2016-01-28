#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a06-rocksetta-setup-android.sh
# best in cloud 9 to just right click this file and select run


echo "Enter a folder name, no spaces, no dashes, underscore allowed, for your app and folder example: helloWorld"
read wow4

phonegap create $wow4 --name $wow4 --id com.$wow4.$wow4
#phonegap create hello --name HelloWorld --id com.example.hello

#android create project \
#--target android-20 \
#--name $wow4 \
#--path $wow4 \
#--activity $wow4 \
#--package com.example.$wow4





#android update project --path .

#ant

#android update project --name $wow4 --target android-20 --path $wow4

cd $wow4


phonegap platform add android


phonegap build android


#ant clean

#ant debug



cd platforms/android/build/outputs/apk/
#https://phonegap-android-02-jerteach.c9users.io/helloWorld/platforms/android/build/outputs/apk/

printf "\n\n<a href='$wow4/platforms/android/build/outputs/apk/android-debug.apk'>$wow4/platforms/android/build/outputs/apk/android-debug.apk</a><br>"  >> /home/ubuntu/workspace/index.html



ls -l


cd ~/workspace/$wow4/platforms/android/assets/www

echo "Here is your index.html main webpage in the $wow4/platforms/android/assets/www folder"
ls -l

cd ~/workspace




echo "Look for you new android $wow4/bin $wow4-debug.apk"
echo "rightclick run index.html, then preview-preview running application to view webpage with .apk"


echo "Or just click this link and open the web page"




y="${HOSTNAME//[^-]}"
echo "$y"
echo "${#y}"
echo $HOSTNAME

if [ ${#y} = 4 ]; then
    IFS=- read var1 var2 var3 var4 var5 <<< $HOSTNAME
    echo "http://$var2-$var3-$var4-$var1.c9users.io"
fi


if [ ${#y} = 3 ]; then
    IFS=- read var1 var2 var3 var4 <<< $HOSTNAME
    echo "http://$var2-$var3-$var1.c9users.io"
fi

if [ ${#y} = 2 ]; then
    IFS=- read var1 var2 var3 <<< $HOSTNAME
    echo "http://$var2-$var1.c9users.io"
fi



