#!/bin/bash

LOG_FILE="report.log"

TIMESTAMP=$(date -Iseconds)

echo "Script Çalışma Zamanı: $TIMESTAMP" > "$LOG_FILE"

echo "$LOG_FILE başarıyla oluşturuldu ve zaman damgası eklendi."