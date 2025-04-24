#!/bin/bash

case "$1" in
  turbo)
    echo "⚡ Ativando modo TURBO..."
    echo "performance" | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
    ;;
  eco)
    echo "🌿 Ativando modo ECO..."
    echo "powersave" | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
    ;;
  drivers)
    echo "🔄 Atualizando drivers AMD..."
    pacman -Sy --noconfirm mesa mesa-vulkan-radeon xf86-video-amdgpu
    ;;
  menu)
    echo "📲 Abrindo menu principal RogOS (em construção)..."
    ;;
  *)
    echo "Uso: rogosctl {turbo|eco|drivers|menu}"
    ;;
esac
