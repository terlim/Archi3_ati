#!/bin/bash

# Завершить текущие экземпляры polybar
killall -q polybar

# Ожидание полного завершения работы процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск Polybar со стандартным расположением конфигурационного файла в ~/.config/polybar/config
if type "xrandr"; then
        for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
                if [ $m == 'DVI-0' ]
                then
                    MONITOR=$m polybar --reload leftbar &
                fi
                if [ $m == 'DP-4' ]
                then
                    MONITOR=$m polybar --reload rightbar &
                fi
                if [ $m == 'HDMI-0' ]
                then
                    MONITOR=$m polybar --reload mainbar &
                fi
        done
else
        polybar --reload example &
fi

echo "Polybar загрузился..."
