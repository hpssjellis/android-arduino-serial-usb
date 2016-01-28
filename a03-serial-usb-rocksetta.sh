#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a03-serial-usb-rocksetta.sh
# best in cloud 9 to just right click this file and select run

# http://dynamicremo.blogspot.ca/2015/07/simple-serial-communication-app-using.html

echo "A bit redundant but cordova can be installed as well"
#npm install -g cordova

#https://github.com/DynamicRemo/SimpleSerialApp.git





echo "you have got to read http://dynamicremo.blogspot.ca/2015/07/simple-serial-communication-app-using.html"

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


#phonegap create SimpleSerialApp com.dynamicremo.simpleserialapp SimpleSerialApp
#cd SimpleSerialApp

#phonegap plugin add https://github.com/xseignard/cordovarduino.git

#phonegap platform add android

#phonegap build android



#phonegap plugin add https://github.com/xseignard/cordovarduino.git

#phonegap plugin add https://github.com/randynwalsh/cordovarduino.git 

#phonegap plugin add https://github.com/fabiomig/serialport-plugin.git



phonegap plugin add https://github.com/xseignard/cordovarduino.git
phonegap platform add android


cd ..
cd temp-files


#cp serial_communication.css /home/ubuntu/workspace/$wow4/www/css/serial_communication.css

#cp serial_communication.html /home/ubuntu/workspace/$wow4/www/serial_communication.html


#cp serial_communication.js /home/ubuntu/workspace/$wow4/www/js/serial_communication.js

#cp index.js /home/ubuntu/workspace/$wow4/www/js/index.js


cp index.html /home/ubuntu/workspace/$wow4/www/index.html



cd ..

cd $wow4










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



echo "this line must be in the config.xml"
echo "<gap:plugin name="fr.drangies.cordova.serial" />"

echo "And this should be in the AndroidManifest.xml"
echo " <action android:name="android.hardware.usb.action.USB_DEVICE_ATTACHED" /></intent-filter>"

echo "The last part shows where </intent-filter>"













#notes Vendor=0x0403(FTDI) and Product ID=0x6010 (FT2232H) working.  S3 good


#<resources>
#<!--  0x0403 / 0x6001: FTDI FT232R UART  -->
#<usb-device vendor-id="1027" product-id="24577"/>
#<!--  0x2341 / Arduino  -->
#<usb-device vendor-id="9025"/>
#<!--  0x16C0 / 0x0483: Teensyduino   -->
#<usb-device vendor-id="5824" product-id="1155"/>
#<!--  0x10C4 / 0xEA60: CP210x UART Bridge  -->
#<usb-device vendor-id="4292" product-id="60000"/>
#</resources>


#git clone https://code.google.com/p/usb-serial-for-android/
