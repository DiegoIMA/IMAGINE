---
id: ERP-MOD-POS
titulo: Módulo Pós-feira
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# POS · Pós-feira

36 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (5)

- `UNI-00307` `FLX-MACRO` `proposto` Pós-feira, fase 1 Dossiê: relatórios e termos do evento reunidos na aba Pós-feira e revisados. _[DOC-017 · §01 Fase 1 (POS-E1 e E2) · ITM-00506]_
  - Requisitos separados deste item: `UNI-00307.01`
- `UNI-00307.01` `FLX-MACRO` `proposto` A desmontagem (MON-E15) abre o dossiê do evento (POS-E1). _[DOC-091 · §2 Fluxo entre setores, item 11 Montagem → Pós-feira · ITM-01598 · parte de UNI-00307]_
- `UNI-00308` `FLX-MACRO` `proposto` Pós-feira, fase 2 Pesquisa: pesquisa de satisfação enviada ao cliente e respostas gravadas no histórico. _[DOC-017 · §01 Fase 2 (POS-E3 a E5) · ITM-00507]_
- `UNI-00309` `FLX-MACRO` `proposto` Pós-feira, fase 3 Análise: IA analisa as respostas, detrator é tratado e promotor é ativado. _[DOC-017 · §01 Fase 3 (POS-E6 a E8) · ITM-00508]_
- `UNI-00310` `FLX-MACRO` `proposto` Pós-feira, fase 4 Melhoria: métricas, reunião de melhoria e plano de ação medido na rodada seguinte. _[DOC-017 · §01 Fase 4 (POS-E9 a E12) · ITM-00509]_

## Etapas do fluxo (9)

- `UNI-00466` `FLX-MICRO` `proposto` Pós-feira, POS-E1: o Portal abre a aba Pós-feira com o dossiê do evento (relatórios, termo de aceite, ressalvas, chamados do plantão e observações do cliente). _[DOC-017 · POS-E1 · ITM-00510]_
- `UNI-00467` `FLX-MICRO` `proposto` Pós-feira, POS-E2: o responsável do pós-feira revisa o dossiê, apontando o que foi bem e o que teve ressalva ou retrabalho. _[DOC-017 · POS-E2 · ITM-00511]_
- `UNI-00468` `FLX-MICRO` `proposto` Pós-feira, POS-E3: o Portal envia a pesquisa de satisfação rápida por link sem login, por e-mail e WhatsApp, com cerca de 3 minutos para responder. _[DOC-017 · POS-E3 · ITM-00512]_
- `UNI-00469` `FLX-MICRO` `proposto` Pós-feira, POS-E5: respostas gravadas no histórico do cliente no Portal, visíveis ao vendedor na próxima venda. _[DOC-017 · POS-E5 · ITM-00514]_
- `UNI-00470` `FLX-MICRO` `proposto` Pós-feira, POS-E6: a IA analisa as respostas (notas por etapa, temas, palavras-chave e sentimento dos comentários). _[DOC-017 · POS-E6 · ITM-00515]_
- `UNI-00471` `FLX-MICRO` `proposto` Pós-feira, POS-E8: com nota 9 ou 10 o vendedor pede indicação ou autorização de case; depoimento só com autorização por escrito; notas 7 ou 8 seguem para o painel. _[DOC-017 · POS-E8 · ITM-00517]_
- `UNI-00472` `FLX-MICRO` `proposto` Pós-feira, POS-E9: o gerenciador de pesquisas atualiza o painel com NPS, nota por etapa, setor, vendedor e feira, e tendência mês a mês. _[DOC-017 · POS-E9 · ITM-00518]_
- `UNI-00473` `FLX-MICRO` `proposto` Pós-feira, POS-E10: reunião de melhoria em que a IA sugere os 3 pontos mais citados e a diretoria escolhe as prioridades. _[DOC-017 · POS-E10 · ITM-00519]_
- `UNI-00474` `FLX-MICRO` `proposto` Pós-feira, POS-E11 e E12: plano de ação 5W2H no Portal, com responsável, prazo e indicador, e medição do efeito na próxima rodada de pesquisas. _[DOC-017 · POS-E11 e POS-E12 · ITM-00520]_

## Pontos de decisão (2)

- `UNI-00574` `FLX-DECISAO` `proposto` Pós-feira, POS-E4: se o cliente respondeu segue; se não, o Portal reenvia lembrete e o assistente comercial ou o vendedor pede a resposta. _[DOC-017 · POS-E4 · ITM-00513]_
- `UNI-00575` `FLX-DECISAO` `proposto` Pós-feira, POS-E7: se o cliente está satisfeito segue; se não (nota 0 a 6, detrator), Diego e o vendedor são avisados e o contato ocorre em até 48 horas, registrado no Portal. _[DOC-017 · POS-E7 · ITM-00516]_

## Módulos e telas (3)

- `UNI-00012` `ESC-MODULO` `vigente` Pós-feira e marketing: pesquisa NPS, plano 5W2H, indicação em 3 níveis, collabs, kits VIP e campanhas mensais no WhatsApp. _[DOC-003 · Mapa, cartão 12 Pós-feira, Marketing · ITM-00081]_
  - Requisitos separados deste item: `UNI-00012.01`, `UNI-00012.02`, `UNI-00012.03`, `UNI-00012.04`, `UNI-00012.05`, `UNI-00012.06`
- `UNI-00012.01` `ESC-MODULO` `proposto` Módulo Pós-feira (setor 14): dossiê, pesquisa NPS/CSAT/CES, painel e plano de ação 5W2H. _[DOC-091 · §3 Módulos do ERP, Pós-feira · ITM-01614 · parte de UNI-00012]_
- `UNI-00019` `ESC-MODULO` `proposto` Gerenciador de pesquisas com IA: envio e lembretes, consolidação, leitura de textos por tema e sentimento, alertas, comparativos, sugestão de ações e histórico do cliente para o vendedor. _[DOC-017 · §05 Gerenciador de pesquisas · ITM-00526]_
  - Requisitos separados deste item: `UNI-00019.01`

## Documentos gerados (2)

- `UNI-00044` `ESC-DOC` `proposto` Dossiê do evento reúne termo de aceite e ressalvas, relatório do plantão técnico, relatório de conformidade, relatórios de produção e erros, observações do cliente e pesquisa de satisfação. _[DOC-017 · §03 Aba Pós-feira · ITM-00523]_
- `UNI-00053` `ESC-DOC` `proposto` Pós-evento (a ditar): ROM-002 romaneio de retorno, REL-001 previsto x realizado, REL-002 fechamento do job e avaliação de fornecedor e pesquisa de satisfação do cliente. _[DOC-032 · §04 Fase 9 · ITM-00781]_

## Entidades e campos (3)

- `UNI-00676` `ESC-DADOS` `proposto` Pesquisa de 8 perguntas, cerca de 3 minutos: NPS 0 a 10, nota por etapa 1 a 5, esforço 1 a 5, três palavras, ponto forte, ponto de melhoria, próxima feira e autorização de depoimento. _[DOC-017 · §04 Pesquisa de satisfação · ITM-00524]_
  - Requisitos separados deste item: `UNI-00676.01`
- `UNI-00676.01` `ESC-DADOS` `proposto` Pesquisa de satisfação: NPS, nota por etapa, esforço, palavras, textos, recompra e autorização. _[DOC-091 · §4 Entidades e dados principais, Pesquisa de satisfação; §5 Pós-feira, POS-E3 · ITM-01640 · parte de UNI-00676]_
- `UNI-00677` `ESC-DADOS` `proposto` Plano de ação 5W2H: o quê, por quê, quem, quando, onde, como, quanto e resultado medido na rodada seguinte; segue o ciclo PDCA. _[DOC-017 · §05 Plano de ação · ITM-00527]_

## Dashboards e indicadores (2)

- `UNI-00019.01` `ESC-INDIC` `proposto` Dashboard de Pós-feira: NPS, CSAT por etapa, CES, recompra, taxa de resposta, tempo de retorno ao detrator e temas recorrentes. _[DOC-091 · §10 Dashboards e indicadores, Pós-feira · ITM-02143 · parte de UNI-00019]_
- `UNI-00627` `ESC-INDIC` `proposto` Métricas: NPS (promotores 9 e 10 menos detratores 0 a 6), CSAT por etapa (notas 4 e 5), CES, intenção de recompra, taxa de resposta, tempo de retorno ao detrator e temas recorrentes. _[DOC-017 · §05 Métricas · ITM-00525]_

## Prazos (2)

- `UNI-00093` `REG-PRAZO` `proposto` Pós-feira: o contato com o detrator (nota 0 a 6) deve ocorrer em até 48 horas, com registro no Portal. _[DOC-017 · POS-E7 · ITM-00521]_
  - Requisitos separados deste item: `UNI-00093.01`
- `UNI-00093.01` `REG-PRAZO` `proposto` Contato com detrator (POS-E7): 48 horas, responsáveis vendedor e Diego. _[DOC-091 · §7 Prazos (SLAs), contato com detrator; §5 Pós-feira, POS-E7 · ITM-02108 · parte de UNI-00093]_

## Pendências (4)

- `UNI-00893` `PEND` `pendente` Falta definir o responsável pelo Pós-feira (assistente comercial, vendedor do cliente ou outra pessoa), pendência que consta também entre os responsáveis a definir do ERP-001 V08. _[DOC-002 · §45 Pendências · ITM-00058]_
- `UNI-00942` `PEND` `pendente` POS-E3: a aba do cliente fecha no fim da feira (SET13), por isso a pesquisa vai por link sem login; a confirmar. _[DOC-017 · §07 item 3 (POS-E3) · ITM-00531]_
- `UNI-00943` `PEND` `pendente` POS-E7: definir quem liga ao detrator em até 48 horas; a sugestão é o vendedor, com o Diego avisado. _[DOC-017 · §07 item 4 (POS-E7) · ITM-00532]_
- `UNI-01113` `PEND` `a-conferir` Numeração: Pós-feira como setor 14; inferido, a confirmar com a lista PLANDEM_SET-001. _[DOC-017 · §07 item 7 · ITM-00535]_
  - **Atenção (leitura do Claude):** item 22: Traz Pós-feira como setor 14. Os números estão em aberto.

## Ideias sem compromisso (4)

- `UNI-00839` `IDEIA` `proposto` POS-E3: sugestão de enviar a pesquisa 2 dias após o fim da feira, lembrete no 5º dia e coleta encerrada no 10º dia. _[DOC-017 · §07 item 2 (POS-E3) · ITM-00530]_
- `UNI-00840` `IDEIA` `proposto` POS-E10: sugestão de reunião de melhoria mensal nos 6 primeiros meses e depois trimestral. _[DOC-017 · §07 item 5 (POS-E10) · ITM-00533]_
- `UNI-00841` `IDEIA` `proposto` Sugestão de pesquisa rápida interna com a equipe após cada feira (o que travou, o que funcionou). _[DOC-017 · §07 item 6 · ITM-00534]_
- `UNI-00842` `IDEIA` `proposto` Metas de NPS e de satisfação por etapa: sugestão de medir 3 meses antes de fixar metas. _[DOC-017 · §07 item 8 · ITM-00536]_

