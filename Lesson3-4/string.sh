
#!/bin/bash
read -p "Введите текст: " input_string
read -p "Если удалить введите delete, если выделить введите select: " action
read -p "Введите число начала границы: " num1
read -p "Введите число конца границы: " num2

if [ $num1 -gt $num2 ]; then
start=$num2
end=$num1
elif [ $num1 -lt $num2 ]; then
start=$num1
end=$num2
elif [ $num1 -eq $num2 ]; then
echo "Числа не должны быть одинаковыми"
exit 0
fi

substring=$(echo $input_string | cut -c ${start}-${end})

if [ "$action" = "select" ]; then
echo select
output_string=$substring
elif [ "$action" = "delete" ]; then
output_string=$(echo "$input_string" | sed "s/$substring//")
fi
echo "Result: $output_string"

