#!/bin/bash
# mi PC tiene 255 niveles de brillo
# este es un script que lo regula

brillo_actual=$(cat /sys//devices/pci0000:00/0000:00:01.0/drm/card0/card0-LVDS-1/radeon_bl0/brightness)

bajar_brillo=$((brillo_actual - 10))
if [ "$bajar_brillo" -le 1 ]; then
    echo 1 >> /sys//devices/pci0000:00/0000:00:01.0/drm/card0/card0-LVDS-1/radeon_bl0/brightness 
else
    echo $bajar_brillo >> /sys//devices/pci0000:00/0000:00:01.0/drm/card0/card0-LVDS-1/radeon_bl0/brightness 
fi


