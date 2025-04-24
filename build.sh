#!/bin/bash

echo "💿 Iniciando build da ISO RogOS..."

# Verificar se archiso está instalado
if ! command -v mkarchiso &> /dev/null; then
  echo "❌ mkarchiso não encontrado. Instale com: sudo pacman -S archiso"
  exit 1
fi

# Diretório do projeto
PROJ_DIR="$(pwd)/archiso"
OUT_DIR="$(pwd)/out"

mkdir -p "$OUT_DIR"

# Gerar ISO
mkarchiso -v -w "$OUT_DIR/work" -o "$OUT_DIR" "$PROJ_DIR"

echo "✅ ISO criada em: $OUT_DIR"
