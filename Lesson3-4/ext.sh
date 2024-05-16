#!/bin/bash
read -p "Напишите исходное расширение " old_extension
read -p "Напишите новое расширение " new_extension
read -p "Напишите путь к файлам " destination
list=$(find $destination -type f -name "*.${old_extension}")
for file in $list; do
    mv "$file" "${file%.*}.$new_extension"
done
# в директории меняет все файлы с указанным расширением на другое указанное.
