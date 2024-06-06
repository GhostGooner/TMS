#!/bin/bash

function view_user_info() {
    read -p "Введите имя пользователя: " username
    echo "Информация о пользователе $username:"
    id $username
    finger $username
}

function create_user() {
    read -p "Имя нового пользователя: " new_username
    useradd $new_username
    echo "Пользователь $new_username был создан."
}

function delete_user() {
    read -p "Имя пользователя для удаления: " del_username
    userdel $del_username
    echo "Пользователь $del_username удален."
}

while true; do
    echo "Выберите действие:"
    echo "1 - Просмотреть информацию"
    echo "2 - Создать нового пользователя"
    echo "3 - Удалить пользователя"
    echo "4 - Выйти"

    read -p "Введите действия: " choice

    case $choice in
        1)
            view_user_info
            ;;
        2)
            create_user
            ;;
        3)
            delete_user
            ;;
        4)
            echo "Выход"
            exit 0
            ;;
        *)
            echo "Неверный выбор"
            ;;
    esac
done
