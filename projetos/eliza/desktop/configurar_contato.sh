#!/bin/bash
# Eliza - Configurar Contato de Emergência

clear
echo "══════════════════════════════════════════════════════"
echo "📱 CONFIGURAR CONTATO DE EMERGÊNCIA"
echo "══════════════════════════════════════════════════════"
echo ""
echo "Esta pessoa será seu contato RÁPIDO em situações"
echo "de perigo. Escolha alguém de TOTAL confiança."
echo ""
echo "EXEMPLOS:"
echo "- Irmã/irmão"
echo "- Melhor amiga"
echo "- Mãe/pai"
echo "- Colega de trabalho confiável"
echo ""
echo "══════════════════════════════════════════════════════"

# Perguntar nome
echo ""
read -p "Digite o NOME do contato: " nome

# Perguntar telefone
echo ""
read -p "Digite o TELEFONE (com DDD, só números): " telefone

# Validar telefone
if [[ ${#telefone} -lt 10 || ${#telefone} -gt 11 ]]; then
    echo ""
    echo "⚠️  Telefone inválido! Use DDD + número (10 ou 11 dígitos)"
    exit 1
fi

# Formatar telefone para exibição
if [[ ${#telefone} -eq 11 ]]; then
    telefone_formatado="(${telefone:0:2}) ${telefone:2:5}-${telefone:7:4}"
else
    telefone_formatado="(${telefone:0:2}) ${telefone:2:4}-${telefone:6:4}"
fi

# Salvar no arquivo
echo "$nome|$telefone|$telefone_formatado" > contato_emergencia.conf

echo ""
echo "══════════════════════════════════════════════════════"
echo "✅ CONTATO SALVO COM SUCESSO!"
echo ""
echo "Nome: $nome"
echo "Telefone: $telefone_formatado"
echo ""
echo "⚠️  EMERGÊNCIA:"
echo "Digite 'E' no menu principal"
echo "══════════════════════════════════════════════════════"
echo ""
read -p "Pressione ENTER para voltar..."
