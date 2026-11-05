---
id: ERP-MOD-REU
titulo: Módulo Reuniões com IA
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# REU · Reuniões com IA

20 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (10)

- `UNI-00353` `FLX-MICRO` `inferido` Reunião de prospecção gravada pela IA, feita online com quem captou o lead; o formato online é inferido. _[DOC-005 · PRO-E12 · ITM-00116]_
  - Requisitos separados deste item: `UNI-00353.01`
- `UNI-00353.01` `FLX-MICRO` `proposto` Prospecção: havendo interesse, reunião online gravada pela IA. _[DOC-091 · §5 Prospecção, PRO-E12 · ITM-01656 · parte de UNI-00353]_
- `UNI-00354` `FLX-MICRO` `proposto` A IA transcreve a reunião e gera o checklist do que o cliente pediu; o Comercial confere. _[DOC-005 · PRO-E13 · ITM-00117]_
- `UNI-00361` `FLX-MICRO` `proposto` A reunião com o cliente é gravada e transcrita pela IA. _[DOC-007 · COM-E12 · ITM-00154]_
- `UNI-00495` `FLX-MICRO` `proposto` E1: a IA abre o cartão da demanda cerca de 1 minuto após a reunião de briefing, com dados do evento, ata, prints de imagens e rafes e briefing. _[DOC-030 · §03 E1 (§02 B6) · ITM-00699]_
- `UNI-00496` `FLX-MICRO` `proposto` E12: o vendedor que participou da reunião confere e valida o cartão gerado pela IA. _[DOC-030 · §03 E12 · ITM-00700]_
- `UNI-00498` `FLX-MICRO` `proposto` `conf:media` E2: o Comercial pede o ajuste de um item em aberto da ata diretamente pelo sistema a Projetos e ao comercial atuante, sem aprovação prévia. _[DOC-030 · §03 E2 · ITM-00702]_
- `UNI-00500` `FLX-MICRO` `proposto` E4: reunião de verificação com o cliente, a 1ª na prévia e a 2ª no render, conduzida pelo Comercial e gravada pelo assistente de reunião. _[DOC-030 · §03 E4 · ITM-00704]_
- `UNI-00501` `FLX-MICRO` `proposto` E5: o assistente de reunião atualiza a ata em formato de checklist, riscando itens ok e mantendo abertos os itens pendentes. _[DOC-030 · §03 E5 · ITM-00705]_
- `UNI-01116` `FLX-MICRO` `inferido` Na E12, se o vendedor encontrar erro no cartão, ele mesmo corrige antes de validar. _[DOC-030 · §03 Validar, E12 · ITM-00734]_

## Módulos e telas (1)

- `UNI-00061.01` `ESC-MODULO` `proposto` Módulo Reuniões com IA (setores 01, 02 e 07): gravação, transcrição, checklist, Termômetro da Reunião e ata da reunião de produção. _[DOC-091 · §3 Módulos do ERP, Reuniões com IA · ITM-01603 · parte de UNI-00061]_

## Entidades e campos (4)

- `UNI-00655` `ESC-DADOS` `proposto` Termômetro da Reunião, preenchido pela IA: concorrência, percepção da Imagine, capacidade, projeto, relacionamento, por que nos procurou e resultado (satisfação, probabilidade 0 a 100% e próximos passos). _[DOC-007 · COM-E13, §04 · ITM-00155]_
- `UNI-01635` `ESC-DADOS` `vigente` A IA analisa a gravação da visita e extrai tom da conversa, itens que chamaram a atenção, críticas e objeções, pontos positivos, necessidades e oportunidades, e status do cliente (ex.: abertura para contrato futuro). _[DOC-091 · §19 Análise da IA na gravação · ITM-02241]_
- `UNI-01636` `ESC-DADOS` `vigente` A IA extrai da gravação as feiras que o cliente faz, o tamanho dos estandes, quando abre a concorrência, a metragem do estande atual e quanto o cliente pagou por m². _[DOC-091 · §19 Análise da IA na gravação · ITM-02242]_
- `UNI-01637` `ESC-DADOS` `vigente` A IA monta da gravação o mapa de compra (contato, gerente, decisor, comprador e influenciador), a fidelização com a montadora atual e a evolução da verba da última feira (mantida, maior ou menor). _[DOC-091 · §19 Análise da IA na gravação · ITM-02243]_

## Integrações (1)

- `UNI-00061` `ESC-INTEG` `proposto` O assistente de reunião com IA entra nas chamadas online, grava áudio e tela, transcreve em português, extrai tópicos e destaca pontos críticos e referências; atua no briefing e nas duas verificações. _[DOC-030 · §04 Assistente de reunião · ITM-00729]_
  - Requisitos separados deste item: `UNI-00061.01`

## Legal e fiscal (1)

- `UNI-00190` `REG-LEGAL` `proposto` Toda reunião com cliente é gravada com aviso prévio no convite e no início da chamada (LGPD); gravação, ata e rafes ficam no cartão da demanda. _[DOC-030 · §04 e §06 · ITM-00728]_

## Regras operacionais (1)

- `UNI-01639` `REG-OPER` `vigente` A data do compromisso é a combinada pelo cliente; se foi combinado só um período, a IA escolhe uma data dentro dele; sem data, a IA sugere pelo contexto, como abertura da concorrência ou próxima feira. _[DOC-091 · §19 Próximo contato automático · ITM-02252]_

## Pendências (1)

- `UNI-00968` `PEND` `pendente` A ferramenta do assistente de reunião (candidatas tl;dv, Fathom, Fireflies, Gemini no Meet ou Copilot no Teams) ainda está a definir, com teste de duas opções em reunião real. _[DOC-030 · §03 Validar; §04 · ITM-00731]_

## Ideias sem compromisso (1)

- `UNI-00837` `IDEIA` `proposto` O nome "Termômetro da Reunião" e os indicadores do dashboard são propostas. _[DOC-007 · §08 último item · ITM-00164]_

