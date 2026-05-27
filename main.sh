#!/bin/bash
# Aziz Efe Çırak - 2420191044
# Sertifika Bağlantıları (3 Adet bağlantı)
# 

echo -n "Lütfen parolayı giriniz: "
read  PAROLA
echo

if [ "$PAROLA" != "MYO+202" ]; then
    echo "Hatalı şifre"
    exit 1
fi

echo "doğru"

TIMESTAMP=$(date -Iseconds)
echo "Çalışma Zamanı: $TIMESTAMP" > report.log

echo "işlemci" >> report.log
wmic.exe cpu get name >> report.log 2>&1

echo "ram" >> report.log
wmic.exe computersystem get totalphysicalmemory >> report.log 2>&1

echo "anakart" >> report.log
wmic.exe baseboard get product,Manufacturer >> report.log 2>&1

echo "disk" >> report.log
wmic.exe diskdrive get serialnumber >> report.log 2>&1

echo "mac adress" >> report.log
getmac.exe >> report.log 2>&1

echo " rapor oluştu"

echo "Dosya şifreleniyor..."
gpg --symmetric --batch --yes --cipher-algo AES256 --passphrase "$PAROLA" report.log

rm report.log

echo "tamamlandı"
echo "dosyası oluşturuldu ve orijinal dosya silindi."
