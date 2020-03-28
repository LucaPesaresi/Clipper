@ECHO OFF
REM BFCPEOPTIONSTART
REM BFCPEEXE=C:\Users\luca2\Desktop\clipper.exe
REM BFCPEICON=C:\Users\luca2\Pictures\Icone\clipper.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=1
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=2.0.0.0
REM BFCPEVERPRODUCT=clipper
REM BFCPEVERDESC=copy text into android mobile
REM BFCPEVERCOMPANY=Luca Pesaresi
REM BFCPEVERCOPYRIGHT=C
REM BFCPEOPTIONEND
@ECHO ON
@echo off
echo|set /p=%1 > sample.txt
adb push sample.txt  /data/local/tmp/
adb shell run-as it.liuk.clipper cp /data/local/tmp/sample.txt files/sample.txt 
adb shell am force-stop it.liuk.clipper
adb shell am start -n it.liuk.clipper/.MainActivity
del sample.txt