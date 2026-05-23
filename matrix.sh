#!/bin/bash

# Переходим в текстовый режим и прячем курсор
clear
tput civis
trap "tput cnorm; clear; exit" SIGINT SIGTERM

# Определяем цвета (зеленый и ярко-зеленый)
echo -e "\e[32m"

# Получаем размеры окна терминала
lines=$(tput lines)
cols=$(tput cols)

# Создаем массивы для позиций «капель» кода
declare -A spots

while true; do
    # Случайный символ (0, 1 или случайная буква)
    char=$((RANDOM % 2))
    if [ $((RANDOM % 5)) -eq 0 ]; then
        char=$(printf "\\x$(printf %x $((RANDOM % 26 + 97)))")
    fi
    
    # Случайная колонка
    col=$((RANDOM % cols))
    
    # Случайная строка
    row=$((RANDOM % lines))
    
    # Рисуем символ в случайной позиции экрана
    tput cup $row $col
    
    # Иногда делаем символы белыми (эффект вспышки капли)
    if [ $((RANDOM % 10)) -eq 0 ]; then
        echo -e "\e[1;37m$char\e[0;32m"
    else
        echo -n "$char"
    fi
    
    # Небольшая задержка, чтобы процессор не плавился
    sleep 0.01
done




