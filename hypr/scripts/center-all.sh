#!/usr/bin/env bash
# Центрирует все плавающие окна на текущем рабочем столе

ws=$(hyprctl activeworkspace -j | jq -r '.id')
active=$(hyprctl activewindow -j | jq -r '.address // empty')

hyprctl clients -j \
  | jq -r --argjson ws "$ws" '.[] | select(.workspace.id == $ws and .floating) | .address' \
  | while read -r addr; do
      hyprctl --batch "dispatch focuswindow address:$addr ; dispatch centerwindow"
    done

# вернуть фокус на исходное окно
[ -n "$active" ] && hyprctl dispatch focuswindow "address:$active"
