#!/bin/bash
# Eliza - Sistema de Apoio
# Versão 1.0

mostrar_menu() {
    clear
    echo "=========================================="
    echo "    🌸  E L I Z A  -  S i s t e m a      "
    echo "    Apoio e Informação via Terminal      "
    echo "=========================================="
    echo ""
    
    # MOSTRAR CONTATO SALVO (se existir)
    if [ -f "contato_emergencia.conf" ]; then
        # Ler contato salvo
        IFS='|' read nome telefone formatado < contato_emergencia.conf
        
        echo -e "\033[1;31m"
        echo "══════════════════════════════════════════"
        echo "📞 CONTATO DE EMERGÊNCIA SALVO:"
        echo "  $nome - $formatado"
        echo "══════════════════════════════════════════"
        echo -e "\033[0m"
        echo ""
    else
        echo -e "\033[1;33m"
        echo "⚠️  NENHUM CONTATO DE EMERGÊNCIA CONFIGURADO"
        echo "Use opção [C] para configurar"
        echo -e "\033[0m"
        echo ""
    fi
    
    echo "Como posso ajudar hoje?"
    echo ""
    echo "[1] 📚 Ver informações sobre direitos"
    echo "[2] 📞 Ver números de emergência"
    echo -e "[3] \033[1;31m🚨 Modo urgente (rápido e discreto)\033[0m"
    echo "[4] ❓ Como usar este sistema"
    echo "[E] 📱 Ligar para contato de emergência"
    echo "[C] ⚙️  Configurar contato de emergência"
    echo "[0] Sair"
    echo ""
}

while true; do
    mostrar_menu
    read -p "Digite o número da opção: " opcao
    
    case $opcao in
        1)
            clear
            echo "══════════════════════════════════════════════════════"
            echo "📚 LEI MARIA DA PENHA - Lei 11.340/2006"
            echo "══════════════════════════════════════════════════════"
            echo ""
            echo "PRINCIPAIS DIREITOS E SUAS BASES LEGAIS:"
            echo ""
            echo "• Medidas protetivas de URGÊNCIA (até 48h)"
            echo "  [Art. 22, I a IX da Lei 11.340/2006]"
            echo ""
            echo "• Afastamento do agressor do lar"
            echo "  [Art. 22, III - Lei 11.340/2006]"
            echo ""
            echo "• Proibição de contato e aproximação"
            echo "  [Art. 22, V e VI - Lei 11.340/2006]"
            echo ""
            echo "• Acompanhamento por rede de apoio"
            echo "  [Art. 8º, II e Art. 9º - Lei 11.340/2006]"
            echo ""
            echo "• Direito a informação e orientação"
            echo "  [Art. 8º, I - Lei 11.340/2006]"
            echo ""
            echo "══════════════════════════════════════════════════════"
            echo "MEDIDAS PROTETIVAS COMUNS (Art. 22, Lei 11.340/2006):"
            echo ""
            echo "✓ Afastamento do lar"
            echo "  [Art. 22, III - Afastamento do agressor do domicílio]"
            echo ""
            echo "✓ Proibição de contato"
            echo "  [Art. 22, V - Contato por qualquer meio]"
            echo ""
            echo "✓ Restrição de proximidade"
            echo "  [Art. 22, VI - Aproximação da ofendida/família]"
            echo ""
            echo "✓ Suspensão de posse de armas"
            echo "  [Art. 22, VIII - Restrição/posse de armas]"
            echo ""
            echo "══════════════════════════════════════════════════════"
            echo "COMO ACESSAR ESSES DIREITOS:"
            echo "1. Delegacia comum ou DEAM (Delegacia da Mulher)"
            echo "2. Ligue 180 para orientação"
            echo "3. Procure Defensoria Pública ou Ministério Público"
            echo ""
            echo "⚠️  Em caso de descumprimento das medidas:"
            echo "LIGUE 190 IMEDIATAMENTE - É CRIME!"
            echo "  [Art. 24-A, Lei 11.340/2006 - Descumprimento]"
            echo ""
            read -p "Pressione ENTER para voltar ao menu..."
            ;;
        2)
            clear
            echo "══════════════════════════════════════════════════════"
            echo "📞📞📞  SERVIÇOS DE EMERGÊNCIA - QUANDO USAR  📞📞📞"
            echo "══════════════════════════════════════════════════════"
            echo ""
            echo "⚠️  VOCÊ NÃO ESTÁ EXAGERANDO! Buscar ajuda é seu DIREITO."
            echo ""
            echo "🔴 190 - POLÍCIA MILITAR"
            echo "   • Situação de PERIGO IMEDIATO"
            echo "   • Agressor no local ou ameaçando voltar"
            echo "   • Descumprimento de medida protetiva"
            echo "   • Qualquer situação que precise de polícia AGORA"
            echo "   [Atendimento 24h, resposta rápida]"
            echo ""
            echo "🔵 180 - CENTRAL DA MULHER"
            echo "   • Orientação sobre direitos"
            echo "   • Dúvidas sobre Lei Maria da Penha"
            echo "   • Encaminhamento para serviços"
            echo "   • Denúncias (não emergenciais)"
            echo "   [Atendimento 24h, sigiloso]"
            echo ""
            echo "🟡 188 - CVV (CENTRO DE VALORIZAÇÃO DA VIDA)"
            echo "   • Apoio emocional"
            echo "   • Sentimentos de desespero/medo"
            echo "   • Conversa anônima e sigilosa"
            echo "   • Atendimento por chat/telefone"
            echo "   [24h, não é serviço de emergência policial]"
            echo ""
            echo "🟢 193 - BOMBEIROS"
            echo "   • Emergências médicas/incêndios"
            echo "   • Se estiver trancada/aprisionada"
            echo "   • Acidentes domésticos"
            echo ""
            echo "⚖️  DEFENSORIA PÚBLICA / MINISTÉRIO PÚBLICO"
            echo "   • Acompanhamento jurídico gratuito"
            echo "   • Medidas protetivas"
            echo "   • Processos na Justiça"
            echo ""
            echo "══════════════════════════════════════════════════════"
            echo "💭 LEMBRE-SE:"
            echo "• Você tem DIREITO a proteção"
            echo "• Buscar ajuda não é 'frescura'"
            echo "• Sua segurança vem primeiro"
            echo "• Serviços são SIGILOSOS"
            echo ""
            read -p "Pressione ENTER para voltar ao menu..."
            ;;
        3)
            clear
            echo "══════════════════════════════════════════════════════"
            echo "🚨🚨🚨  MODO DE EMERGÊNCIA - AÇÕES IMEDIATAS  🚨🚨🚨"
            echo "══════════════════════════════════════════════════════"
            echo ""
            echo "⚡ AÇÃO 1 - CONTATE ALGUÉM AGORA:"
            echo "• Ligue para familiar/amigo de CONFIANÇA"
            echo "• Procure vizinhos que possam ajudar"
            echo "• Se ver policiais nas redondezas, peça ajuda"
            echo ""
            echo "⚡ AÇÃO 2 - SE ESTIVER EM LOCAL FECHADO:"
            echo "• GRITE! Faça barulho para chamar atenção"
            echo "• Bata nas paredes/portas"
            echo "• Se possível, jogue algo pela janela"
            echo "• Use celular para fazer barulho (alarme)"
            echo ""
            echo "⚡ AÇÃO 3 - TELEFONES DE EMERGÊNCIA:"
            echo "📞 190 - Polícia Militar (responde rápido)"
            echo "📞 180 - Central da Mulher (orientação)"
            echo "📞 193 - Bombeiros (se trancada/aprisionada)"
            echo ""
            echo "⚡ AÇÃO 4 - SE PUDER SAIR:"
            echo "1. Saia SEM avisar (se possível)"
            echo "2. Vá para local MOVIMENTADO e PÚBLICO"
            echo "3. Delegacia, hospital ou loja 24h"
            echo "4. Casa de familiar/amigo SEGURO"
            echo ""
            echo "══════════════════════════════════════════════════════"
            echo "⚠️  BASE LEGAL PARA SUA AÇÃO:"
            echo "• Legítima defesa [Art. 25, Código Penal]"
            echo "• Estado de necessidade [Art. 24, CP]"
            echo "• Direito à vida e integridade física"
            echo "  [Art. 5º, caput, Constituição Federal]"
            echo ""
            echo "🌸 VOCÊ NÃO ESTÁ SOZINHA. AJUDA EXISTE."
            echo ""
            read -p "Pressione ENTER para voltar ao menu (ou já saia do sistema)..."
            ;;
        4)
            echo ""
            echo "❓ COMO USAR:"
            echo "- Este sistema funciona offline"
            echo "- Dados ficam apenas no seu computador"
            echo "- Em emergência, use telefone: 190"
            echo ""
            read -p "Pressione ENTER para voltar..."
            ;;
        E|e)
            echo ""
            echo "📱 LIGANDO PARA CONTATO DE EMERGÊNCIA..."
            echo ""
            
            if [ -f "contato_emergencia.conf" ]; then
                # Ler contato salvo
                IFS='|' read nome telefone formatado < contato_emergencia.conf
                
                echo "══════════════════════════════════════════"
                echo "🚨 CONTATO SALVO DE EMERGÊNCIA 🚨"
                echo "══════════════════════════════════════════"
                echo ""
                echo "👤 NOME: $nome"
                echo "📞 TELEFONE: $formatado"
                echo ""
                echo "INSTRUÇÕES:"
                echo "1. Pegue seu CELULAR"
                echo "2. Ligue AGORA para o número acima"
                echo "3. Diga: 'Preciso de ajuda URGENTE'"
                echo "4. Informe sua localização se possível"
                echo ""
                echo "⚠️  NÃO DESLIGUE ATÉ RECEBER AJUDA!"
                echo ""
                echo "Se não conseguir falar, mantenha a linha aberta."
                echo ""
                echo "══════════════════════════════════════════"
            else
                echo "⚠️  Nenhum contato configurado ainda!"
                echo "Execute: ./configurar_contato.sh"
            fi
            
            read -p "Pressione ENTER após ligar (ou se não conseguir)..."
            ;;
        C|c)
            ./configurar_contato.sh
            ;;
        0)
            echo ""
            echo "Até logo! Cuide-se! 🌸"
            exit 0
            ;;
        *)
            echo "Opção inválida! Tente novamente."
            sleep 2
            ;;
    esac
done
