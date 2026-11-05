---
origem: documento interno (Fluxograma_Processo_Comercial_Stands.pdf)
tamanho_origem_bytes: 64279
data_origem: 2026-10-17
convertido_em: 2026-11-04
metodo: paginas renderizadas com RENDERIZAR-PDF_V01.ps1, transcritas pelo Claude a partir da imagem e conferidas com OCR
limites: transcrito por IA; conferir com o PDF; cores e posicao viram texto; o documento nao traz versao nem data
---

# Processo Comercial e de Projeto de Stands

> Todo ajuste pedido pelo cliente refaz projeto, custo, preço e proposta

O documento diz: 30 etapas em 5 fases. Linha laranja significa retrabalho. Caixa azul significa aceite do cliente.

## Fase 1 · Prospecção

1. **E1:** Identificar a planta do evento
2. **E2:** Montar lista de clientes
3. **E3:** Buscar telefone no site
4. **E4:** Pedir contato do responsável
5. **E5:** Perguntar se já contratou
6. **Decisão: Já contratou?**
   - **Sim:** Já contratou: cadastro no CRM p/ futuras
   - **Não:** segue para E6
7. **E6:** Registrar no CRM e agendar
8. **E7:** Enviar apresentação por e-mail
9. **E8:** Aguardar retorno `[ESPERA]`
10. **Decisão: Retornou?**
    - **Não:** Sem retorno: follow-up na data do CRM; volta para E8
    - **Sim:** segue para E9

## Fase 2 · Entrada da demanda

1. **E9:** Receber interesse e briefing
2. **E10:** Encaminhar via WhatsApp
3. **E11:** Abrir cartão no Trello. Dele saem dois caminhos:
   - **E12:** Incluir no cronograma
   - **E13:** Reunião de briefing, em paralelo à E12; depois **E14:** Atualizar cartão no Trello

E12 e E14 seguem para E15.

## Fase 3 · Projeto e orçamento

1. **E15:** Planejamento designa arquiteto
2. **E16:** Projeto e memorial descritivo
3. **E17:** Salvar projeto e mover cartão
4. **E18:** Elaborar planilha de custos
5. **E19:** Mover para preço de venda
6. **E20:** Financeiro define preço
7. **E21:** Elaborar proposta no software
8. **E22:** Enviar proposta e projeto `[ESPERA]`

## Fase 4 · Negociação e fechamento

**Decisão: Resposta do cliente?**

- **Ajuste (linha laranja, retrabalho):** volta para E16 e refaz de E16 a E22
- **Pede desconto:** direção aprova `[APROVAÇÃO]`
- **Sem resposta no prazo:** prazo prorrogado; volta para E22
- **Aceita:** segue para E24

1. **E24 (caixa azul):** Aceite e assinatura digital
2. **E25:** Elaborar contrato formal

## Fase 5 · Detalhamento e produção

1. **E26:** Detalhamento técnico
2. **E27:** Trello: projeto detalhado
3. **E28:** Passagem para produção
4. **E29:** Reunião produção e arquiteto
5. **E30:** Cronograma de produção por item
6. **Prazos por setor:** marcenaria · pintura · serralheria · comunicação visual · qualidade `[CONFERÊNCIA]` · expedição

Etapas após a expedição: a documentar

## Notas da transcrição

São observações do Claude, e não fazem parte do documento:

- **Numeração:** não há caixa com o número E23. A decisão "Resposta do cliente?" fica entre E22 e E24, então o documento pode contá-la como E23, mas ele não diz isso.
- **Saída de "Pede desconto":** o desenho liga as duas caixas ao mesmo ramo da decisão, mas só a caixa "Sem resposta no prazo" tem seta de volta para E22. Não dá para saber o que acontece depois da aprovação do desconto.
- **Saída de "Já contratou":** o desenho não mostra o que acontece depois do cadastro no CRM.
- **Decisões posteriores de Diego:** algumas etapas divergem de decisões registradas, como E10 (WhatsApp), E20 (preço) e "Sem resposta no prazo". Vale o que está em `ERP-CRM/01_DECISOES-DE-DIEGO.md`.
