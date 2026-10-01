#!/bin/sh

while true; do

    # Wi-Fi
    WIFI="Disconnected"

    for iface in /sys/class/net/*; do
        iface=$(basename "$iface")

        [ "$iface" = "lo" ] && continue

        if [ -d "/sys/class/net/$iface/wireless" ]; then
            SSID=$(iw dev "$iface" link 2>/dev/null |
                sed -n 's/^[[:space:]]*SSID: //p')

            if [ -n "$SSID" ]; then
                WIFI="$SSID"
                break
            fi
        fi
    done


    # Bluetooth
    BT="OFF"

    if bluetoothctl show 2>/dev/null |
        grep -q "Powered: yes"; then

        DEVICE=$(bluetoothctl devices Connected 2>/dev/null |
            sed 's/^Device [^ ]* //' |
            head -n1)

        if [ -n "$DEVICE" ]; then
            BT="$DEVICE"
        else
            BT="ON"
        fi
    fi


    # Volumen
    VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null |
        awk '{printf "%.0f", $2 * 100}')

    [ -z "$VOLUME" ] && VOLUME="N/A"

    if wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null |
        grep -q MUTED; then
        VOLUME="Muted"
    fi


    # Brillo
    BRIGHTNESS=$(brightnessctl -m 2>/dev/null |
        awk -F, '{gsub("%","",$4); print $4}')

    [ -z "$BRIGHTNESS" ] && BRIGHTNESS="N/A"


    # Batería
    BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
    BAT_STATUS=$(cat /sys/class/power_supply/BAT0/status)

    case "$BAT_STATUS" in
        Charging)
            BAT_ICON="󰂄"
            ;;
        Full)
            BAT_ICON="󰁹"
            ;;
        *)
            BAT_ICON="󰁾"
            ;;
    esac


    # Fecha y hora
    DATE=$(date '+%d %b, %Y - %H:%M')


    echo " $WIFI     $BT     $VOLUME%    ☀ $BRIGHTNESS%    $BAT_ICON $BATTERY%    $DATE"

    sleep 1
done
