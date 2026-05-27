#!/bin/bash


echo "--- DONANIM RAPORU ---" > report.log
echo "Tarih: $(date)" >> report.log

echo "--- İşlemci ---" >> report.log
wmic.exe cpu get name >> report.log

echo "--- RAM ---" >> report.log
wmic.exe computersystem get totalphysicalmemory >> report.log

echo "--- Anakart ---" >> report.log
wmic.exe baseboard get product,Manufacturer >> report.log

echo "--- Disk UUID ---" >> report.log
wmic.exe diskdrive get serialnumber >> report.log 

echo "--- MAC Adresi ---" >> report.log
getmac.exe >> report.log

echo "işlem bitti."
