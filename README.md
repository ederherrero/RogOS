# RogOS
Distribuição Linux otimizada para o ASUS ROG Ally X.



 Estrutura de Diretórios:

archiso/: Configurações para a criação da ISO personalizada.
    packages.x86_64: Lista de pacotes a serem incluídos na ISO.
    airootfs/: Sistema de arquivos raiz para a imagem live.
        etc/: Configurações do sistema.
        root/: Scripts de personalização.

kernel/: Scripts e configurações para compilação do kernel customizado.

rogosctl/: Ferramenta CLI para gerenciamento de perfis de desempenho, atualizações de drivers, etc.

ui/: Interface gráfica personalizada estilo console.

docs/: Documentação do projeto.

build.sh: Script para automatizar o processo de construção da ISO.