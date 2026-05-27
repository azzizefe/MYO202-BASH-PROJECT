#!/bin/bash
# Efe Çırak - 2420191044
# BASH Ödevi Ana Script (main.sh)

echo -n "Lütfen parolayı giriniz: "
read -s PAROLA
echo

if [ "$PAROLA" != "MYO+202" ]; then
    echo "Hatalı parola! Script durduruldu."
    exit 1
fi

echo "Parola doğru, işleme devam ediliyor..."

TIMESTAMP=$(date -Iseconds)
echo "Script Çalışma Zamanı: $TIMESTAMP" > report.log

echo "--- İşlemci ---" >> report.log
wmic.exe cpu get name >> report.log 2>&1

echo "--- RAM ---" >> report.log
wmic.exe computersystem get totalphysicalmemory >> report.log 2>&1

echo "--- Anakart ---" >> report.log
wmic.exe baseboard get product,Manufacturer >> report.log 2>&1

echo "--- Disk UUID ---" >> report.log
wmic.exe diskdrive get serialnumber >> report.log 2>&1

echo "--- MAC Adresi ---" >> report.log
getmac.exe >> report.log 2>&1

echo "Donanım raporu (report.log) oluşturuldu."

echo "Dosya şifreleniyor..."
gpg --symmetric --batch --yes --cipher-algo AES256 --passphrase "$PAROLA" report.log

rm report.log

echo "İşlem başarıyla tamamlandı!"
echo "report.log.gpg dosyası oluşturuldu ve orijinal dosya silindi."
