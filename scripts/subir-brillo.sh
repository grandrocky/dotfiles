#!/bin/bash
# mi PC tiene 255 niveles de brillo
# este es un script que lo regula

brillo_actual=$(cat /sys//devices/pci0000:00/0000:00:01.0/drm/card0/card0-LVDS-1/radeon_bl0/brightness)

subir_brillo=$((brillo_actual + 10))
if [ "$subir_brillo" -ge 255 ]; then
    echo 255 >> /sys//devices/pci0000:00/0000:00:01.0/drm/card0/card0-LVDS-1/radeon_bl0/brightness 
else
    echo $subir_brillo >> /sys//devices/pci0000:00/0000:00:01.0/drm/card0/card0-LVDS-1/radeon_bl0/brightness 
fi


