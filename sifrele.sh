#!/bin/bash

# şifreyi al
echo -n "Şifreleme parolası girin: "
read -s PAROLA
echo

# gpg ile şifreleme yap
gpg --symmetric --batch --cipher-algo AES256 --passphrase "$PAROLA" report.log


# orijinal log dosyasını sil
rm report.log

echo "Şifreleme tamamlandı, orijinal dosya silindi."
