#!/bin/bash
echo "🔧 Configurando ambiente RogOS..."

# Ativar serviços essenciais
systemctl enable sddm
systemctl enable NetworkManager

# Criar usuário padrão
useradd -m -G wheel,video,audio,input -s /bin/bash roguser
echo "roguser:rogos" | chpasswd

# Instalar pacotes adicionais (exemplo)
pacman -Sy --noconfirm steam gamemode mangohud

echo "✅ Setup concluído!"
