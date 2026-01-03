#!/bin/bash

# Настройки
API_KEY="118fa2824583364b212672d957885a42"
CITY="Novosibirsk"
UNITS="metric"
LANG="ru"

# Получаем данные
WEATHER=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$CITY&units=$UNITS&lang=$LANG&appid=$API_KEY")

# Парсим данные
TEMP=$(echo "$WEATHER" | jq '.main.temp | round')
#WIND=$(echo "$WEATHER" | jq '.wind.speed | round')
WEATHER_ID=$(echo "$WEATHER" | jq '.weather[0].id')

# Выбираем иконку по типу погоды
if [[ $WEATHER_ID -ge 200 && $WEATHER_ID -lt 300 ]]; then
    ICON="⛈️"  # Гроза
elif [[ $WEATHER_ID -ge 300 && $WEATHER_ID -lt 500 ]]; then
    ICON="🌧️"  # Мелкий дождь
elif [[ $WEATHER_ID -ge 500 && $WEATHER_ID -lt 600 ]]; then
    ICON="🌧️"  # Дождь
elif [[ $WEATHER_ID -ge 600 && $WEATHER_ID -lt 700 ]]; then
    ICON="❄️"  # Снег
elif [[ $WEATHER_ID -ge 700 && $WEATHER_ID -lt 800 ]]; then
    ICON="🌫️"  # Атмосферные явления
elif [[ $WEATHER_ID == 800 ]]; then
    ICON="☀️"  # Ясно
elif [[ $WEATHER_ID -ge 801 && $WEATHER_ID -lt 803 ]]; then
    ICON="⛅"  # Переменная облачность
elif [[ $WEATHER_ID -ge 803 ]]; then
    ICON="☁️"  # Пасмурно
else
    ICON="🌡️"  # По умолчанию
fi

# Формируем вывод
echo "{\"text\":\"$ICON $TEMP°C\", \"alt\":\"$TEMP°C\"}"
