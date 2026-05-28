#!/bin/bash
# Aziz Efe Çırak - 2420191044
# Sertifika Bağlantıları (3 Adet bağlantı)
# https://www.btkakademi.gov.tr/portal/certificate/validate?certificateId=lK1hw4qwlo 
# https://www.btkakademi.gov.tr/portal/certificate/validate?certificateId=XV1hWG2yKM
# https://credsverse.com/credentials/3f0a330b-6466-4bdf-a1cd-b8bb776fe372

DOSYA="report.log"

echo -n "parolayı giriniz: "
read PAROLA
echo

if [ "$PAROLA" == "MYO+202" ]; then
    echo "doğru"
else
    echo "Hatalı"
fi

TIMESTAMP=$(date -Iseconds)


    echo "Çalışma Zamanı: $TIMESTAMP"
    
    echo "işlemci"
    wmic.exe cpu get name >> $DOSYA
    
    echo "ram"
    wmic.exe computersystem get totalphysicalmemory >> $DOSYA
    
    echo "anakart"
    wmic.exe baseboard get product,Manufacturer >> $DOSYA
    
    echo "disk"
    wmic.exe diskdrive get serialnumber >> $DOSYA
    
    echo " mac adress"
    getmac.exe >> $DOSYA


