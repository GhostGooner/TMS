#!/bin/bash
old_extension="$1"
new_extension="$2"
list=$(find . -type f -name "*.${old_extension}")
for file in $list; do
    mv "$file" "${file%.*}.$new_extension"
done
# в директории меняет все файлы с указанным расширением на другое указанное.
