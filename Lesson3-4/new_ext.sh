#!/bin/bash

read -p "Напишите имя файла с расширением " filename

if
 [[ ! $filename == *.* ]]; then
    echo "Расширение файла не указано"

read -p "Напишите имя файла с расширением " filename
fi

read -p "Укажите новое расширение " new_extension

filename_no_extension="${filename%.*}"

new_filename="${filename_no_extension}.${new_extension}"

mv "$filename" "$new_filename"

echo "Расширение файла '$filename' успешно изменено на '$new_extension'. Новое имя файла: '$new_filename'"
