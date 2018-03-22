#Enter your adb location >
cd /c/adb
#Enter usernames of celebrities etc.
usernames=( "" )
for element in ${usernames[@]}
do
echo Add: $element
./adb shell input text $element
sleep 1
./adb shell input tap 860 433 #Coordinates x y 
echo 860 433 tap add
sleep 1
./adb shell input tap 995 140 #Coordinates x y 
sleep 1
done

echo "Finished"