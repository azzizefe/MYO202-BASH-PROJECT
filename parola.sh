#!/bin/bash

echo -n "Lütfen parolayı giriniz: "
read PAROLA

if [ "$PAROLA" = "MYO+202" ]; then
    echo "Parola doğru! Giriş yapıldı."
else
    echo "Hatalı parola!"
fi
