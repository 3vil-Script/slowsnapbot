#Enter your adb location >
cd /c/adb
#How many times you want it to loop
for ((n=0;n<10;n++));
do
echo $ #loop number

usernames=( "" )
for element in ${usernames[@]}
do
./adb shell input tap 552 1670 #coordinates x y
./adb shell input tap 562 1545 #coordinates x y
sleep 1
./adb shell input tap 980 1676 #coordinates x y 
./adb shell input tap 448 160 #coordinates x y
echo $element
./adb shell input text $element 
./adb shell input tap 400 400 #coordinates x y 
./adb shell input tap 1000 1000 #coordinates x y
sleep 1
done
done

echo "Finished"
