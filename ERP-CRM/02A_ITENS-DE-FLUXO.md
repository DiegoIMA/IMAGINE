---
id: ERP-ITENS-FLUXO
titulo: Itens de fluxo por tipo
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Itens de fluxo por tipo

Lista de consulta. Para construir, use `ERP-CRM/FLUXOS/`, que traz as etapas em ordem.

## Fluxo macro (88)

### CRM · CRM e prospecção (8)

- `UNI-00223` `FLX-MACRO` `vigente` Toda demanda que entra via WhatsApp passa pela reunião de briefing gravada e pela validação do vendedor (E1/E12) e segue o fluxo principal até a proposta (E14/E15). _[DOC-031 · E23, linha de continuação · ITM-00751]_
- `UNI-00274` `FLX-MACRO` `proposto` Prospecção ativa tem quatro fases: linha de comunicação (PRO-E1 a E2), kit e peças (E3 a E6), captação do lead (E7 a E9) e condução no CRM (E10 a E15), terminando em Entrada de demanda. _[DOC-005 · §01 Fluxo macro · ITM-00101]_
- `UNI-00318` `FLX-MACRO` `proposto` Captação: da planta da feira à pesquisa de expositor e decisores, contato, lead aberto no CRM, filtro de categorização e atendimento pelo representante. _[DOC-030 · §02 Fase 1 Captação · ITM-00687]_
- `UNI-00325` `FLX-MACRO` `substituido-parcial` Entrada alternativa via WhatsApp (E17–E27, G2): leva ao Portal a demanda de cliente conhecido recebida no WhatsApp pessoal do vendedor, checa tempo hábil de produção e evita cartão parado sem retorno. _[DOC-031 · Cabeçalho e Início e fim · ITM-00736]_
  - **Continua valendo:** Existe entrada alternativa pelo WhatsApp para cliente conhecido, com checagem de tempo hábil e controle de cartão parado.
  - **Mudou:** Vale só o número corporativo integrado ao ERP; o número pessoal é proibido (item-6).
- `UNI-00326` `FLX-MACRO` `vigente` Fase W1 Recepção: cliente envia a demanda, vendedor encaminha ao número da IA com data do evento e prazo, a IA registra no Portal e confere os dados de prazo. _[DOC-031 · Fase W1 Recepção · ITM-00737]_
- `UNI-00327` `FLX-MACRO` `vigente` Fase W2 Triagem de prazo: checa tempo hábil, Diretoria decide os casos sem tempo, abre o cartão, monta o micro cronograma reverso e a assistente confere o prazo limite. _[DOC-031 · Fase W2 Triagem de prazo · ITM-00738]_
- `UNI-00328` `FLX-MACRO` `a-conferir` Fase W3 Acompanhamento do retorno, em paralelo do E21 até o aceite: o sistema vigia dias sem retorno, alerta vendedor e assistente e decide pelo aceite ou pelo encerramento. _[DOC-031 · Fase W3 Acompanhamento · ITM-00739]_
  - **Atenção (leitura do Claude):** item 24: Diz que o alerta vai ao vendedor e ao assistente. Pode ser um aviso anterior ao prazo limite.
- `UNI-00551.01` `FLX-MACRO` `proposto` Prospecção passa ao Comercial quando o cliente aceita o login do Portal (PRO-E15) e entra na área de organização de clientes (COM-E6). _[DOC-091 · §2 Fluxo entre setores, gatilho 1; §5 Prospecção, PRO-E15 · ITM-01588 · parte de UNI-00551]_

### PLC · Planejamento comercial (1)

- `UNI-00275` `FLX-MACRO` `proposto` Comercial tem quatro fases: planejamento anual (COM-E1 a E5), entrada e distribuição (E6 a E10), atendimento (E11 a E13) e controle semanal (E14 a E15). _[DOC-007 · §01 Fluxo macro · ITM-00133]_

### PRJ · Projetos e memorial (5)

- `UNI-00276` `FLX-MACRO` `proposto` Projetos tem cinco fases até a passagem para Custos: briefing, criação, modelagem, render e documentos, com validação do Comercial ao fim das fases 2, 3 e 4; depois do contrato, detalhamento e amostras. _[DOC-008 · §01 Fluxo macro · ITM-00166]_
  - Requisitos separados deste item: `UNI-00276.01`
- `UNI-00276.01` `FLX-MACRO` `proposto` Projetos passa a Custos quando o memorial é gerado e a planilha de custos é aberta (PRJ-E14), com prazo de 3 dias. _[DOC-091 · §2 Fluxo entre setores, item 3 Projetos → Custos · ITM-01590 · parte de UNI-00276]_
- `UNI-00320` `FLX-MACRO` `proposto` Projeto e verificações com o cliente: conceito, modelagem 3D, prévia, render e memorial, com duas reuniões de verificação gravadas e ata em checklist. _[DOC-030 · §02 Fase 3 Projeto · ITM-00689]_
- `UNI-00786` `FLX-MACRO` `confirmado` Antes do contrato são feitos 3D e memorial; depois, detalhamento e fichas. O código único do projeto acompanha o item até a montagem. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00036]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-01649` `FLX-MACRO` `confirmado` Depois do contrato assinado o sistema abre a demanda de detalhamento técnico, gerado pela IA e conferido pelo arquiteto, e dele gera as fichas técnicas de produção. _[DOC-091 · §25 Dois momentos distintos · ITM-02313]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`

### CUS · Custos (2)

- `UNI-00277` `FLX-MACRO` `proposto` Custos tem cinco fases: planilha pela IA (CUS-E1 a E4), validações (E5 a E7), revisões (E8 a E11), base de custos (E12 a E13) e adicionais na produção (E14 a E19). _[DOC-009 · §01 Fluxo macro · ITM-00203]_
- `UNI-00557.01` `FLX-MACRO` `substituido-parcial` `conf:media` Carol valida a planilha (CUS-E5), Maitê e Diego formam o preço (CUS-E6) e o assistente comercial recebe a pré-proposta (CUS-E7 → ACM-E1). _[DOC-091 · §2 Fluxo entre setores, gatilho 4; §5 Custos, CUS-E5 a CUS-E7 · ITM-01591 · parte de UNI-00557]_
  - **Continua valendo:** Custos valida a planilha, e o assistente comercial recebe a pré-proposta.
  - **Mudou:** A IA gera o preço depois da validação da Maitê (item-19); Maitê e Diego o aprovam (item-1).

### COM · Comercial, proposta e contrato (5)

- `UNI-00064.02` `FLX-MACRO` `proposto` `conf:media` O fluxo de Trade marketing é design, protótipo, aprovação, produção em série, distribuição e instalação nos pontos com fotos por loja, integrando marcenaria, serralheria, comunicação visual, elétrica e 3D Farm. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas · ITM-02462 · parte de UNI-00064]_
- `UNI-00279` `FLX-MACRO` `proposto` Assistente comercial tem quatro fases: proposta (ACM-E1 a E3), aceite (E4 a E7), contrato (E8 a E11) e monitoramento diário (E12 a E14). _[DOC-011 · §01 Fluxo macro · ITM-00263]_
- `UNI-00319` `FLX-MACRO` `proposto` Briefing e abertura da demanda: cliente recebe login, preenche briefing de 12 blocos, comercial valida, reunião gravada abre o cartão da demanda e as demandas dos setores. _[DOC-030 · §02 Fase 2 Briefing · ITM-00688]_
- `UNI-00321` `FLX-MACRO` `a-conferir` Orçamento, proposta e contrato: custos, preço de venda, proposta pelo sistema, controle de alterações, envio com aceite eletrônico, validação de contrato e entrada em Demandas aprovadas. _[DOC-030 · §02 Fase 4 Orçamento · ITM-00690]_
  - **Atenção (leitura do Claude):** item 8: Coloca a validação do contrato antes da entrada em Demandas aprovadas.
- `UNI-01648` `FLX-MACRO` `confirmado` Antes do contrato (fase comercial) existem só o projeto 3D do arquiteto e o memorial descritivo gerado pela IA, que alimentam custos e proposta. _[DOC-091 · §25 Dois momentos distintos · ITM-02312]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`

### FIN · Financeiro (2)

- `UNI-00278` `FLX-MACRO` `proposto` Financeiro tem cinco fases: contrato (FIN-E1 a E2), comandas (E3 a E6), ordens de compra (E7 a E8), centro de custos (E9 a E12) e remunerações e indicadores (E13 a E15). _[DOC-010 · §01 Fluxo macro · ITM-00237]_
- `UNI-01496` `FLX-MACRO` `substituido-parcial` O aceite do cliente (ACM-E7 = FIN-E1) gera o contrato em 1 dia (FIN-E2); o contrato assinado (ACM-E11) libera o Planejamento (PLA-E1). _[DOC-091 · §2 Assistente → Financeiro · ITM-01592]_
  - **Continua valendo:** O aceite do cliente gera o contrato em 1 dia.
  - **Mudou:** O projeto entra no Planejamento a partir do aceite (item-8); o contrato assinado libera o detalhamento técnico (ponto-1).

### CMP · Compras (1)

- `UNI-00329` `FLX-MACRO` `substituido-parcial` Ciclo da OC: FIC ou estoque mínimo gera SOL, checa estoque, cotação, OC em rascunho comparada ao ORC-001, aprovação por alçada, envio por e-mail, confirmação, recebimento conferido, NF e pagamento. _[DOC-032 · §05 Ordem de compra · ITM-00782]_
  - **Continua valendo:** O ciclo cotação, ordem de compra, envio, confirmação, recebimento conferido, nota fiscal e pagamento continua.
  - **Mudou:** A origem é a comanda vinda da pré-comanda automática, e não a ficha (item-21); no lugar das alçadas vale o alerta de preço (item-5); o comprador não vê o orçado (ponto-2); quem aprova depois do alerta está em aberto.

### PLA · Planejamento de produção (10)

- `UNI-00280` `FLX-MACRO` `vigente` Planejamento, fase 1 Entrada da demanda: Érika recebe o projeto fechado, monta o cronograma reverso e publica o cronograma macro, notificando todos os setores. _[DOC-012 · §01 Fase 1 (PLA-E1 a E5) · ITM-00289]_
  - Requisitos separados deste item: `UNI-00280.01`
- `UNI-00280.01` `FLX-MACRO` `proposto` O cronograma reverso é publicado em até 3 dias (PLA-E4) e todos os setores são notificados (PLA-E5). _[DOC-091 · §2 Fluxo entre setores, item 6; §5 Planejamento, PLA-E4 e PLA-E5 · ITM-01593 · parte de UNI-00280]_
  - **Decisão (Ver decisão do item 8):** O projeto entra no Planejamento a partir do aceite do cliente. Registro: `REGISTROS/decisao__20261104-1043-entrada-planejamento-w3f7.md`
- `UNI-00281` `FLX-MACRO` `vigente` Planejamento, fase 2 Detalhamento técnico: itens são decupados e Projetos sobe o detalhamento técnico no Portal. _[DOC-012 · §01 Fase 2 (PLA-E6 a E8) · ITM-00290]_
- `UNI-00282` `FLX-MACRO` `vigente` Planejamento, fase 3 Reunião de produção: gera ata e resolve as pendências com o cliente até o projeto estar validado para produção. _[DOC-012 · §01 Fase 3 (PLA-E9 a E11) · ITM-00291]_
- `UNI-00283` `FLX-MACRO` `vigente` Planejamento, fase 4 Fichas e cronograma: fichas técnicas, tempo por ficha e cronograma interno com prazos por ficha e por setor. _[DOC-012 · §01 Fase 4 (PLA-E12 a E15) · ITM-00292]_
- `UNI-00284` `FLX-MACRO` `vigente` Planejamento, fase 5 Credenciamento, em paralelo desde o PLA-E4: o Portal gera o formulário do evento e o Credenciamento monta a pasta da feira. _[DOC-012 · §01 Fase 5 (PLA-E16 e E17) · ITM-00293]_
  - Requisitos separados deste item: `UNI-00284.01`
- `UNI-00284.01` `FLX-MACRO` `proposto` Em paralelo, o Credenciamento recebe o formulário do evento (PLA-E16 → CRD-E1) e o Marketing recebe as datas (MKT-E1). _[DOC-091 · §2 Fluxo entre setores, item 7 Em paralelo · ITM-01594 · parte de UNI-00284]_
- `UNI-00285` `FLX-MACRO` `vigente` Planejamento, fase 6 Acompanhamento da produção: peças concluídas com foto registradas no app, com dashboard e alertas de atraso ou erro. _[DOC-012 · §01 Fase 6 (PLA-E18 a E21) · ITM-00294]_
- `UNI-00286` `FLX-MACRO` `vigente` Planejamento, fase 7 Relatório de conformidade: relatório visual com fotos de cada item, enviado ao cliente quando ele pede; segue para expedição e logística. _[DOC-012 · §01 Fase 7 (PLA-E22 e E23) · ITM-00295]_
- `UNI-00322` `FLX-MACRO` `proposto` Planejamento e documentação: cronograma macro reverso, timeline do cliente, credenciamento, aprovação do projeto pelo evento, detalhamento técnico, fichas por setor e reunião de produção. _[DOC-030 · §02 Fase 5 Planejamento · ITM-00691]_

### CRD · Credenciamento (5)

- `UNI-00287` `FLX-MACRO` `proposto` Credenciamento, fase 1 Entrada: recebe a demanda do Planejamento, abre a pasta do projeto e coleta os dados cadastrais do cliente. _[DOC-013 · §01 Fase 1 (CRD-E1 a E3) · ITM-00349]_
- `UNI-00288` `FLX-MACRO` `proposto` Credenciamento, fase 2 Portal da feira: levanta as exigências no portal do expositor, gera o checklist e compatibiliza o cronograma da feira com o da Imagine. _[DOC-013 · §01 Fase 2 (CRD-E4 a E7) · ITM-00350]_
- `UNI-00289` `FLX-MACRO` `proposto` Credenciamento, fase 3 Coleta: responsáveis entregam os documentos e o setor elabora os próprios, até o checklist ficar 100% completo. _[DOC-013 · §01 Fase 3 (CRD-E8 a E11) · ITM-00351]_
- `UNI-00290` `FLX-MACRO` `proposto` Credenciamento, fase 4 Validação: o jurídico-financeiro confere todos os documentos e a Maitê dá o ok final. _[DOC-013 · §01 Fase 4 (CRD-E12 e E13) · ITM-00352]_
- `UNI-00291` `FLX-MACRO` `proposto` Credenciamento, fase 5 Publicação: projeto e documentos vão ao portal da feira e a pasta final fica salva para a Montagem retirar as credenciais. _[DOC-013 · §01 Fase 5 (CRD-E14 a E16) · ITM-00353]_

### PRD · Produção e app dos setores (6)

- `UNI-00292` `FLX-MACRO` `substituido-parcial` Setores produtivos, fase 1 Entrada: líder é notificado, há reunião obrigatória de apresentação das fichas e o líder solicita os materiais. _[DOC-014 · §01 Fase 1 (PRD-E1 a E3) · ITM-00390]_
  - **Continua valendo:** O líder é notificado e há reunião obrigatória de apresentação das fichas.
  - **Mudou:** O líder não solicita materiais: confere e ajusta a pré-comanda automática (item-21).
  - Requisitos separados deste item: `UNI-00292.01`
- `UNI-00292.01` `FLX-MACRO` `a-conferir` A ficha publicada (PLA-E15) entra no app do setor produtivo (PRD-E1); comandas e compras passam pelo Financeiro (FIN-E3 a E8). _[DOC-091 · §2 Fluxo entre setores, item 8 Planejamento → Produção · ITM-01595 · parte de UNI-00292]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`
- `UNI-00293` `FLX-MACRO` `a-conferir` Setores produtivos, fase 2 Materiais: solicitação comparada com comanda e custo até o material ficar formalizado e o pedido gerado por Compras. _[DOC-014 · §01 Fase 2 (PRD-E4 a E6) · ITM-00391]_
  - **Atenção (leitura do Claude):** item 21: Compara a solicitação do setor com a comanda. Pode ainda valer para os ajustes.
- `UNI-00294` `FLX-MACRO` `vigente` Setores produtivos, fase 3 Etapas próprias: Comunicação visual e Audiovisual têm etapas com o cliente antes da produção, até arquivos e conteúdos aptos. _[DOC-014 · §01 Fase 3 (CVI, AUD) · ITM-00392]_
- `UNI-00295` `FLX-MACRO` `vigente` Setores produtivos, fase 4 Produção: programação no app, produção da ficha com foto e ok e envio ao controle de qualidade e à Expedição. _[DOC-014 · §01 Fase 4 (PRD-E7 a E10) · ITM-00393]_
- `UNI-00323` `FLX-MACRO` `proposto` Produção: setores produtivos pedem material, produzem pela ficha, registram foto e ok, produção confere no dashboard, cliente e comercial aprovam a amostra e a qualidade embala. _[DOC-030 · §02 Fase 6 Produção · ITM-00692]_

### AUD · Audiovisual (1)

- `UNI-01615` `FLX-MACRO` `vigente` Credenciamento e logística do audiovisual seguem o fluxo dos outros setores, mas as demandas são originadas pelo próprio Audiovisual. _[DOC-091 · §5 09 Audiovisual; §Respostas · ITM-01955]_

### D3F · Impressão 3D (1)

- `UNI-01498` `FLX-MACRO` `proposto` Fluxo 3D Farm: briefing rápido pelo Portal, modelagem e render para aprovação, protótipo pela validação de amostras, produção com acompanhamento no Portal, e entrega ou instalação com o estande. _[DOC-091 · §15 Frente 1 Estúdio 3D Farm, Metodologia · ITM-02207]_

### TIN · Tecnologia e experiências interativas (1)

- `UNI-00273` `FLX-MACRO` `proposto` Desenvolvimento digital tem 11 fases (0 a 10): entrada, descoberta, proposta, desenho da experiência, arquitetura, desenvolvimento, testes, publicação, operação no evento, encerramento e biblioteca. _[DOC-004 · Visão geral das fases · ITM-00084]_

### EXP · Expedição e qualidade (6)

- `UNI-00296` `FLX-MACRO` `proposto` Expedição, fase 1 Recebimento: a peça concluída é recebida com leitura do QR code. _[DOC-015 · §01 Fase 1 (EXP-E1 e E2) · ITM-00438]_
  - Requisitos separados deste item: `UNI-00296.01`
- `UNI-00296.01` `FLX-MACRO` `proposto` A ficha concluída no último setor da cadência (PLA-E19/PRD-E10) chega à Expedição (EXP-E1). _[DOC-091 · §2 Fluxo entre setores, item 9 Produção → Expedição · ITM-01596 · parte de UNI-00296]_
- `UNI-00297` `FLX-MACRO` `a-conferir` Expedição, fase 2 Qualidade: nova verificação com foto e ok no sistema. _[DOC-015 · §01 Fase 2 (EXP-E3 e E4) · ITM-00439]_
  - **Atenção (leitura do Claude):** item 22: Coloca a verificação de qualidade dentro da Expedição. Na ordem decidida, o Controle de qualidade vem antes.
- `UNI-00298` `FLX-MACRO` `proposto` Expedição, fase 3 Embalagem e etiqueta: a peça é embalada e recebe etiqueta com foto e código. _[DOC-015 · §01 Fase 3 (EXP-E5 a E7) · ITM-00440]_
- `UNI-00299` `FLX-MACRO` `proposto` Expedição, fase 4 Carregamento: controle do carregado versus previsto. _[DOC-015 · §01 Fase 4 (EXP-E8 e E9) · ITM-00441]_
  - Requisitos separados deste item: `UNI-00299.01`
- `UNI-00300` `FLX-MACRO` `proposto` Expedição, fase 5 Pavilhão: volumes descarregados, localizados pela etiqueta e desembalados e instalados pelo montador. _[DOC-015 · §01 Fase 5 (EXP-E10 a E12) · ITM-00442]_

### MON · Montagem (7)

- `UNI-00301` `FLX-MACRO` `vigente` Montagem, fase 1 Acesso: a equipe é liberada no app pela Érika, nomeada e escalada a cada feira. _[DOC-016 · §01 Fase 1 (MON-E1) · ITM-00467]_
  - Requisitos separados deste item: `UNI-00301.01`
- `UNI-00301.01` `FLX-MACRO` `a-conferir` O carregamento conferido (EXP-E9) libera a montagem (MON-E1). _[DOC-091 · §2 Fluxo entre setores, item 10 Expedição → Montagem · ITM-01597 · parte de UNI-00301]_
  - **Atenção (leitura do Claude):** item 22: a Logística vem entre a Expedição e a Montagem. Falta dizer se o carregamento ainda libera a Montagem (DUV-028).
- `UNI-00302` `FLX-MACRO` `vigente` Montagem, fase 2 Credenciamento no pavilhão: retirada de credenciais e apresentação de documentos e projeto aprovado. _[DOC-016 · §01 Fase 2 (MON-E2 e E3) · ITM-00468]_
- `UNI-00303` `FLX-MACRO` `vigente` Montagem, fase 3 Montagem: checklist com foto e dashboard de montagem. _[DOC-016 · §01 Fase 3 (MON-E4 a E6) · ITM-00469]_
- `UNI-00304` `FLX-MACRO` `vigente` Montagem, fase 4 Entrega: conferência do stand com o cliente e termo de aceite. _[DOC-016 · §01 Fase 4 (MON-E7 a E10) · ITM-00470]_
- `UNI-00305` `FLX-MACRO` `vigente` Montagem, fase 5 Plantão técnico: chamados do cliente atendidos com foto e relatório. _[DOC-016 · §01 Fase 5 (MON-E11 a E14) · ITM-00471]_
- `UNI-00306` `FLX-MACRO` `vigente` Montagem, fase 6 Desmontagem: mesmo checklist de montagem e encerramento dos acessos. _[DOC-016 · §01 Fase 6 (MON-E15 e E16) · ITM-00472]_

### POS · Pós-feira (5)

- `UNI-00307` `FLX-MACRO` `proposto` Pós-feira, fase 1 Dossiê: relatórios e termos do evento reunidos na aba Pós-feira e revisados. _[DOC-017 · §01 Fase 1 (POS-E1 e E2) · ITM-00506]_
  - Requisitos separados deste item: `UNI-00307.01`
- `UNI-00307.01` `FLX-MACRO` `proposto` A desmontagem (MON-E15) abre o dossiê do evento (POS-E1). _[DOC-091 · §2 Fluxo entre setores, item 11 Montagem → Pós-feira · ITM-01598 · parte de UNI-00307]_
- `UNI-00308` `FLX-MACRO` `proposto` Pós-feira, fase 2 Pesquisa: pesquisa de satisfação enviada ao cliente e respostas gravadas no histórico. _[DOC-017 · §01 Fase 2 (POS-E3 a E5) · ITM-00507]_
- `UNI-00309` `FLX-MACRO` `proposto` Pós-feira, fase 3 Análise: IA analisa as respostas, detrator é tratado e promotor é ativado. _[DOC-017 · §01 Fase 3 (POS-E6 a E8) · ITM-00508]_
- `UNI-00310` `FLX-MACRO` `proposto` Pós-feira, fase 4 Melhoria: métricas, reunião de melhoria e plano de ação medido na rodada seguinte. _[DOC-017 · §01 Fase 4 (POS-E9 a E12) · ITM-00509]_

### MKT · Marketing e acervo (4)

- `UNI-00311` `FLX-MACRO` `proposto` Marketing, fase 1 Bastidores: capta a produção e a montagem do projeto. _[DOC-018 · §01 Fase 1 (MKT-E1 a E3) · ITM-00537]_
- `UNI-00312` `FLX-MACRO` `proposto` Marketing, fase 2 Evento: capta o evento, portfólio do stand, vídeo e depoimento do cliente. _[DOC-018 · §01 Fase 2 (MKT-E4 a E7) · ITM-00538]_
- `UNI-00313` `FLX-MACRO` `proposto` Marketing, fase 3 Acervo: arquivos guardados no Portal com acesso controlado. _[DOC-018 · §01 Fase 3 (MKT-E8 a E12) · ITM-00539]_
- `UNI-00314` `FLX-MACRO` `proposto` Marketing, fase 4 Relacionamento: carta e brinde, pontos de fidelidade e convite para indicar e virar case. _[DOC-018 · §01 Fase 4 (MKT-E13 a E15) · ITM-00540]_

### INC · Incentivo e desempenho (2)

- `UNI-00315` `FLX-MACRO` `proposto` Programa de incentivo tem 5 fases: medição (INC-E1 e E2), apuração (E3 a E5), validação (E6), pagamento (E7) e revisão semestral (E8), com medição pelo Portal e nota do cliente no pós-feira. _[DOC-023 · §01 Fluxo macro · ITM-00607]_
  - Requisitos separados deste item: `UNI-00315.01`
- `UNI-00316` `FLX-MACRO` `proposto` `conf:media` Implantação sugerida: 3 meses só medindo, depois piloto de um trimestre e então o programa completo, revisto a cada semestre. _[DOC-023 · §06 Implantação sugerida · ITM-00625]_

### EVT · Produção de evento (9)

- `UNI-00271` `FLX-MACRO` `vigente` Fases da produção de evento: criação, planejamento (cronograma mestre, orçamento, responsabilidades, riscos), projetos (arquitetônico, elétrico, PPCI, estrutural com engenheiro), documentos e licenças, contratação, controle, operação e encerramento. _[DOC-002 · §43 Produção de evento · ITM-00050]_
  - Requisitos separados deste item: `UNI-00271.01`, `UNI-00271.02`, `UNI-00271.03`, `UNI-00271.04`, `UNI-00271.05`, `UNI-00271.06`, `UNI-00271.07`, `UNI-00271.08`
- `UNI-00271.01` `FLX-MACRO` `proposto` A fase de Criação do módulo Produção de Evento cobre conceito, briefing, identidade do evento e experiência do público. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 1 · ITM-02434 · parte de UNI-00271]_
- `UNI-00271.02` `FLX-MACRO` `proposto` A fase de Planejamento cobre cronograma mestre (pré-produção, montagem, evento, desmontagem), orçamento geral por rubrica, matriz de responsabilidades e mapa de riscos. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 2 · ITM-02435 · parte de UNI-00271]_
- `UNI-00271.03` `FLX-MACRO` `proposto` A fase de Projetos cobre arquitetônico, elétrico, PPCI, estrutural com engenheiro (ART/RRT), layout, acessibilidade, comunicação visual, audiovisual e demais exigidos pelo local e órgãos. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 3 · ITM-02436 · parte de UNI-00271]_
- `UNI-00271.04` `FLX-MACRO` `proposto` A fase de Documentos e licenças cobre alvarás, Bombeiros, prefeitura, ECAD, seguros, laudos e manuais do evento para fornecedores. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 4 · ITM-02437 · parte de UNI-00271]_
- `UNI-00271.05` `FLX-MACRO` `proposto` A fase de Contratação cobre cotação, escolha e contrato de cada fornecedor, com escopo, prazos, documentos exigidos e forma de pagamento (pela Imagine ou direto pelo cliente). _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 5 · ITM-02438 · parte de UNI-00271]_
- `UNI-00271.06` `FLX-MACRO` `proposto` A fase de Controle cobre cronograma integrado com tarefas da Imagine e dos fornecedores, checklist de entregas, acompanhamento de pagamentos feitos pelo cliente e reuniões e atas no sistema. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 6 · ITM-02440 · parte de UNI-00271]_
- `UNI-00271.07` `FLX-MACRO` `proposto` A fase de Operação cobre roteiro minuto a minuto, credenciamento de equipes, comunicação no dia, plantão e ocorrências registradas no app com foto. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 7 · ITM-02441 · parte de UNI-00271]_
- `UNI-00271.08` `FLX-MACRO` `proposto` A fase de Encerramento cobre desmontagem, devoluções, pesquisa de satisfação, relatório final ao cliente e avaliação de cada fornecedor. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 8 · ITM-02442 · parte de UNI-00271]_

### TRP · Transversal (7)

- `UNI-00269` `FLX-MACRO` `a-conferir` Fluxo do projeto entre setores: Prospecção (01), Comercial (02), Projetos (03), Custos (04), Assistente comercial (06), aceite e contrato no Financeiro (05), Planejamento (07). _[DOC-001 · §3 Fluxo do projeto entre setores · ITM-00003]_
  - **Atenção (leitura do Claude):** item 8: Coloca aceite e contrato antes do Planejamento. A decisão é a partir do aceite.
  - Requisitos separados deste item: `UNI-00269.01`
- `UNI-00269.01` `FLX-MACRO` `proposto` Comercial passa a Projetos depois do atendimento e da reunião, com o briefing registrado no Portal (COM-E13); o Planejamento define o arquiteto (PRJ-E1). _[DOC-091 · §2 Fluxo entre setores, item 2 Comercial → Projetos (COM-E13, PRJ-E1) · ITM-01589 · parte de UNI-00269]_
- `UNI-00270` `FLX-MACRO` `substituido-parcial` Fluxo do projeto após o contrato: Planejamento (07), Credenciamento (08, em paralelo), Setores produtivos (09), Expedição (12), Montagem (13), Pós-feira (14), Marketing (15) e próxima feira. _[DOC-001 · §3 Fluxo do projeto entre setores · ITM-00004]_
  - **Continua valendo:** Planejamento, Credenciamento em paralelo, Setores produtivos, Marketing e a próxima feira continuam no fluxo.
  - **Mudou:** A parte final segue Controle de qualidade, Expedição, Logística, Montagem e Pós-feira (item-22). O projeto entra no Planejamento a partir do aceite (item-8) e o detalhamento só começa depois do contrato (ponto-1).
- `UNI-00272` `FLX-MACRO` `vigente` Fluxo do código único do item: 3D, memorial, custos, previsão, base de compras, ficha técnica, produção com foto, etiqueta QR, carregamento, montagem e termo de entrega. _[DOC-003 · Mapa, centro · ITM-00069]_
- `UNI-00324` `FLX-MACRO` `proposto` Evento: logística e carregamento, montagem na sequência com foto e ok por etapa, previsto x realizado alimenta o histórico e fecha com pós-feira/feedback. _[DOC-030 · §02 Fase 7 Evento · ITM-00693]_
- `UNI-00331` `FLX-MACRO` `vigente` `conf:media` `rotina-anterior` O macroprocesso segue as listas do quadro Trello Imagine: projetos, padrões, planejamento de MKT, entrada, criação, validação criativa, alterações, memorial para custos, custos, preço e proposta, validação com cliente, aprovado, detalhamento, produção e feedbacks de pós-feira. _[DOC-033 · §2.1 itens 1-18 · ITM-00825]_
- `UNI-01495` `FLX-MACRO` `proposto` Cada passagem entre setores é um evento do sistema: a etapa que termina libera a seguinte e notifica o próximo responsável. _[DOC-091 · §2 Fluxo entre setores · ITM-01587]_

## Etapas do fluxo (318)

### CRM · CRM e prospecção (20)

- `UNI-00002.05` `FLX-MICRO` `proposto` `conf:media` A IA lê a foto do cartão de visita e preenche nome, cargo, empresa, telefone e e-mail do contato no pré-cadastro. _[DOC-091 · §19 Prospecção na feira pelo app, leitura do cartão · ITM-02237 · parte de UNI-00002]_
- `UNI-00002.06` `FLX-MICRO` `proposto` `conf:media` O app mostra na tela, durante a visita, um roteiro com os pontos a perguntar, e ao fim a IA marca no pré-cadastro o que foi coletado e o que faltou, para completar no recontato. _[DOC-091 · §19 Prospecção na feira pelo app, roteiro na tela · ITM-02246 · parte de UNI-00002]_
- `UNI-00002.08` `FLX-MICRO` `proposto` `conf:media` Ao fim da visita, a IA cria o compromisso na agenda de prospecção do vendedor a partir da conversa gravada, com resumo da visita, fotos e pontos que faltaram. _[DOC-091 · §19 Prospecção na feira pelo app, fim da visita · ITM-02251 · parte de UNI-00002]_
- `UNI-00343` `FLX-MICRO` `inferido` Prospecção define a pauta e a linha de comunicação para o perfil de venda, em documento-guia; o responsável (marketing) é inferido. _[DOC-005 · PRO-E1 · ITM-00103]_
  - Requisitos separados deste item: `UNI-00343.01`
- `UNI-00343.01` `FLX-MICRO` `proposto` Prospecção: definir pauta e linha de comunicação, feito pelo Marketing. _[DOC-091 · §5 Prospecção, PRO-E1 · ITM-01644 · parte de UNI-00343]_
- `UNI-00344` `FLX-MICRO` `proposto` Aplicar a mesma linha, perfil e abordagem de comunicação nos seis canais. _[DOC-005 · PRO-E2 · ITM-00104]_
  - Requisitos separados deste item: `UNI-00344.01`
- `UNI-00344.01` `FLX-MICRO` `proposto` Prospecção: aplicar a linha de comunicação nos 6 canais (LinkedIn, Instagram, site, blog, newsletter pelo CRM e WhatsApp). _[DOC-091 · §5 Prospecção, PRO-E2 · ITM-01646 · parte de UNI-00344]_
- `UNI-00345` `FLX-MICRO` `proposto` Montar o kit básico de divulgação: apresentação da empresa em PDF ou link HTML no Portal. _[DOC-005 · PRO-E3 · ITM-00105]_
- `UNI-00347` `FLX-MICRO` `proposto` Publicação automática nos seis canais; o WhatsApp vai só para a lista segmentada no CRM. _[DOC-005 · PRO-E6 · ITM-00108]_
- `UNI-00348` `FLX-MICRO` `proposto` Captação à distância: planta da feira, expositores e decisores, com filtro por categoria, porte, verba, tipo de cliente e demanda (tráfego pago e representantes). _[DOC-005 · PRO-E7 · ITM-00109]_
- `UNI-00349` `FLX-MICRO` `proposto` Captação presencial: contato com o cliente na feira ou no evento pela Prospecção ou por representante. _[DOC-005 · PRO-E8 · ITM-00110]_
- `UNI-00350` `FLX-MICRO` `proposto` Quem fez o contato presencial envia mensagem ao agente de IA no WhatsApp, que gera o formulário do contato. _[DOC-005 · PRO-E9 · ITM-00111]_
  - Requisitos separados deste item: `UNI-00350.01`
- `UNI-00350.01` `FLX-MICRO` `proposto` Prospecção: mensagem ao agente de IA no WhatsApp, que gera o formulário do contato no mesmo dia. _[DOC-091 · §5 Prospecção, PRO-E9 · ITM-01653 · parte de UNI-00350]_
- `UNI-00351` `FLX-MICRO` `proposto` Nova venda aberta no CRM; no caminho presencial ela abre sozinha pelo formulário e a Prospecção revisa. _[DOC-005 · PRO-E10 · ITM-00113]_
- `UNI-00352` `FLX-MICRO` `proposto` Quem captou o lead faz o contato, envia o material e registra tudo no CRM. _[DOC-005 · PRO-E11 · ITM-00114]_
- `UNI-00591.01` `FLX-MICRO` `proposto` Prospecção: registrar prazos de retorno, de envio de material e de recontato. _[DOC-091 · §5 Prospecção, PRO-E14 · ITM-01658 · parte de UNI-00591]_
- `UNI-01544` `FLX-MICRO` `vigente` O lead da visita entra no RD Station com origem "visita em feira", vendedor responsável e data de recontato sugerida. _[DOC-091 · §19 Registro por estande · ITM-02240]_
- `UNI-01545` `FLX-MICRO` `vigente` `conf:media` A IA liga cada foto ao trecho da gravação em que o assunto aparece, e as fotos vão para o histórico do cliente e para o briefing de Projetos. _[DOC-091 · §19 Fotos com pontos da conversa · ITM-02245]_
- `UNI-01546` `FLX-MICRO` `vigente` Ao encerrar a visita, a IA mostra o que foi coletado e o que faltou, para o vendedor completar no estande ou no recontato. _[DOC-091 · §19 Roteiro do vendedor na visita · ITM-02250]_
- `UNI-01638` `FLX-MICRO` `vigente` No fechamento da visita, o vendedor oferece enviar o portfólio, marca uma conversa, pergunta o melhor contato e a melhor data e registra a data de recontato. _[DOC-091 · §19 Roteiro do vendedor na visita · ITM-02249]_

### PLC · Planejamento comercial (6)

- `UNI-00355` `FLX-MICRO` `proposto` Montar o calendário comercial de 12 meses com as feiras e eventos de cada mês. _[DOC-007 · COM-E1 · ITM-00135]_
- `UNI-00357` `FLX-MICRO` `proposto` Definir o vendedor responsável por cada feira, conforme perfil, tipo de evento e histórico. _[DOC-007 · COM-E3 · ITM-00139]_
- `UNI-00359` `FLX-MICRO` `proposto` `conf:media` O sistema sugere o vendedor responsável pela feira no planejamento. _[DOC-007 · COM-E8 · ITM-00147]_
- `UNI-00497` `FLX-MICRO` `proposto` E13: a IA abre as demandas dos setores e monta o cronograma reverso até o envio da proposta (3D, memorial, custo, preço, montagem e envio) nas agendas de Projetos, Custos e Comercial. _[DOC-030 · §03 E13 · ITM-00701]_
- `UNI-00511` `FLX-MICRO` `vigente` E22: o sistema monta o micro cronograma reverso com o prazo limite de aprovação do cliente e de início da produção. _[DOC-031 · E22 · ITM-00749]_
- `UNI-00760` `FLX-MICRO` `vigente` `conf:media` O time de vendas monta junto o planejamento COM-E1 a E5; o vendedor envia o login do Portal ao cliente (COM-E11). _[DOC-007 · §08 Respondido em 28/10 · ITM-00165]_

### DIS · Distribuição de clientes (2)

- `UNI-00358` `FLX-MICRO` `proposto` Cliente entra na área de organização de clientes do Portal, com o relatório da Prospecção quando houver. _[DOC-007 · COM-E6 · ITM-00144]_
  - Requisitos separados deste item: `UNI-00358.01`
- `UNI-00358.01` `FLX-MICRO` `proposto` Comercial: o cliente aparece no usuário do vendedor, com o relatório da Prospecção. _[DOC-091 · §5 Comercial, COM-E10 · ITM-01671 · parte de UNI-00358]_

### REU · Reuniões com IA (10)

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

### PRJ · Projetos e memorial (29)

- `UNI-00362` `FLX-MICRO` `proposto` Planejamento (Setor 07) define o arquiteto de cada projeto e o Portal o notifica. _[DOC-008 · PRJ-E1 · ITM-00169]_
- `UNI-00363` `FLX-MICRO` `proposto` Arquiteto busca no Portal o briefing, os anexos e o pré-escopo do cliente. _[DOC-008 · PRJ-E2 · ITM-00170]_
- `UNI-00364` `FLX-MICRO` `proposto` Arquiteto faz pesquisa, referências e mood board de materiais e inspirações, na aba Referências do projeto. _[DOC-008 · PRJ-E3 · ITM-00171]_
- `UNI-00365` `FLX-MICRO` `proposto` IA gera o storytelling do conceito: justificativa, inspiração e argumento de venda. _[DOC-008 · PRJ-E4 · ITM-00172]_
- `UNI-00366` `FLX-MICRO` `proposto` Arquiteto valida referências e storytelling e envia ao Comercial com notificação ao vendedor do cliente. _[DOC-008 · PRJ-E5 · ITM-00173]_
  - Requisitos separados deste item: `UNI-00366.01`
- `UNI-00366.01` `FLX-MICRO` `proposto` Projetos: envio das referências ao Comercial para validação. _[DOC-091 · §5 Projetos, PRJ-E5 (G1) · ITM-01684 · parte de UNI-00366]_
- `UNI-00367` `FLX-MICRO` `proposto` Modelagem 3D parte da biblioteca de itens, buscando primeiro o que já existe. _[DOC-008 · PRJ-E6 · ITM-00175]_
  - Requisitos separados deste item: `UNI-00367.01`, `UNI-00367.02`
- `UNI-00367.01` `FLX-MICRO` `proposto` Projetos: modelagem 3D partindo da biblioteca e do catálogo de locações. _[DOC-091 · §5 Projetos, PRJ-E6 · ITM-01687 · parte de UNI-00367]_
- `UNI-00367.02` `FLX-MICRO` `proposto` No projeto, o arquiteto monta o 3D com itens da biblioteca, cada um com código. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, item 1 · ITM-02295 · parte de UNI-00367]_
- `UNI-00369` `FLX-MICRO` `proposto` Arquiteto conclui os testes de modelagem e marca a etapa como concluída. _[DOC-008 · PRJ-E8 · ITM-00177]_
  - Requisitos separados deste item: `UNI-00369.01`
- `UNI-00369.01` `FLX-MICRO` `proposto` Projetos: testes concluídos antes da validação da prévia. _[DOC-091 · §5 Projetos, PRJ-E8 (G2) · ITM-01689 · parte de UNI-00369]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-00370` `FLX-MICRO` `proposto` Arquiteto faz os renders e monta a apresentação. _[DOC-008 · PRJ-E9 · ITM-00180]_
- `UNI-00371` `FLX-MICRO` `proposto` Projeto pronto para validação: comando no Portal avisa o Comercial. _[DOC-008 · PRJ-E10 · ITM-00181]_
  - Requisitos separados deste item: `UNI-00371.01`
- `UNI-00371.01` `FLX-MICRO` `proposto` Projetos: o projeto é enviado para validação. _[DOC-091 · §5 Projetos, PRJ-E10 (G3) · ITM-01693 · parte de UNI-00371]_
- `UNI-00372` `FLX-MICRO` `proposto` Portal gera o memorial descritivo (biblioteca, catálogo de locações e 3D); o arquiteto confere e valida. _[DOC-008 · PRJ-E11 · ITM-00183]_
  - Requisitos separados deste item: `UNI-00372.01`
- `UNI-00372.01` `FLX-MICRO` `proposto` O memorial é gerado pelo sistema a partir do projeto, com os mesmos códigos dos itens. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, item 1; §5 Projetos, PRJ-E11 · ITM-02296 · parte de UNI-00372]_
- `UNI-00376` `FLX-MICRO` `confirmado` Detalhamento técnico e fichas (plantas, vistas, cotas, fichas por categoria, tabela de precificação) acontece depois do contrato; o código PRJ-E13 foi mantido, mas a etapa vem depois da PRJ-E14. _[DOC-008 · PRJ-E13, §08 · ITM-00191]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00377` `FLX-MICRO` `vigente` Prancha de amostras, na etapa de amostras da produção, mostra cada material com marca e modelo aplicado no projeto. _[DOC-008 · PRJ-E15, §08 · ITM-00192]_
- `UNI-00499` `FLX-MICRO` `proposto` E3: Projetos executa o ajuste pedido e devolve prévia ou render ajustado. _[DOC-030 · §03 E3 · ITM-00703]_
- `UNI-00515` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1 começa quando Diego envia a prancha (PDF AP02/AP06 ou imagens 3D) e dita o escopo em áudio ou texto. _[DOC-033 · §2.2 P1 gatilho · ITM-00829]_
- `UNI-00516` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1 termina com o .xlsx gerado, conferido por render em PDF, salvo no Drive e informado a Diego, com dúvidas em A CONFIRMAR. _[DOC-033 · §2.2 P1 Fim · ITM-00830]_
- `UNI-00517` `FLX-MICRO` `vigente` `conf:baixa` `rotina-anterior` Memorial P1, passo 1: Diego envia o PDF da prancha e dita o escopo. _[DOC-033 · §2.2 P1 passo 1 · ITM-00832]_
- `UNI-00518` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1, passo 2: o Claude lê o PDF extraindo zoneamento, medidas, renders e quantidades visíveis. _[DOC-033 · §2.2 P1 passo 2 · ITM-00833]_
- `UNI-00522` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1, passo 8: informa a Diego o que foi gerado, as premissas adotadas e a lista do que está A CONFIRMAR. _[DOC-033 · §2.2 P1 passo 8 · ITM-00840]_
- `UNI-00524` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Detalhamento P2 começa quando Diego pede "detalhar... no mesmo padrão" depois do memorial, ou junto dele. _[DOC-033 · §2.3 P2 gatilho · ITM-00849]_
- `UNI-00525` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Detalhamento P2 termina com o PDF A3 multi-folha aprovado por Diego ("perfeito") e salvo no Drive. _[DOC-033 · §2.3 P2 Fim · ITM-00850]_
- `UNI-00528` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 5: entrega o PDF a Diego e lista as premissas; exemplos: mureta apoiada no piso, rampa de 6 m, 15 refletores. _[DOC-033 · §2.3 P2 passo 5 · ITM-00856]_
- `UNI-00531` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Levantamento P3 começa quando Diego pede planilha de levantamento de materiais por categoria, normalmente após memorial e D01. _[DOC-033 · §2.4 P3 gatilho · ITM-00863]_
- `UNI-00618` `FLX-MICRO` `proposto` `conf:media` Os rafes são feitos em quadro compartilhado (Miro ou FigJam) durante a reunião e o arquivo sobe para o cartão da demanda junto com a gravação. _[DOC-030 · §04 Rafes · ITM-00730]_

### BIB · Biblioteca de itens e locações (13)

- `UNI-00368` `FLX-MICRO` `proposto` Itens novos ou alterados são marcados e cadastrados no projeto; o Portal alerta e eles são usados normalmente no 3D. _[DOC-008 · PRJ-E7 · ITM-00176]_
- `UNI-00375` `FLX-MICRO` `vigente` Ao fim do projeto, itens novos vão ao Diego, que valida em 1 dia; os aprovados entram na biblioteca para os próximos projetos. _[DOC-008 · PRJ-E16 · ITM-00188]_
- `UNI-00485` `FLX-MICRO` `vigente` `conf:media` Gravação de padrões: o profissional grava vídeos curtos por etapa, Marília envia pelo app, a IA transcreve e monta rascunho, o validador do setor aprova e o padrão entra na biblioteca. _[DOC-021 · §1 Como funciona · ITM-00584]_
  - Requisitos separados deste item: `UNI-00485.01`, `UNI-00485.02`, `UNI-00485.03`, `UNI-00485.04`
- `UNI-00485.01` `FLX-MICRO` `proposto` `conf:media` O arquiteto confere as fichas geradas e a marcenaria valida os padrões, que são refinados a cada projeto. _[DOC-091 · §33 Marcenaria, biblioteca de padrões construtivos · ITM-02377 · parte de UNI-00485]_
- `UNI-00485.02` `FLX-MICRO` `proposto` O profissional do setor grava a produção de cada item em vídeos curtos por etapa, narrando materiais, medidas, encaixes e fixação com a trena na câmera, e os envia pelo app ligados ao tipo de item. _[DOC-091 · §35 Padrões construtivos por vídeo, passos 1 e 2 · ITM-02388 · parte de UNI-00485]_
- `UNI-00485.03` `FLX-MICRO` `proposto` A IA transcreve a narração, separa as imagens de cada etapa e gera um rascunho do padrão construtivo com passo a passo, materiais, medidas citadas e foto de cada etapa. _[DOC-091 · §35 Padrões construtivos por vídeo, passo 3 · ITM-02389 · parte de UNI-00485]_
- `UNI-00485.04` `FLX-MICRO` `proposto` O rascunho do padrão vai para os validadores (marcenaria: Marco, Wagner, Leonardo, Henrique, Rômulo; elétrica: Alexandre) e só depois do ok entra na biblioteca de padrões e é usado pela IA nas fichas. _[DOC-091 · §35 Padrões construtivos por vídeo, passo 4 · ITM-02390 · parte de UNI-00485]_
- `UNI-00486` `FLX-MICRO` `vigente` `conf:media` Depois do envio, o padrão aprovado entra na biblioteca com código e versão e a IA o usa nas fichas indicando o código; item sem padrão gera aviso à Marília para a lista de gravação. _[DOC-021 · §7 Depois do envio · ITM-00591]_
  - Requisitos separados deste item: `UNI-00486.01`
- `UNI-00624` `FLX-MICRO` `proposto` Ciclo da biblioteca: buscar o item, usar no 3D, cadastrar se alterado ou criado com código e imagem, Diego valida em 1 dia e a IA atualiza a biblioteca evitando duplicar. _[DOC-008 · §04 Ciclo da biblioteca · ITM-00193]_
- `UNI-00785.03` `FLX-MICRO` `proposto` `conf:media` A IA sugere as etiquetas de cada foto do banco de imagens e o Marketing confere. _[DOC-091 · §23 Banco de imagens para as apresentações, passo 3 · ITM-02282 · parte de UNI-00785]_
- `UNI-00790.01` `FLX-MICRO` `proposto` Abre-se uma demanda para cadastrar os padrões de produção de cada tipo de item (parede, testeira, sanca, moldura de LED), com desenhos e regras, que a IA usa para gerar as fichas. _[DOC-091 · §33 Marcenaria, biblioteca de padrões construtivos · ITM-02376 · parte de UNI-00790]_
- `UNI-01395.02` `FLX-MICRO` `proposto` `conf:media` O sistema compila os itens de locação do projeto e gera a solicitação de locação: móveis e demais itens para a Érika (RS) ou a Samanta (SP), e equipamentos de audiovisual para o Christian. _[DOC-091 · §25 Integração automática do projeto, destino de cada item codificado, item a locar · ITM-02308 · parte de UNI-01395]_
- `UNI-01554` `FLX-MICRO` `vigente` Quando o vendedor abre um projeto, a IA cruza segmento, feira, tipo e porte e deixa na aba do projeto projetos anteriores parecidos, expositores e peças que deram certo (código BIB e custo realizado) e referências de estilo e materiais. _[DOC-091 · §24 Biblioteca de referências, Uso automático pela IA · ITM-02289]_

### APR · Apresentações por IA (6)

- `UNI-00373` `FLX-MICRO` `proposto` Portal gera a apresentação comercial e a argumentação de venda com mood board, storytelling e renders. _[DOC-008 · PRJ-E12 · ITM-00184]_
- `UNI-01549` `FLX-MICRO` `vigente` Depois da reunião de briefing, a IA gera uma versão da apresentação adaptada à necessidade do cliente, a partir da gravação, do Termômetro e do formulário de entrada. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02273]_
- `UNI-01550` `FLX-MICRO` `vigente` A IA identifica na reunião objetivos, desafios, problemas da última feira, objeções e oportunidades, e escreve para cada ponto um texto mostrando como a Imagine resolve aquele problema. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02274]_
- `UNI-01551` `FLX-MICRO` `vigente` A IA seleciona os cases do mesmo segmento, destaca os diferenciais ligados às dores do cliente e retira o que não interessa. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02275]_
- `UNI-01552` `FLX-MICRO` `vigente` A apresentação personalizada é enviada pelo ERP com registro de envio e de abertura e fica no histórico do cliente. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02277]_
- `UNI-01553` `FLX-MICRO` `vigente` Ao personalizar a apresentação, a IA busca as imagens do segmento e do problema do cliente e as aplica nos slides, e o vendedor confere antes do envio. _[DOC-091 · §23 Banco de imagens, Uso na apresentação · ITM-02284]_

### CUS · Custos (21)

- `UNI-00074.01` `FLX-MICRO` `proposto` Planilha mãe: a Carol controla os preços das duas unidades e, todo mês, solicita à Samanta (compradora de SP) os preços atualizados pelo sistema, para validar e lançar. _[DOC-091 · §5 Custos (bloco após Frota), planilha mãe CUS-E12 · ITM-01812 · parte de UNI-00074]_
- `UNI-00374` `FLX-MICRO` `proposto` Portal abre a pasta em Custos com a planilha de custos; prazo de 3 dias e aviso a Comercial, assistente comercial, Financeiro e assistente financeiro. _[DOC-008 · PRJ-E14 · ITM-00185]_
- `UNI-00378` `FLX-MICRO` `proposto` IA lê o projeto 3D e o memorial descritivo, ainda sem detalhamento técnico. _[DOC-009 · CUS-E1 · ITM-00204]_
- `UNI-00379` `FLX-MICRO` `proposto` IA gera a planilha de materiais com item, material, especificação, unidade, valor unitário e total, cruzando preços de mercado. _[DOC-009 · CUS-E2 · ITM-00205]_
  - Requisitos separados deste item: `UNI-00379.01`, `UNI-00379.02`
- `UNI-00379.01` `FLX-MICRO` `proposto` Planilha pela IA: a partir do memorial e das informações técnicas, o agente de IA gera a planilha de custos com parâmetros pré-definidos; a Carol não elabora mais a planilha. _[DOC-091 · §5 Custos (bloco após Frota), novo fluxo de Custos com IA, passo 1 · ITM-01814 · parte de UNI-00379]_
- `UNI-00379.02` `FLX-MICRO` `proposto` A IA gera a planilha de custos a partir do memorial, com histórico e biblioteca. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, item 2 · ITM-02297 · parte de UNI-00379]_
- `UNI-00380` `FLX-MICRO` `a-conferir` Bloco de logística e operação fica pronto para o Financeiro: mão de obra, frete, combustível, hotel, alimentação, limpeza, taxas e RRT. _[DOC-009 · CUS-E3 · ITM-00206]_
  - **Atenção (leitura do Claude):** item 19: Diz que o bloco fica pronto para o Financeiro, sem dizer quem preenche.
- `UNI-00381` `FLX-MICRO` `proposto` Preço de venda sugerido é calculado pela planilha base da Imagine. _[DOC-009 · CUS-E4 · ITM-00207]_
- `UNI-00382` `FLX-MICRO` `proposto` Carol confere a planilha gerada pela IA. _[DOC-009 · CUS-E5 · ITM-00209]_
  - Requisitos separados deste item: `UNI-00382.01`, `UNI-00382.02`
- `UNI-00382.01` `FLX-MICRO` `vigente` Custos: Carol confere a planilha gerada pela IA e aponta ajustes por item. _[DOC-091 · §5 Custos, CUS-E5 · ITM-01709 · parte de UNI-00382]_
  - **Decisão (Ver decisão do item 1):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`
- `UNI-00382.02` `FLX-MICRO` `vigente` Conferência da Carol: ela confere os custos e aponta à IA os ajustes de cada item; a IA corrige e devolve até o ok da Carol. _[DOC-091 · §5 Custos (bloco após Frota), novo fluxo de Custos com IA, passo 2 · ITM-01815 · parte de UNI-00382]_
  - **Decisão (Ver decisão do item 1):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`
- `UNI-00384` `FLX-MICRO` `proposto` Projeto alterado pelo cliente ou item fora do escopo faz o Portal gerar a V2 da planilha e notificar a Carol. _[DOC-009 · CUS-E8 · ITM-00215]_
- `UNI-00385` `FLX-MICRO` `proposto` Carol revisa e valida a V2, tirando e incluindo itens e mudando quantidades. _[DOC-009 · CUS-E9 · ITM-00216]_
- `UNI-00388` `FLX-MICRO` `proposto` Portal e IA recebem a atualização da base, e a próxima planilha já sai com os valores novos. _[DOC-009 · CUS-E13 · ITM-00221]_
- `UNI-00389` `FLX-MICRO` `proposto` Durante a produção o cliente pede o adicional no Portal (ex.: TV, totem, balcão, paisagismo, parede verde, LED maior, piso mais caro). _[DOC-009 · CUS-E14 · ITM-00223]_
- `UNI-01103` `FLX-MICRO` `inferido` `conf:media` Em 3 dias, quem entrega a planilha é Custos e o preço de venda é do Financeiro (inferido do fluxo de 22/10). _[DOC-008 · §08, PRJ-E14 · ITM-00187]_
- `UNI-01499` `FLX-MICRO` `decisao-diego` Custos: a IA propõe logística e operação pelo histórico; a Maitê valida ou pede alteração e a IA gera o preço de venda. _[DOC-091 · §5 04 Custos, CUS-E6 · ITM-01711]_
  - **Decisão (Decidido por Diego):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- `UNI-01500` `FLX-MICRO` `proposto` Custos: o Comercial avalia o prazo do adicional pelo cronograma. _[DOC-091 · §5 04 Custos, CUS-E15 · ITM-01723]_
- `UNI-01501` `FLX-MICRO` `proposto` Custos: gera a planilha do adicional. _[DOC-091 · §5 04 Custos, CUS-E16 · ITM-01725]_
- `UNI-01520` `FLX-MICRO` `proposto` Ao montar um novo custo, a IA puxa a média dos projetos parecidos e corrige os valores propostos; se um item ficar fora da média histórica, aponta para a Carol e a Maitê. _[DOC-091 · §5 Base histórica de custos realizados · ITM-01825]_
- `UNI-01521` `FLX-MICRO` `proposto` A IA busca o histórico sem limite de tempo, encontra o projeto anterior do mesmo cliente e feira, replica itens, quantidades, equipe e logística e atualiza os valores pela planilha mãe; a Carol confere as diferenças. _[DOC-091 · §5 Projetos repetidos de um ano para o outro · ITM-01827]_

### COM · Comercial, proposta e contrato (27)

- `UNI-00112.01` `FLX-MICRO` `proposto` `conf:media` O vendedor registra no sistema todo desconto pedido pelo cliente ou proposto por ele, e a IA recalcula a margem na hora. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto na negociação · ITM-01836 · parte de UNI-00112]_
- `UNI-00387` `FLX-MICRO` `proposto` Anderson recebe a V2 com aviso de alteração no preço de venda e emite nova proposta comercial. _[DOC-009 · CUS-E11 · ITM-00219]_
- `UNI-00397` `FLX-MICRO` `proposto` Portal encaminha a proposta ao vendedor responsável pelo cliente. _[DOC-011 · ACM-E3 · ITM-00267]_
- `UNI-00398` `FLX-MICRO` `proposto` Assistente notifica o jurídico-financeiro e Maitê elabora o contrato e o libera no sistema. _[DOC-011 · ACM-E8 · ITM-00272]_
- `UNI-00399` `FLX-MICRO` `proposto` Contrato é enviado para assinatura digital, com o assistente em cópia do envio. _[DOC-011 · ACM-E9 · ITM-00273]_
- `UNI-00401` `FLX-MICRO` `proposto` Assistente despacha cada demanda ao setor certo ou a executa. _[DOC-011 · ACM-E13 · ITM-00277]_
- `UNI-00416` `FLX-MICRO` `vigente` `conf:media` Comercial, PLA-E23: edita ou pede edição do relatório de conformidade e o envia ao cliente somente quando o cliente pedir (pré-feira). _[DOC-012 · PLA-E23 · ITM-00319]_
- `UNI-00502` `FLX-MICRO` `proposto` A assistente comercial elabora a proposta no sistema, no modelo da Imagine, com escopo, valores e condições, a partir do preço de venda e do memorial, e a valida com o vendedor. _[DOC-030 · §03 E7 · ITM-00707]_
- `UNI-00503` `FLX-MICRO` `proposto` E9: o vendedor registra no sistema o pedido de alteração (pagamento, valor, prazos, itens adicionais, prazo de fechamento). _[DOC-030 · §03 E9 · ITM-00709]_
- `UNI-00504` `FLX-MICRO` `proposto` E11: o sistema atualiza a proposta conforme a decisão da G1 e a devolve ao vendedor, que volta a E8. _[DOC-030 · §03 E11 · ITM-00714]_
- `UNI-00506` `FLX-MICRO` `substituido-parcial` E17: o cliente conhecido envia texto, projeto pronto, arquivos ou fotos de referência para o WhatsApp pessoal do vendedor. _[DOC-031 · E17 · ITM-00740]_
  - **Continua valendo:** O cliente conhecido envia texto, projeto pronto, arquivos ou fotos de referência pelo WhatsApp.
  - **Mudou:** Vale só o número corporativo integrado ao ERP (item-6).
- `UNI-00507` `FLX-MICRO` `vigente` `conf:media` E17a: o vendedor encaminha a conversa e os anexos ao número da IA, já informando a data do evento e o prazo. _[DOC-031 · E17a · ITM-00741]_
- `UNI-00508` `FLX-MICRO` `vigente` E18: a IA recebe a conversa e registra tudo no Portal. _[DOC-031 · E18 · ITM-00742]_
- `UNI-00509` `FLX-MICRO` `vigente` E19: a IA confere os dados de prazo; se faltar data do evento ou prazo, cobra do vendedor; se completo, segue para E20. _[DOC-031 · E19 · ITM-00743]_
- `UNI-00510` `FLX-MICRO` `vigente` E21: o sistema abre o cartão de nova demanda já marcando vendedor, assistente comercial, Projetos e Custos. _[DOC-031 · E21 · ITM-00748]_
- `UNI-00512` `FLX-MICRO` `vigente` E23: a assistente comercial confere o prazo limite, confirmando ou corrigindo, e a correção fica registrada. _[DOC-031 · E23 · ITM-00750]_
- `UNI-00513` `FLX-MICRO` `substituido-parcial` E24: o sistema acompanha os dias sem retorno contra o prazo limite, valendo a régua de 7 dias da E15 ou o prazo limite do micro cronograma, o que vencer primeiro. _[DOC-031 · E24 · ITM-00752]_
  - **Continua valendo:** O sistema acompanha os dias sem retorno contra o prazo limite.
  - **Mudou:** Ao bater o prazo avisa vendedor e Diego; depois, um aviso por dia a vendedor, Diego e Anderson (item-24). Até quando os avisos continuam, e se vale o que vencer primeiro, está em aberto.
- `UNI-00514` `FLX-MICRO` `a-conferir` E26: o vendedor avisa o cliente de que o prazo está acabando, pelo WhatsApp do próprio vendedor. _[DOC-031 · E26 · ITM-00754]_
  - **Atenção (leitura do Claude):** item 6: Diz "WhatsApp do próprio vendedor". Pode ser o número corporativo dele; o texto não diz.
- `UNI-00910.01` `FLX-MICRO` `vigente` No ERP, um assistente de IA elabora o contrato com a Maitê, preenchendo o modelo com os dados da proposta aceita. _[DOC-091 · Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-02052 · parte de UNI-00910]_
- `UNI-01100` `FLX-MICRO` `inferido` O vendedor confere e completa o Termômetro preenchido pela IA; a escala de 0 a 100% é proposta. _[DOC-007 · §08 COM-E13 · ITM-00156]_
  - Requisitos separados deste item: `UNI-01100.01`
- `UNI-01100.01` `FLX-MICRO` `proposto` Comercial: a IA preenche o Termômetro e a probabilidade no funil; o vendedor confere. _[DOC-091 · §5 Comercial, COM-E13 · ITM-01674 · parte de UNI-01100]_
- `UNI-01101` `FLX-MICRO` `inferido` Vendedores atualizam o funil até sexta, antes do envio do dashboard (inferido). _[DOC-007 · §08 COM-E14 · ITM-00158]_
  - Requisitos separados deste item: `UNI-01101.01`
- `UNI-01101.01` `FLX-MICRO` `proposto` Comercial: o vendedor atualiza o funil. _[DOC-091 · §5 Comercial, COM-E14 · ITM-01675 · parte de UNI-01101]_
- `UNI-01525` `FLX-MICRO` `proposto` Reunião mensal: com o relatório, o Diego convoca os vendedores para analisar o mês e apontar pontos fortes e fracos da atividade comercial. _[DOC-091 · §5 Relatório comercial mensal · ITM-01846]_
- `UNI-01527` `FLX-MICRO` `proposto` Assistente comercial, etapa ACM-E5: o assistente cobra o aceite da proposta. _[DOC-091 · §5 06 Assistente comercial, ACM-E5 · ITM-01860]_
- `UNI-01529` `FLX-MICRO` `substituido-parcial` Assistente comercial, etapa ACM-E11: o contrato assinado é registrado e o projeto segue para o Planejamento. _[DOC-091 · §5 06 Assistente comercial, ACM-E11 · ITM-01869]_
  - **Continua valendo:** O contrato assinado é registrado.
  - **Mudou:** O projeto já está no Planejamento desde o aceite (item-8); a assinatura libera o detalhamento técnico (ponto-1).
- `UNI-01547` `FLX-MICRO` `vigente` O vendedor gera um PDF da apresentação e o envia ao cliente pelo próprio ERP, com o e-mail corporativo. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02267]_

### FIN · Financeiro (15)

- `UNI-00005.01` `FLX-MICRO` `proposto` `conf:media` A IA junta a planilha de custos validada pela Carol com a planilha do Audiovisual (modelo padrão do Christian, AUD-E11) e gera uma previsão orçamentária única do projeto. _[DOC-091 · §5 Custos, previsão orçamentária do projeto (AUD-E11); §25 item 4 · ITM-01828 · parte de UNI-00005]_
- `UNI-00383.01` `FLX-MICRO` `vigente` Validação da Maitê: ela analisa a proposta de operação e montagem da IA e valida ou pede alteração. _[DOC-091 · §5 Custos, CUS-E6; novo fluxo de Custos com IA, passo 4 · ITM-01817 · parte de UNI-00383]_
  - **Decisão (Ver decisão do item 19):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- `UNI-00386` `FLX-MICRO` `proposto` Financeiro (Maitê e Diego) valida o novo preço da V2 ao receber o aviso. _[DOC-009 · CUS-E10 · ITM-00218]_
- `UNI-00390` `FLX-MICRO` `proposto` Maitê e Diego validam o preço do adicional e o Anderson elabora a proposta e a devolve ao Comercial, cada etapa em até 2 dias. _[DOC-009 · CUS-E17 e E18 · ITM-00226]_
- `UNI-00392` `FLX-MICRO` `proposto` `conf:media` Comanda de logística e equipe: mão de obra, dias de produção, viagem e montagem, alimentação, combustível, hotéis, fretes e transportes. _[DOC-010 · FIN-E4 · ITM-00242]_
- `UNI-00394` `FLX-MICRO` `proposto` Financeiro confere notas, compras, pagamentos e vencimentos: nota não emitida, compra não concluída, pagamento pendente e prazo vencendo. _[DOC-010 · FIN-E11 · ITM-00251]_
- `UNI-00395.01` `FLX-MICRO` `vigente` Pagamento de projetistas, passos 4 e 5: a Maitê valida o valor e depois efetua o pagamento. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas; §5 Financeiro, FIN-E13 · ITM-02045 · parte de UNI-00395]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.01` `FLX-MICRO` `vigente` Financeiro: a IA gera a minuta do contrato no modelo padrão e aponta os pontos duvidosos; a Maitê valida cada ponto e libera. _[DOC-091 · §5 Financeiro, FIN-E2; Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-01731 · parte de UNI-00751]_
- `UNI-00751.04` `FLX-MICRO` `vigente` Pagamento de projetistas, passo 1: a Érika estima as horas do projeto no sistema; vale para todos os projetistas e freelancers. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas, passo 1 · ITM-02042 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.05` `FLX-MICRO` `vigente` Pagamento de projetistas, passo 2: ao concluir o projeto, a Érika lança as horas realizadas. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas, passo 2 · ITM-02043 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.06` `FLX-MICRO` `vigente` Pagamento de projetistas, passo 3: o sistema gera o valor a pagar a cada projetista pelo valor da hora dele. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas, passo 3 · ITM-02044 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-01502` `FLX-MICRO` `proposto` Financeiro: nota fiscal registrada no Portal. _[DOC-091 · §5 05 Financeiro, FIN-E10 · ITM-01742]_
- `UNI-01504` `FLX-MICRO` `decisao-diego` Financeiro: repasse aos projetistas, todos por hora; Érika estima as horas, ao concluir atualiza as realizadas, o sistema calcula o valor e a Maitê valida e paga. _[DOC-091 · §5 05 Financeiro, FIN-E13 · ITM-01746]_
  - **Decisão (Decidido por Diego):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-01519` `FLX-MICRO` `decisao-diego` `conf:media` Com o ok da Carol, o sistema notifica o Financeiro e a IA propõe à Maitê mão de obra, equipe, hospedagem, alimentação, frete e deslocamento, com base no histórico; os parâmetros são configuráveis. _[DOC-091 · §5 Novo fluxo de Custos com IA (31/10) · ITM-01816]_
  - **Decisão (Decidido por Diego):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- `UNI-01627` `FLX-MICRO` `vigente` Um formulário padrão por projeto registra quem trabalhou e gera uma ordem de compra, que o Financeiro valida e coloca no fluxo de pagamento semanal. _[DOC-091 · §Respostas Escala e pagamento das equipes terceirizadas · ITM-02068]_

### CMP · Compras (16)

- `UNI-00393` `FLX-MICRO` `substituido-parcial` Compras (Osmar) gera as listas e as ordens de compra a partir da comanda aprovada; no fluxo dos setores produtivos o pedido é gerado quando o material está formalizado com a quantidade correta. _[DOC-010 · FIN-E7 · ITM-00246]_
  - **Continua valendo:** Compras gera as ordens de compra a partir da comanda aprovada, e o Financeiro confere.
  - **Mudou:** A comanda nasce da pré-comanda automática (item-21); o comprador não vê o orçado (ponto-2).
  - Requisitos separados deste item: `UNI-00393.01`, `UNI-00393.02`, `UNI-00393.03`
- `UNI-00393.01` `FLX-MICRO` `proposto` Financeiro: Compras (Osmar) gera as ordens de compra e o Financeiro confere. _[DOC-091 · §5 Financeiro, FIN-E7; Respostas do Diego, Compras cotação · ITM-01738 · parte de UNI-00393]_
- `UNI-00393.02` `FLX-MICRO` `proposto` Compras: gera a ordem de compra da unidade. _[DOC-091 · §5 Compras, CMP-E3 · ITM-01754 · parte de UNI-00393]_
- `UNI-00393.03` `FLX-MICRO` `a-conferir` A ordem de compra nasce da pré-comanda aprovada, já comparando comprado e orçado item a item, com a pesquisa paralela de preços. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, item 7; §16 Compras, pesquisa paralela · ITM-02303 · parte de UNI-00393]_
  - **Decisão (Ver decisão do ponto 2):** O comprador não vê o valor orçado. O sistema compara orçado e comprado sem mostrar o orçado a ele. **Em aberto:** Quem vê o resultado dessa comparação. Quem aprova depois do alerta de preço. Registro: `REGISTROS/decisao__20261104-1855-compras-sem-orcado-7vi7.md`
- `UNI-00597.01` `FLX-MICRO` `proposto` `conf:media` Compras: a comanda aprovada pelo Financeiro (FIN-E6) vai para Compras da unidade de produção do projeto. _[DOC-091 · §5 Compras, CMP-E1 · ITM-01752 · parte de UNI-00597]_
- `UNI-00752.01` `FLX-MICRO` `vigente` Compras: cotação com os fornecedores do cadastro da unidade, escolhendo a opção mais barata e registrando as cotações. _[DOC-091 · §5 Compras, CMP-E2; Respostas do Diego, Compras cotação (FIN-E7) · ITM-01753 · parte de UNI-00752]_
- `UNI-00752.02` `FLX-MICRO` `proposto` Toda ordem de compra aprovada pela Maitê entra automaticamente numa lista de chegada de materiais por unidade, em ordem de data e horário. _[DOC-091 · §5 Compras, agenda de chegada de materiais · ITM-01762 · parte de UNI-00752]_
- `UNI-00752.06` `FLX-MICRO` `proposto` `conf:media` Todo dia de manhã um agente de IA gera, por unidade, a planilha que concilia as saídas previstas da Expedição com as chegadas de material do dia. _[DOC-091 · §5 Compras, planilha de conciliação diária · ITM-01769 · parte de UNI-00752]_
- `UNI-00752.07` `FLX-MICRO` `vigente` Cotação de compras: usa os fornecedores do histórico e escolhe a opção mais barata. _[DOC-091 · Respostas do Diego, Compras cotação (FIN-E7) · ITM-02076 · parte de UNI-00752]_
- `UNI-00752.08` `FLX-MICRO` `proposto` Em paralelo à cotação do comprador (CMP-E2), o sistema faz pesquisa automática de preços em três fontes: histórico, cotação automática e internet. _[DOC-091 · §16 Compras, pesquisa paralela de preços · ITM-02214 · parte de UNI-00752]_
- `UNI-00752.10` `FLX-MICRO` `proposto` Cotação automática: ao nascer a comanda o sistema pede preço por e-mail ou WhatsApp a três ou mais fornecedores cadastrados da unidade, e as respostas entram no sistema. _[DOC-091 · §16 Compras, pesquisa paralela de preços, fonte 2 · ITM-02216 · parte de UNI-00752]_
- `UNI-00752.11` `FLX-MICRO` `proposto` Pesquisa na internet: agente de IA busca o mesmo material em lojas online e distribuidores e traz o menor preço com frete. _[DOC-091 · §16 Compras, pesquisa paralela de preços, fonte 3 · ITM-02217 · parte de UNI-00752]_
- `UNI-01505` `FLX-MICRO` `proposto` Compras: compra feita e entrega acompanhada. _[DOC-091 · §5 Compras, CMP-E5 · ITM-01758]_
- `UNI-01506` `FLX-MICRO` `proposto` Compras: nota fiscal no sistema (FIN-E10). _[DOC-091 · §5 Compras, CMP-E6 · ITM-01759]_
- `UNI-01556` `FLX-MICRO` `substituido-parcial` `conf:media` Com contrato assinado e previsão aprovada, o sistema converte a planilha de custos, item a item pelo mesmo código, em pré-comanda separada pela unidade de produção (RS ou SP), com materiais, quantidades e valores previstos. _[DOC-091 · §25 Base de compras automática (novo) · ITM-02300]_
  - **Continua valendo:** O sistema converte a planilha de custos, item a item pelo mesmo código, em pré-comanda separada pela unidade de produção.
  - **Mudou:** O comprador não vê os valores previstos (ponto-2); toda comanda passa pelo Financeiro (ponto-3). O que pode acontecer entre o aceite e o contrato está em aberto (ponto-1).
- `UNI-01559` `FLX-MICRO` `vigente` O item a comprar pronto entra na base de compras (pré-comanda) da unidade. _[DOC-091 · §25 Item a comprar pronto · ITM-02309]_

### PLA · Planejamento de produção (19)

- `UNI-00402` `FLX-MICRO` `vigente` Planejamento, PLA-E2: puxa do Portal o cronograma de produção pré-definido, que é um modelo padrão para editar. _[DOC-012 · PLA-E2 · ITM-00297]_
- `UNI-00403` `FLX-MICRO` `vigente` Planejamento, PLA-E3: Érika monta o cronograma reverso, da data da feira para trás, com as datas de corte de cada etapa e de cada setor. _[DOC-012 · PLA-E3 · ITM-00298]_
- `UNI-00404` `FLX-MICRO` `vigente` Planejamento, PLA-E4: confirma o projeto e publica o cronograma macro no Portal. _[DOC-012 · PLA-E4 · ITM-00299]_
- `UNI-00405` `FLX-MICRO` `vigente` Planejamento, PLA-E6: decupa os itens e subitens do cronograma a partir do memorial e da prancha de amostras, indicando os setores que receberão cada item. _[DOC-012 · PLA-E6 · ITM-00301]_
- `UNI-00406` `FLX-MICRO` `vigente` Planejamento, PLA-E7: pede a Projetos o detalhamento técnico, com prazo de 3 dias. _[DOC-012 · PLA-E7 · ITM-00302]_
- `UNI-00407` `FLX-MICRO` `vigente` Planejamento, PLA-E9: reunião de produção com Érika, Eduardo, Marília, produção, arquiteto e comercial, realizada 2 dias depois do detalhamento. _[DOC-012 · PLA-E9 · ITM-00304]_
- `UNI-00408` `FLX-MICRO` `vigente` Planejamento, PLA-E10: a IA gera a ata da reunião a partir da gravação, com o que está conforme, dúvidas e observações a validar com o cliente. _[DOC-012 · PLA-E10 · ITM-00305]_
- `UNI-00409` `FLX-MICRO` `vigente` Planejamento, PLA-E12: a Produção (Marília) gera as fichas técnicas e as listas de materiais por IA no Portal, a partir do detalhamento. _[DOC-012 · PLA-E12 · ITM-00307]_
  - Requisitos separados deste item: `UNI-00409.01`, `UNI-00409.02`, `UNI-00409.03`
- `UNI-00409.01` `FLX-MICRO` `proposto` Planejamento, etapa PLA-E12: a Marília gera as fichas e as listas por IA, em cerca de 5 dias. _[DOC-091 · §5 Planejamento, PLA-E12; §7 Prazos (SLAs) · ITM-01888 · parte de UNI-00409]_
  - **Decisão (Ver decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00409.02` `FLX-MICRO` `proposto` Para item a produzir, o sistema gera automaticamente a ficha técnica de produção com o mesmo código (material, medidas, quantidade, setores da cadência), enviada ao Planejamento e à produção da unidade. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, destino de cada item, item a produzir · ITM-02306 · parte de UNI-00409]_
  - **Decisão (Ver decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00409.03` `FLX-MICRO` `proposto` A ficha técnica de cada item a produzir sai do detalhamento técnico, compilada pelo mesmo código do item. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, da ficha técnica à baixa, origem · ITM-02315 · parte de UNI-00409]_
  - **Decisão (Ver decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00410` `FLX-MICRO` `vigente` Planejamento, PLA-E13: Eduardo prevê o tempo de cada ficha técnica, com complexidade e tempo por grupo de itens e por setor. _[DOC-012 · PLA-E13 · ITM-00308]_
  - Requisitos separados deste item: `UNI-00410.01`
- `UNI-00410.01` `FLX-MICRO` `proposto` Planejamento, etapa PLA-E13: o Eduardo prevê o tempo de cada ficha, em 2 dias. _[DOC-091 · §5 Planejamento, PLA-E13; §7 Prazos (SLAs) · ITM-01889 · parte de UNI-00410]_
- `UNI-00411` `FLX-MICRO` `vigente` Planejamento, PLA-E14: Érika monta o cronograma interno de produção com o vencimento de cada ficha em cada setor, em cadência (ex.: serralheria antes da pintura). _[DOC-012 · PLA-E14 · ITM-00309]_
- `UNI-00412` `FLX-MICRO` `vigente` Planejamento, PLA-E15: Érika publica o cronograma de produção, para que todos os setores vejam as suas datas. _[DOC-012 · PLA-E15 · ITM-00310]_
- `UNI-00617` `FLX-MICRO` `vigente` `conf:media` Cadência ilustrativa: serralheria entrega a estrutura 1 a 2 dias antes da pintura, depois marcenaria, e por fim qualidade e expedição, com datas do cronograma interno. _[DOC-012 · §05 Exemplo de cadência · ITM-00337]_
- `UNI-01530` `FLX-MICRO` `a-conferir` Planejamento, etapa PLA-E1: a Érika recebe o projeto fechado (memorial, prancha de amostras e formalização) e define a unidade de produção, Rio Grande do Sul ou São Paulo. _[DOC-091 · §5 07 Planejamento, PLA-E1 · ITM-01873]_
  - **Atenção (leitura do Claude):** item 8: Cita "formalização" no recebimento do projeto. Pode ser o contrato; o texto não diz.
- `UNI-01531` `FLX-MICRO` `proposto` Planejamento, etapa PLA-E11: o Comercial resolve as pendências com o cliente. _[DOC-091 · §5 07 Planejamento, PLA-E11 · ITM-01886]_
- `UNI-01674` `FLX-MICRO` `vigente` `conf:media` A Imagine produz no Rio Grande do Sul e em São Paulo; no PLA-E1 a Érika aponta onde o projeto será produzido. _[DOC-091 · §Respostas Unidade de produção · ITM-02054]_

### CRD · Credenciamento (16)

- `UNI-00413` `FLX-MICRO` `vigente` Credenciamento, PLA-E17: monta a pasta da feira, pedindo o manual ao Comercial ou ao cliente e levantando documentos e aprovações exigidos. _[DOC-012 · PLA-E17 · ITM-00312]_
  - Requisitos separados deste item: `UNI-00413.01`
- `UNI-00413.01` `FLX-MICRO` `proposto` Planejamento, etapa PLA-E17: o Credenciamento monta a pasta. _[DOC-091 · §5 Planejamento, PLA-E17 · ITM-01893 · parte de UNI-00413]_
- `UNI-00417` `FLX-MICRO` `proposto` O Portal notifica o Credenciamento com cliente, evento e prazos da feira, já com o passo a passo do setor, e gera o formulário do evento (cliente, evento, prazos da feira, informações úteis). _[DOC-013 · CRD-E1 · ITM-00354]_
- `UNI-00418` `FLX-MICRO` `proposto` Credenciamento, CRD-E2: abre a pasta do projeto no Portal, com os projetos e as informações do projeto da Imagine. _[DOC-013 · CRD-E2 · ITM-00355]_
- `UNI-00419` `FLX-MICRO` `proposto` Credenciamento, CRD-E3: coleta os dados cadastrais do cliente (razão social, CNPJ, endereço e contatos). _[DOC-013 · CRD-E3 · ITM-00356]_
- `UNI-00420` `FLX-MICRO` `proposto` Credenciamento, CRD-E4: pede ao cliente o acesso (login e senha) ao portal do expositor da feira. _[DOC-013 · CRD-E4 · ITM-00357]_
- `UNI-00421` `FLX-MICRO` `proposto` Credenciamento, CRD-E5: acessa o portal do expositor e levanta a lista de documentos exigidos, regras e prazos da feira. _[DOC-013 · CRD-E5 · ITM-00358]_
- `UNI-00422` `FLX-MICRO` `proposto` Credenciamento, CRD-E6: o Portal gera o checklist obrigatório com as exigências da feira mais os documentos básicos que a Imagine sempre emite. _[DOC-013 · CRD-E6 · ITM-00359]_
- `UNI-00423` `FLX-MICRO` `proposto` Credenciamento, CRD-E7: compatibiliza na aba do setor o cronograma macro da Imagine (SET07) com o cronograma da feira. _[DOC-013 · CRD-E7 · ITM-00360]_
- `UNI-00424` `FLX-MICRO` `proposto` Credenciamento, CRD-E9: o responsável devolve o documento pelo Portal e ele entra no item correspondente do checklist. _[DOC-013 · CRD-E9 · ITM-00362]_
- `UNI-00425` `FLX-MICRO` `proposto` Credenciamento, CRD-E10: elabora os documentos próprios, como termo de responsabilidade e formulários da feira. _[DOC-013 · CRD-E10 · ITM-00363]_
- `UNI-00426` `FLX-MICRO` `proposto` Credenciamento, CRD-E12: o jurídico-financeiro confere todos os documentos, com a Maitê supervisionando e dirigindo o setor. _[DOC-013 · CRD-E12 · ITM-00365]_
  - Requisitos separados deste item: `UNI-00426.01`
- `UNI-00426.01` `FLX-MICRO` `vigente` Credenciamento, etapa CRD-E12: um agente de IA confere cada documento contra os padrões da Maitê e a notifica com a lista de conformes e não conformes. _[DOC-091 · Respostas do Diego, Conferência do Credenciamento (CRD-E12); §5 Credenciamento, CRD-E12 · ITM-01913 · parte de UNI-00426]_
- `UNI-00427` `FLX-MICRO` `proposto` Credenciamento, CRD-E14: publica o projeto e os documentos no portal da feira, dentro dos prazos do cronograma compatibilizado. _[DOC-013 · CRD-E14 · ITM-00367]_
- `UNI-00428` `FLX-MICRO` `proposto` Credenciamento, CRD-E16: salva a pasta final no Portal (credenciais, documentos e projeto aprovado), que a Montagem apresenta no CAEX (MON-E2 e E3). _[DOC-013 · CRD-E16 · ITM-00369]_
- `UNI-01617` `FLX-MICRO` `vigente` Credenciar a equipe de AV: o Christian preenche o formulário de deslocamento e o encaminha à Alexandra com a lista e os dados da equipe terceirizada, notificando também o Financeiro. _[DOC-091 · §Respostas Audiovisual (credenciamento) · ITM-01958]_

### PRD · Produção e app dos setores (10)

- `UNI-00429` `FLX-MICRO` `vigente` Setores produtivos, PRD-E1: o Portal notifica o setor da demanda; o líder recebe no app, com o código do projeto e de cada item. _[DOC-014 · PRD-E1 · ITM-00394]_
- `UNI-00430` `FLX-MICRO` `vigente` Setores produtivos, PRD-E2: reunião obrigatória de apresentação das fichas técnicas e do projeto ao setor, registrada no Portal. _[DOC-014 · PRD-E2 · ITM-00395]_
- `UNI-00432` `FLX-MICRO` `a-conferir` `conf:media` O Portal compara a solicitação de materiais do setor com a comanda e o custo, previsto versus pedido, item a item, cruzando as comandas com a planilha de custos (FIN-E5). _[DOC-014 · PRD-E4 · ITM-00397]_
  - **Atenção (leitura do Claude):** item 21: Compara a solicitação do setor com a comanda. Pode ainda valer para os ajustes.
- `UNI-00443` `FLX-MICRO` `vigente` Setores produtivos, PRD-E7: programação do setor no app, com data de chegada de cada material e data de cada ficha, já definidas pelo Planejamento. _[DOC-014 · PRD-E7 · ITM-00418]_
- `UNI-00444` `FLX-MICRO` `vigente` Com a ficha pronta, o líder do setor registra no app da produção, lendo o QR code, a conclusão com foto e qualidade ok ou com erro; no dashboard de produção a pizza fica verde a cada ficha concluída. _[DOC-014 · PRD-E8 · ITM-00419]_
  - Requisitos separados deste item: `UNI-00444.01`, `UNI-00444.02`
- `UNI-00444.01` `FLX-MICRO` `proposto` A ficha é impressa em papel para cada setor (pintura, marcenaria, serralheria e demais), com o código e um QR code. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, da ficha técnica à baixa, ficha impressa · ITM-02316 · parte de UNI-00444]_
- `UNI-00444.02` `FLX-MICRO` `proposto` Ao concluir a etapa, o operador fotografa o item pronto junto com a ficha; o sistema lê o QR code e o código na foto e vincula a foto à ficha e ao item. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, da ficha técnica à baixa, foto e identificação · ITM-02317 · parte de UNI-00444]_
- `UNI-00445` `FLX-MICRO` `vigente` Setores produtivos, PRD-E10: ficha concluída segue para o controle de qualidade e a Expedição com foto e ok de qualidade (EXP-E1 a E3). _[DOC-014 · PRD-E10 · ITM-00421]_
- `UNI-00605.01` `FLX-MICRO` `proposto` `conf:media` O operador dá o ok no app, a etapa do setor fica concluída e a ficha segue para o próximo setor da cadência. _[DOC-091 · §25 Integração automática do projeto, da ficha técnica à baixa na produção, passo 4; §5 Planejamento, PLA-E19 · ITM-02319 · parte de UNI-00605]_
- `UNI-01557` `FLX-MICRO` `decisao-diego` Os setores produtivos só conferem e ajustam a pré-comanda, o que substitui a listagem manual do FIN-E3. _[DOC-091 · §25 Conferência dos setores · ITM-02301]_
  - **Decisão (Decidido por Diego):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`

### CVI · Comunicação visual (8)

- `UNI-00433` `FLX-MICRO` `vigente` Comunicação visual, CVI-E1: o cliente publica os arquivos (logos, artes, imagens do stand) na área de arquivos da aba do cliente. _[DOC-014 · CVI-E1 · ITM-00401]_
- `UNI-00434` `FLX-MICRO` `vigente` Comunicação visual, CVI-E2: a IA verifica a qualidade dos arquivos (formato, resolução, cor, medidas, sangria e fontes) para ver se estão aptos a imprimir. _[DOC-014 · CVI-E2 · ITM-00402]_
  - Requisitos separados deste item: `UNI-00434.01`
- `UNI-00434.01` `FLX-MICRO` `proposto` Comunicação visual, etapa CVI-E2: a IA confere formato, resolução, cor, medidas, sangria, fontes e corte. _[DOC-091 · §5 Setores produtivos, CVI-E2 · ITM-01931 · parte de UNI-00434]_
- `UNI-00435` `FLX-MICRO` `vigente` Comunicação visual, CVI-E4 e E5: formatação dos arquivos para impressão e para corte. _[DOC-014 · CVI-E4 e CVI-E5 · ITM-00404]_
- `UNI-00436` `FLX-MICRO` `vigente` Comunicação visual, CVI-E6: prova enviada ao cliente para validação pela aba do cliente. _[DOC-014 · CVI-E6 · ITM-00405]_
- `UNI-00484` `FLX-MICRO` `vigente` Sequência de setores da peça: comunicação visual (corte e montagem), elétrica (LED e fonte), teste de acendimento e expedição (embalagem e etiqueta). _[DOC-020 · Seção 04 Sequência de setores · ITM-00582]_
- `UNI-01568` `FLX-MICRO` `vigente` `conf:media` A Carol abre a solicitação no ERP ligada ao item e ao código (com a letra da arte), para preparar arquivo para impressão, criar faca de corte em vetor, corrigir arquivo do cliente com erro ou preparar materiais gráficos. _[DOC-091 · §38 Criação Gráfica, Demandas · ITM-02416]_
- `UNI-01656` `FLX-MICRO` `vigente` As fichas de comunicação visual são geradas depois do contrato, junto com as demais fichas, a partir do detalhamento técnico e com o mesmo código. _[DOC-091 · §27 Ficha técnica de comunicação visual · ITM-02340]_

### AUD · Audiovisual (10)

- `UNI-00437` `FLX-MICRO` `vigente` Audiovisual, AUD-E1 e E2: analisa o projeto (telas, som, luz e imagem) e alinha com o cliente o objetivo de uso e o modo de operar dos equipamentos. _[DOC-014 · AUD-E1 e AUD-E2 · ITM-00410]_
  - Requisitos separados deste item: `UNI-00437.01`
- `UNI-00437.01` `FLX-MICRO` `proposto` Audiovisual, etapa AUD-E1: análise do projeto pelo Christian, depois da abertura automática da demanda (AUD-E0). _[DOC-091 · §5 Setores produtivos, AUD-E1 · ITM-01937 · parte de UNI-00437]_
- `UNI-00438` `FLX-MICRO` `vigente` Audiovisual, AUD-E3: pré-ajusta o rider técnico de equipamentos, que é o pedido de material do setor (PRD-E3). _[DOC-014 · AUD-E3 · ITM-00411]_
- `UNI-00439` `FLX-MICRO` `vigente` Audiovisual, AUD-E4: conferência de medidas com a equipe de montagem por checklist com foto de cada item, compatível com os outros setores do stand. _[DOC-014 · AUD-E4 · ITM-00412]_
- `UNI-00440` `FLX-MICRO` `vigente` Audiovisual, AUD-E6 e E7: envia ao cliente as fichas técnicas dos equipamentos (resolução, proporção, formato) e o cliente produz e publica os conteúdos na aba do cliente. _[DOC-014 · AUD-E6 e AUD-E7 · ITM-00414]_
- `UNI-00441` `FLX-MICRO` `vigente` Audiovisual, AUD-E8: testa os conteúdos do cliente quanto a qualidade e resolução nos equipamentos. _[DOC-014 · AUD-E8 · ITM-00415]_
- `UNI-00442` `FLX-MICRO` `vigente` Audiovisual, AUD-E10: organiza e programa os arquivos nos equipamentos, que entram como itens do checklist de montagem e entrega (MON-E5 e MON-E8). _[DOC-014 · AUD-E10 · ITM-00417]_
- `UNI-01532` `FLX-MICRO` `proposto` Audiovisual, etapa AUD-E0: a demanda é aberta automaticamente quando o Planejamento identifica equipamento de AV (PLA-E6), e o sistema notifica o Christian. _[DOC-091 · §5 09 Audiovisual, AUD-E0 · ITM-01951]_
- `UNI-01533` `FLX-MICRO` `vigente` Audiovisual, etapa AUD-E11: planejamento financeiro, que define estoque ou sublocação e planeja frete dos equipamentos com Eduardo (RS) ou Samanta (SP). _[DOC-091 · §5 09 Audiovisual, AUD-E11; §Respostas · ITM-01952]_
- `UNI-01534` `FLX-MICRO` `vigente` Audiovisual, etapa AUD-E12: o Christian valida a planilha de custos do AV com o Financeiro. _[DOC-091 · §5 09 Audiovisual, AUD-E12; §Respostas · ITM-01954]_

### DCO · Decoração (2)

- `UNI-01566` `FLX-MICRO` `vigente` Quando o projeto tem itens de decoração, o sistema abre a demanda do setor de Decoração, com o mesmo código único e prazos do cronograma reverso. _[DOC-091 · §37 Decoração, Demanda automática · ITM-02409]_
- `UNI-01567` `FLX-MICRO` `vigente` Cada item de decoração segue com QR code, foto e ok em produção, montagem decorativa, embalagem, expedição e montagem no local, com atenção especial à embalagem de itens frágeis. _[DOC-091 · §37 Decoração, Checklist até a montagem · ITM-02413]_

### D3F · Impressão 3D (3)

- `UNI-01563` `FLX-MICRO` `vigente` O tempo de impressão de cada peça entra no cronograma de produção, com a fila de cada impressora, para o Planejamento ver capacidade e prazos. _[DOC-091 · §36 Impressão 3D, Planejamento · ITM-02399]_
- `UNI-01564` `FLX-MICRO` `vigente` A peça 3D segue o roadmap com QR code, foto e ok em cada etapa: impressão, acabamento, expedição e montagem. _[DOC-091 · §36 Impressão 3D, Checklist até a montagem · ITM-02400]_
- `UNI-01565` `FLX-MICRO` `vigente` O consumo de filamento por projeto alimenta a planilha de custos e a lista de compra de material. _[DOC-091 · §36 Impressão 3D, Custos e compras · ITM-02401]_

### TIN · Tecnologia e experiências interativas (13)

- `UNI-00333` `FLX-MICRO` `proposto` Fase 0: a demanda é aberta no ERP a partir do projeto, com código do projeto e data do evento; prazos das fases são calculados de trás para frente a partir da instalação. _[DOC-004 · Fase 0 Entrada da demanda · ITM-00086]_
  - Requisitos separados deste item: `UNI-00333.01`
- `UNI-00333.01` `FLX-MICRO` `proposto` `conf:media` Quando o projeto prevê uma experiência interativa, o sistema abre a demanda ao Bruno, com prazo pelo cronograma reverso. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, fase 0 · ITM-02422 · parte de UNI-00333]_
- `UNI-00334` `FLX-MICRO` `proposto` Fase 1: briefing técnico com perguntas obrigatórias sobre objetivo, usuário, jornada, dados coletados, destino da informação, identidade visual, duração, volume diário e internet no local com plano B. _[DOC-004 · Fase 1 Descoberta · ITM-00088]_
- `UNI-00335` `FLX-MICRO` `proposto` Fase 2: proposta traz escopo, cronograma por fase, custos (horas, ferramentas, APIs, hospedagem, equipamentos) e riscos, e precisa de aprovação do Comercial e do Diego antes de ir ao cliente. _[DOC-004 · Fase 2 Proposta · ITM-00089]_
- `UNI-00336` `FLX-MICRO` `proposto` Fase 3: fluxo do usuário tela por tela, wireframe e layout final, textos de cada tela e tela de consentimento (LGPD e uso de imagem) quando houver coleta; cliente aprova pelo Portal. _[DOC-004 · Fase 3 Desenho da experiência · ITM-00090]_
- `UNI-00337` `FLX-MICRO` `proposto` Fase 5: código versionado em repositório da empresa, ambiente de teste separado, entregas parciais semanais com vídeo curto e status atualizado no ERP. _[DOC-004 · Fase 5 Desenvolvimento · ITM-00093]_
- `UNI-00338` `FLX-MICRO` `proposto` Fase 6: testes de fluxo completo, celulares e navegadores, carga, sem internet, consentimento e exclusão de dados, e no equipamento real antes de embalar; relatório anexado no ERP. _[DOC-004 · Fase 6 Testes · ITM-00094]_
- `UNI-00339` `FLX-MICRO` `proposto` Fase 7: publicação com domínio, SSL e métricas, ou instalação de totem com teste final com o produtor de montagem; foto e vídeo anexados no ERP e manual rápido para o cliente. _[DOC-004 · Fase 7 Publicação ou instalação · ITM-00095]_
- `UNI-00340` `FLX-MICRO` `proposto` Fase 8: monitoramento diário de funcionamento e uso, contato de suporte com produtor de montagem e cliente, e plano de contingência para queda de internet, tela ou integração. _[DOC-004 · Fase 8 Operação no evento · ITM-00096]_
- `UNI-00341` `FLX-MICRO` `proposto` Fase 9: relatório de uso enviado pelo Comercial, entrega de dados ao cliente conforme LGPD, desligamento ou manutenção conforme contrato e exclusão dos dados pessoais no prazo combinado. _[DOC-004 · Fase 9 Encerramento · ITM-00097]_
- `UNI-00342` `FLX-MICRO` `proposto` Fase 10: a solução é registrada com nome, descrição, mídia, ferramentas, custo real e tempo, com indicação de reaproveitamento e sugestão de preço como adicional. _[DOC-004 · Fase 10 Biblioteca de soluções · ITM-00098]_
  - Requisitos separados deste item: `UNI-00342.01`
- `UNI-00342.01` `FLX-MICRO` `proposto` `conf:media` Cada aplicação desenvolvida fica registrada para ser reaproveitada e oferecida em novos projetos como adicional. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, fase 10 · ITM-02427 · parte de UNI-00342]_
- `UNI-00757.02` `FLX-MICRO` `proposto` Ao abrir a demanda, a IA lê o briefing e propõe o caminho técnico (ferramentas, integrações, soluções já feitas, prazo, custo e riscos), seguindo o passo a passo PLANDEM_TEC-001. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, assistente técnico da IA · ITM-02428 · parte de UNI-00757]_

### ALM · Almoxarifado (5)

- `UNI-01511` `FLX-MICRO` `proposto` Almoxarifado, entrada: o material comprado entra no estoque quando a chegada é baixada no app, pela agenda de chegadas. _[DOC-091 · §5 Almoxarifado, ALM-E1 · ITM-01775]_
- `UNI-01512` `FLX-MICRO` `proposto` Almoxarifado, saída: cada retirada é registrada no app com material, quantidade, projeto e setor que retirou. _[DOC-091 · §5 Almoxarifado, ALM-E2 · ITM-01776]_
- `UNI-01513` `FLX-MICRO` `proposto` Almoxarifado: um agente de IA compara a lista de compras com a de consumo e calcula o saldo de cada item. _[DOC-091 · §5 Almoxarifado, ALM-E3 · ITM-01777]_
- `UNI-01515` `FLX-MICRO` `proposto` Almoxarifado: os itens marcados sim viram solicitação de compra de reposição para Compras da unidade, seguindo o fluxo normal com aprovação da Maitê. _[DOC-091 · §5 Almoxarifado, ALM-E6 · ITM-01780]_
- `UNI-01560` `FLX-MICRO` `vigente` O item de estoque é reservado no almoxarifado da unidade, com baixa na saída. _[DOC-091 · §25 Item de estoque · ITM-02310]_

### EXP · Expedição e qualidade (10)

- `UNI-00446` `FLX-MICRO` `proposto` Expedição, EXP-E2: recebe a peça e lê o QR code, conferindo código, nome e projeto. _[DOC-015 · EXP-E2 · ITM-00444]_
- `UNI-00447` `FLX-MICRO` `a-conferir` Expedição, EXP-E3: nova verificação de qualidade, com foto da peça e check de ok no sistema. _[DOC-015 · EXP-E3 · ITM-00445]_
  - **Atenção (leitura do Claude):** item 22: Coloca a verificação de qualidade dentro da Expedição. Pode ser uma segunda conferência.
- `UNI-00448` `FLX-MICRO` `proposto` Expedição, EXP-E5: embala a peça para protegê-la até a montagem. _[DOC-015 · EXP-E5 · ITM-00447]_
- `UNI-00449` `FLX-MICRO` `proposto` Expedição, EXP-E6: o Portal gera a etiqueta de expedição com código, nome do produto, foto legível da peça e QR code. _[DOC-015 · EXP-E6 · ITM-00448]_
  - Requisitos separados deste item: `UNI-00449.01`, `UNI-00449.02`
- `UNI-00449.01` `FLX-MICRO` `proposto` Expedição, etapa EXP-E6: etiqueta gerada, com proposta de tamanho de 10 × 15 cm. _[DOC-091 · §5 Expedição, EXP-E6 · ITM-01965 · parte de UNI-00449]_
- `UNI-00449.02` `FLX-MICRO` `vigente` A Expedição cola a etiqueta final, com código, nome, foto e QR code. _[DOC-091 · Respostas do Diego, Etiquetas; §5 Expedição, EXP-E7 · ITM-02037 · parte de UNI-00449]_
- `UNI-00450` `FLX-MICRO` `proposto` Expedição, EXP-E7: cola a etiqueta na embalagem para identificar a peça sem desembalar. _[DOC-015 · EXP-E7 · ITM-00449]_
- `UNI-00451` `FLX-MICRO` `proposto` Expedição, EXP-E8: carregamento com leitura do QR code de cada volume, para controlar o que sobe no caminhão. _[DOC-015 · EXP-E8 · ITM-00450]_
- `UNI-00452` `FLX-MICRO` `proposto` Expedição, EXP-E9: o Portal confere carregado versus previsto pela lista de itens do projeto e aponta o que falta antes de sair (inferido). _[DOC-015 · EXP-E9 · ITM-00451]_
  - Requisitos separados deste item: `UNI-00452.01`
- `UNI-00453` `FLX-MICRO` `proposto` `conf:media` Pavilhão, EXP-E10: peças descarregadas no pavilhão ficam organizadas e ainda embaladas. _[DOC-015 · EXP-E10 · ITM-00452]_

### LOG · Logística e frota (6)

- `UNI-00009.01` `FLX-MICRO` `proposto` Frota: a quilometragem de cada veículo é lançada no app, pelo seu Marcos no Rio Grande do Sul e pelo assistente do Rômulo em São Paulo. _[DOC-091 · §5 Frota, FRT-E2 · ITM-01786 · parte de UNI-00009]_
- `UNI-00009.05` `FLX-MICRO` `proposto` Verba de viagem (combustível, pedágio e estacionamento): solicitada no app pelos solicitantes de cada unidade, validada e liberada pelo Financeiro. _[DOC-091 · §5 Frota, FRT-E6 · ITM-01795 · parte de UNI-00009]_
- `UNI-00009.06` `FLX-MICRO` `proposto` Verba de viagem: o solicitante anexa as notas fiscais de combustível, pedágio e estacionamento e um agente de IA compara o valor liberado com o realizado. _[DOC-091 · §5 Frota, FRT-E6 passos 3 e 4 · ITM-01798 · parte de UNI-00009]_
- `UNI-00789.05` `FLX-MICRO` `proposto` `conf:media` A estimativa de carga preenche o formulário de frete do Eduardo (RS) ou da Samanta (SP) e ajuda a Expedição a planejar o carregamento. _[DOC-091 · §31 Estimativa de volume de carga por projeto · ITM-02361 · parte de UNI-00789]_
- `UNI-01517` `FLX-MICRO` `proposto` `conf:media` Verba de terceirizados: montadores terceirizados solicitam no app com usuário terceirizado, que só acessa a própria verba, seguindo FRT-E6 e FRT-E7. _[DOC-091 · §5 Frota, FRT-E8 · ITM-01807]_
- `UNI-01625` `FLX-MICRO` `vigente` O Eduardo (RS) e a Samanta (SP) cuidam do frete e preenchem o formulário de frete, que gera uma ordem de compra para o Financeiro (FIN-E7). _[DOC-091 · §Respostas Logística no Rio Grande do Sul (Setor 11) · ITM-02066]_

### MON · Montagem (15)

- `UNI-00006.01` `FLX-MICRO` `proposto` `conf:media` Controle de devolução pelo produtor de montagem no app: data e hora de devolução, conferência com foto na chegada e na devolução, e registro de avarias com aviso à Érika (RS) ou Samanta (SP) e à Maitê. _[DOC-091 · §18 Locações, controle de devolução · ITM-02230 · parte de UNI-00006]_
- `UNI-00043.02` `FLX-MICRO` `proposto` `conf:media` Assinatura do termo: o validador do formulário pré-evento assina eletronicamente no app com autenticação própria, e o produtor de montagem assina pela Imagine. _[DOC-091 · §12 Experiência do cliente no Portal, termo de entrega oficial, assinatura · ITM-02176 · parte de UNI-00043]_
- `UNI-00454` `FLX-MICRO` `proposto` O montador localiza a peça pela foto da etiqueta, desembala só quando vai usar e lê o QR no app para registrar a peça desembalada e instalada. _[DOC-015 · EXP-E11 e EXP-E12 · ITM-00453]_
- `UNI-00455` `FLX-MICRO` `vigente` Montagem, MON-E1: Érika libera o acesso da equipe de montagem no app, por categoria, só para a equipe nomeada e escalada para a feira. _[DOC-016 · MON-E1 · ITM-00473]_
- `UNI-00456` `FLX-MICRO` `vigente` Montagem, MON-E2: encarregado, produtor ou coordenador retira as credenciais no CAEX, e a equipe só entra no pavilhão depois disso. _[DOC-016 · MON-E2 · ITM-00474]_
- `UNI-00457` `FLX-MICRO` `vigente` Montagem, MON-E3: apresenta pelo app os documentos e o projeto aprovado pela feira, com a pasta completa do Credenciamento no celular. _[DOC-016 · MON-E3 · ITM-00475]_
- `UNI-00458` `FLX-MICRO` `vigente` Montagem, MON-E5: item montado recebe ok clicável e foto no checklist do app, com os itens e códigos do memorial. _[DOC-016 · MON-E5 · ITM-00477]_
  - Requisitos separados deste item: `UNI-00458.01`
- `UNI-00459` `FLX-MICRO` `vigente` Montagem, MON-E7: o cliente acessa a aba do cliente com login e senha, vendo imagens do stand e o checklist do memorial descritivo. _[DOC-016 · MON-E7 · ITM-00480]_
- `UNI-00460` `FLX-MICRO` `vigente` Montagem, MON-E8: cliente e produtor conferem o stand item a item, com foto e ok em cada item. _[DOC-016 · MON-E8 · ITM-00481]_
- `UNI-00461` `FLX-MICRO` `vigente` Montagem, MON-E10: o Portal gera o termo de aceite de entrega do stand, assinado pelo cliente e enviado ao jurídico, ao financeiro e ao comercial. _[DOC-016 · MON-E10 · ITM-00483]_
  - Requisitos separados deste item: `UNI-00461.01`, `UNI-00461.02`
- `UNI-00462` `FLX-MICRO` `vigente` Montagem, MON-E11: o cliente abre um chamado na aba Plantão técnico (ex.: perdeu a chave do depósito, mover um móvel ou expositor). _[DOC-016 · MON-E11 · ITM-00484]_
- `UNI-00463` `FLX-MICRO` `vigente` Montagem, MON-E13: o plantonista executa o chamado no estande, tira a foto e conclui no app. _[DOC-016 · MON-E13 · ITM-00486]_
  - Requisitos separados deste item: `UNI-00463.01`
- `UNI-00464` `FLX-MICRO` `vigente` Montagem, MON-E15: desmontagem com o mesmo checklist de ok clicável e foto, separando as peças que voltam e as descartadas conforme o planejamento de produção. _[DOC-016 · MON-E15 · ITM-00488]_
- `UNI-00465` `FLX-MICRO` `vigente` Montagem, MON-E16: acessos encerrados pelo Planejamento ou retirados pelo Portal 5 dias após a desmontagem. _[DOC-016 · MON-E16 · ITM-00489]_
- `UNI-01616` `FLX-MICRO` `vigente` Na feira, o produtor de montagem marca o checklist com foto e atende os chamados de AV no app. _[DOC-091 · §Respostas Audiovisual técnico e operação · ITM-01957]_

### POS · Pós-feira (9)

- `UNI-00466` `FLX-MICRO` `proposto` Pós-feira, POS-E1: o Portal abre a aba Pós-feira com o dossiê do evento (relatórios, termo de aceite, ressalvas, chamados do plantão e observações do cliente). _[DOC-017 · POS-E1 · ITM-00510]_
- `UNI-00467` `FLX-MICRO` `proposto` Pós-feira, POS-E2: o responsável do pós-feira revisa o dossiê, apontando o que foi bem e o que teve ressalva ou retrabalho. _[DOC-017 · POS-E2 · ITM-00511]_
- `UNI-00468` `FLX-MICRO` `proposto` Pós-feira, POS-E3: o Portal envia a pesquisa de satisfação rápida por link sem login, por e-mail e WhatsApp, com cerca de 3 minutos para responder. _[DOC-017 · POS-E3 · ITM-00512]_
- `UNI-00469` `FLX-MICRO` `proposto` Pós-feira, POS-E5: respostas gravadas no histórico do cliente no Portal, visíveis ao vendedor na próxima venda. _[DOC-017 · POS-E5 · ITM-00514]_
- `UNI-00470` `FLX-MICRO` `proposto` Pós-feira, POS-E6: a IA analisa as respostas (notas por etapa, temas, palavras-chave e sentimento dos comentários). _[DOC-017 · POS-E6 · ITM-00515]_
- `UNI-00471` `FLX-MICRO` `proposto` Pós-feira, POS-E8: com nota 9 ou 10 o vendedor pede indicação ou autorização de case; depoimento só com autorização por escrito; notas 7 ou 8 seguem para o painel. _[DOC-017 · POS-E8 · ITM-00517]_
- `UNI-00472` `FLX-MICRO` `proposto` Pós-feira, POS-E9: o gerenciador de pesquisas atualiza o painel com NPS, nota por etapa, setor, vendedor e feira, e tendência mês a mês. _[DOC-017 · POS-E9 · ITM-00518]_
- `UNI-00473` `FLX-MICRO` `proposto` Pós-feira, POS-E10: reunião de melhoria em que a IA sugere os 3 pontos mais citados e a diretoria escolhe as prioridades. _[DOC-017 · POS-E10 · ITM-00519]_
- `UNI-00474` `FLX-MICRO` `proposto` Pós-feira, POS-E11 e E12: plano de ação 5W2H no Portal, com responsável, prazo e indicador, e medição do efeito na próxima rodada de pesquisas. _[DOC-017 · POS-E11 e POS-E12 · ITM-00520]_

### MKT · Marketing e acervo (13)

- `UNI-00012.06` `FLX-MICRO` `proposto` `conf:media` As collabs entram no plano de comunicação mensal, junto com os novos itens de upgrade. _[DOC-091 · §14 Projeto Collabs com marcas parceiras · ITM-02203 · parte de UNI-00012]_
- `UNI-00346` `FLX-MICRO` `proposto` Marketing gera as peças de cada canal na aba de montagem do Portal, já no formato técnico de cada canal. _[DOC-005 · PRO-E4 · ITM-00106]_
- `UNI-00475` `FLX-MICRO` `proposto` Marketing, MKT-E2 e E3: capta fotos e vídeos dos bastidores da produção (itens especiais, expertises) e da evolução da montagem. _[DOC-018 · MKT-E2 e MKT-E3 · ITM-00542]_
- `UNI-00476` `FLX-MICRO` `proposto` Marketing, MKT-E4: capta o evento como um todo (rua, pórtico, entrada, pavilhão e volta de drone) para mostrar complexidade e grandiosidade. _[DOC-018 · MKT-E4 · ITM-00543]_
- `UNI-00477` `FLX-MICRO` `proposto` Marketing, MKT-E5 e E6: fotos de portfólio e vídeo do stand pronto, limpo e sem pessoas, por fora, por dentro e em movimento. _[DOC-018 · MKT-E5 e MKT-E6 · ITM-00544]_
- `UNI-00478` `FLX-MICRO` `proposto` Marketing, MKT-E7: grava depoimento do cliente em vídeo sobre a experiência com a Imagine e a expectativa com o evento, com autorização de uso de imagem. _[DOC-018 · MKT-E7 · ITM-00545]_
- `UNI-00479` `FLX-MICRO` `proposto` Marketing, MKT-E8: salva o material no acervo do Portal, em pasta do projeto pelo código, com etiquetas (bastidores, evento, portfólio, vídeo, depoimento). _[DOC-018 · MKT-E8 · ITM-00546]_
- `UNI-00480` `FLX-MICRO` `proposto` Marketing, MKT-E9: seleciona fotos para o relatório de pós-venda e o portfólio, que vão para o dossiê do Pós-feira (SET14). _[DOC-018 · MKT-E9 · ITM-00547]_
- `UNI-00481` `FLX-MICRO` `proposto` Marketing, MKT-E10 e E11: o setor pede acesso a um material com motivo e prazo; o Marketing libera por um período ou nega com o motivo, e o usuário aceita o termo de uso. _[DOC-018 · MKT-E10 e MKT-E11 · ITM-00548]_
- `UNI-00482` `FLX-MICRO` `proposto` Marketing, MKT-E12: o acesso expira sozinho no fim do prazo, e cada visualização e download fica registrado. _[DOC-018 · MKT-E12 · ITM-00549]_
- `UNI-00483` `FLX-MICRO` `proposto` Marketing, MKT-E13 a E15: carta de agradecimento e brinde, lançamento de pontos de fidelidade e convite para indicar e virar case. _[DOC-018 · MKT-E13 a MKT-E15 · ITM-00550]_
- `UNI-01555` `FLX-MICRO` `vigente` `conf:media` No fim de cada projeto o sistema salva arquivos e fotos automaticamente e a IA sugere as categorias, e notifica a Érika com uma fila de aprovação. _[DOC-091 · §24 Biblioteca de referências, curadoria · ITM-02291]_
- `UNI-01633` `FLX-MICRO` `substituido-parcial` No início do ano o Marketing (Érika, responsável pelas campanhas) monta o calendário anual de campanhas com os itens de cada mês. _[DOC-091 · §13 Programa de indicação, Plano de comunicação mensal · ITM-02197]_
  - **Continua valendo:** O calendário anual de campanhas com os itens de cada mês continua.
  - **Mudou:** Diego define o responsável de Marketing depois (item-18).

### CLI · Portal do cliente (2)

- `UNI-00360` `FLX-MICRO` `proposto` Vendedor inicia o atendimento e envia o login do Portal ao cliente. _[DOC-007 · COM-E11 · ITM-00153]_
- `UNI-00581.02` `FLX-MICRO` `proposto` `conf:media` Item reprovado volta para Projetos e Produção ajustarem, e uma nova amostra é enviada para validação. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02165 · parte de UNI-00581]_

### FID · Indicação e fidelidade (2)

- `UNI-00859.01` `FLX-MICRO` `proposto` `conf:media` O cliente promotor é convidado para indicação e case (POS-E8, MKT-E15) e a indicação volta como origem de cliente no SET02. _[DOC-091 · §2 Fluxo entre setores, gatilho 12; §5 Pós-feira, POS-E8; §5 Marketing, MKT-E15 · ITM-01599 · parte de UNI-00859]_
- `UNI-00859.03` `FLX-MICRO` `proposto` O cliente indica pelo Portal (empresa, contato e feira, ou link) e a indicação entra no CRM RD Station com a origem do indicador, atendida pelo vendedor. _[DOC-091 · §13 Programa de indicação com recompensa, metodologia, passos 1 e 2 · ITM-02185 · parte de UNI-00859]_

### INC · Incentivo e desempenho (9)

- `UNI-00488` `FLX-MICRO` `proposto` INC-E1: o Portal registra os movimentos de cada usuário (notificação, resposta, devolução, retrabalho, prazo cumprido ou perdido). _[DOC-023 · §02 INC-E1 · ITM-00608]_
- `UNI-00489` `FLX-MICRO` `proposto` INC-E2: painel individual e de equipe atualizado todo dia, em que cada pessoa vê os próprios números e os do setor. _[DOC-023 · §02 INC-E2 · ITM-00609]_
- `UNI-00490` `FLX-MICRO` `proposto` INC-E3: no fim do período o Portal calcula o placar de cada setor e pessoa em prazo, qualidade e eficiência, por feira ou por trimestre. _[DOC-023 · §02 INC-E3 · ITM-00610]_
- `UNI-00491` `FLX-MICRO` `proposto` INC-E5: líderes analisam contestações; atraso causado por outro setor não conta contra quem recebeu a tarefa atrasada. _[DOC-023 · §02 INC-E5 · ITM-00612]_
- `UNI-00492` `FLX-MICRO` `proposto` INC-E6: Maitê e Diego validam valores e enquadramento legal (prêmio, PLR ou bônus em contrato) conforme o vínculo de cada pessoa. _[DOC-023 · §02 INC-E6 · ITM-00613]_
- `UNI-00493` `FLX-MICRO` `proposto` INC-E7: pagamento e reconhecimento com prêmio por feira ou trimestre, PLR semestral e destaque da feira no Portal. _[DOC-023 · §02 INC-E7 · ITM-00614]_
  - Requisitos separados deste item: `UNI-00493.01`
- `UNI-00493.01` `FLX-MICRO` `proposto` Pagamento do programa de incentivo: prêmio, PLR ou bônus, formalizado em contrato. _[DOC-091 · §5 Programa de incentivo, INC-E7 · ITM-02023 · parte de UNI-00493]_
- `UNI-00494` `FLX-MICRO` `proposto` INC-E8: revisão semestral de metas e pesos com dados do Portal e do pós-feira. _[DOC-023 · §02 INC-E8 · ITM-00615]_
- `UNI-01582` `FLX-MICRO` `proposto` `conf:media` Com o estudo trimestral a diretoria monta um plano de ação com metas de redução de custos e aumento de performance das equipes, acompanhado nos fechamentos e ligado ao Programa de Incentivo (PRG-001). _[DOC-091 · §5 Estudo orçamentário trimestral · ITM-01833]_

### TRP · Transversal (1)

- `UNI-00487` `FLX-MICRO` `proposto` Implantação: notebooks e celulares corporativos, números de WhatsApp Business, integração ao ERP e termo de ciência assinado por cada colaborador. _[DOC-022 · §9 Checklist de implantação · ITM-00606]_

## Pontos de decisão (57)

### CRM · CRM e prospecção (6)

- `UNI-00549` `FLX-DECISAO` `proposto` Diego aprova as peças de comunicação; se não aprovar, as peças voltam para ajuste na PRO-E4. _[DOC-005 · PRO-E5 · ITM-00107]_
- `UNI-00550` `FLX-DECISAO` `proposto` Se o cliente demonstrou interesse, segue para a reunião de prospecção gravada pela IA. _[DOC-005 · PRO-E12 · ITM-00115]_
- `UNI-00551` `FLX-DECISAO` `proposto` Se o cliente aceita o login do Portal, a venda passa à Entrada de demanda (Setor 02); sem retorno, recontato na data combinada, voltando à PRO-E11. _[DOC-005 · PRO-E15 · ITM-00119]_
  - Requisitos separados deste item: `UNI-00551.01`, `UNI-00551.02`
- `UNI-00551.02` `FLX-DECISAO` `proposto` Prospecção: se o cliente aceita o login do Portal, vai ao Comercial; sem retorno, recontato na data; se perdeu interesse, recontato na próxima feira dele. _[DOC-091 · §5 Prospecção, PRO-E15 · ITM-01659 · parte de UNI-00551]_
- `UNI-00758` `FLX-DECISAO` `vigente` `conf:media` Respondido em 28/10: fluxo de 22/10 vale na PRO-E7, venda abre sozinha e a Prospecção revisa (E10), quem captou conduz (E11) e levantar a mão é aceitar o login do Portal (E15). _[DOC-006 · §8 Respostas de 28/10 · ITM-00128]_
- `UNI-00759` `FLX-DECISAO` `vigente` `conf:media` Respondido em 28/10: marketing dedicado gera as peças e Diego aprova (E4/E5); reunião só com interesse e Comercial confere (E12/E13); seis canais com WhatsApp segmentado (E6). _[DOC-006 · §8 Respostas de 28/10 · ITM-00129]_

### DIS · Distribuição de clientes (2)

- `UNI-00552` `FLX-DECISAO` `vigente` Cliente sem feira no calendário não recebe sugestão automática; a diretoria avalia e indica o vendedor. _[DOC-007 · COM-E8, §08 · ITM-00148]_
- `UNI-00553` `FLX-DECISAO` `proposto` Diego aprova o vendedor sugerido ou indica outro. _[DOC-007 · COM-E9 · ITM-00150]_

### PRJ · Projetos e memorial (6)

- `UNI-00554` `FLX-DECISAO` `proposto` G1: o Comercial valida as referências em até 1 dia; se não validar, volta à PRJ-E3 para ajuste. _[DOC-008 · G1 · ITM-00174]_
- `UNI-00555` `FLX-DECISAO` `vigente` G3: Comercial aprova o projeto em até 1 dia; se não, aponta alterações no Portal, volta à PRJ-E9 e o ciclo se repete. _[DOC-008 · G3, §08 · ITM-00182]_
- `UNI-00578` `FLX-DECISAO` `proposto` Diretoria valida o conceito criativo; se não validar, o conceito é refeito antes das referências e da modelagem 3D. _[DOC-030 · §02 Fase 3, decisão C2 · ITM-00695]_
- `UNI-00579.01` `FLX-DECISAO` `proposto` Projetos G2: a prévia é aprovada ou o fluxo volta para PRJ-E6. _[DOC-091 · §5 Projetos, PRJ-E8 (G2) · ITM-01690 · parte de UNI-00579]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-00582` `FLX-DECISAO` `proposto` E6: o Comercial decide se ficou item em aberto; se sim, repete E2; se não, a prévia segue para o render e o render segue para Custos. _[DOC-030 · §03 E6 · ITM-00706]_
- `UNI-01105` `FLX-DECISAO` `inferido` `conf:media` Referência reprovada volta para o arquiteto ajustar na PRJ-E3 (inferido). _[DOC-008 · §08, G1 · ITM-00201]_

### CUS · Custos (4)

- `UNI-00556` `FLX-DECISAO` `inferido` Se a planilha da IA estiver errada, Carol corrige e confere de novo antes de passar ao Financeiro (inferido). _[DOC-009 · CUS-E5, §07 · ITM-00211]_
- `UNI-00557` `FLX-DECISAO` `a-conferir` Maitê e Diego validam o preço; se recusado, o próprio Financeiro ajusta o preço no Portal. _[DOC-009 · CUS-E6, §07 · ITM-00213]_
  - **Atenção (leitura do Claude):** item 19: Diz que o Financeiro ajusta o preço recusado. A Especificação também diz que Maitê e Diego formam o preço (ITM-01591) e que o Diego aprova (ITM-02298).
  - Requisitos separados deste item: `UNI-00557.01`, `UNI-00557.02`
- `UNI-00558` `FLX-DECISAO` `proposto` Se o cliente aprova o adicional, ele entra no projeto e na produção; se não, o adicional é registrado como recusado. _[DOC-009 · CUS-E19 · ITM-00227]_
- `UNI-01577` `FLX-DECISAO` `proposto` Diante do alerta de margem, Diego e Financeiro escolhem uma de três saídas: a empresa absorve, o vendedor absorve ou o cliente ajusta o projeto. _[DOC-091 · §5 Controle de desconto na negociação · ITM-01838]_

### COM · Comercial, proposta e contrato (14)

- `UNI-00112.03` `FLX-DECISAO` `proposto` Empresa absorve: o desconto é aceito e a margem menor fica registrada. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto, saída 1 · ITM-01839 · parte de UNI-00112]_
- `UNI-00112.04` `FLX-DECISAO` `proposto` Vendedor absorve: o desconto é aceito com abatimento na comissão do vendedor. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto, saída 2 · ITM-01840 · parte de UNI-00112]_
- `UNI-00112.05` `FLX-DECISAO` `proposto` Cliente ajusta o projeto: a IA aponta itens com custo fora de proporção e o projeto é enxugado para caber no valor, com nova versão da planilha. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto, saída 3 · ITM-01841 · parte de UNI-00112]_
- `UNI-00560` `FLX-DECISAO` `proposto` Contrato assinado? Se não, o assistente avisa quem precisa assinar (por exemplo, e-mail pouco lido). _[DOC-011 · ACM-E10 · ITM-00274]_
- `UNI-00561` `FLX-DECISAO` `proposto` Todas as demandas em dia? Se não, o assistente cobra o responsável (cliente sem retorno ou vendedor sem informação para a proposta). _[DOC-011 · ACM-E14 · ITM-00278]_
  - Requisitos separados deste item: `UNI-00561.01`
- `UNI-00577` `FLX-DECISAO` `proposto` Comercial valida se a informação do briefing está completa; se não, o cliente volta a preencher; se sim, segue para a reunião online de briefing. _[DOC-030 · §02 Fase 2, decisão B4 · ITM-00694]_
- `UNI-00583` `FLX-DECISAO` `proposto` E8: o vendedor decide se quer mudar as condições da proposta; se sim vai a E9, se não vai a E14. _[DOC-030 · §03 E8 · ITM-00708]_
- `UNI-00584` `FLX-DECISAO` `proposto` G1: Financeiro ou Diretoria aprova a alteração; se recusar, quem recusou faz contraproposta com as condições possíveis, e ambos os caminhos seguem para E11. _[DOC-030 · §03 G1 · ITM-00712]_
- `UNI-00585.01` `FLX-DECISAO` `vigente` Resposta à cobrança do aceite (ACM-E6): sem resposta, nova cobrança; com pedido de ajuste, a proposta volta ao vendedor e a Custos. _[DOC-091 · §5 Assistente comercial, ACM-E6 · ITM-01863 · parte de UNI-00585]_
  - **Decisão (Ver decisão do item 4):** O assistente cobra o aceite, e o pedido de ajuste volta ao vendedor e a Custos. **Em aberto:** Quantas cobranças e com que frequência. Registro: `REGISTROS/decisao__20261104-1043-resposta-proposta-uhio.md`
- `UNI-00586` `FLX-DECISAO` `proposto` E16: após recusa, o vendedor decide renegociar (volta a E9) ou cancelar, encerrando o cartão como "cliente não fechou". _[DOC-030 · §03 E16 · ITM-00719]_
- `UNI-00587` `FLX-DECISAO` `vigente` E20: o sistema decide se há tempo hábil de produção até o evento; se sim vai a E21, se não vai à G2. _[DOC-031 · E20 · ITM-00744]_
- `UNI-00588` `FLX-DECISAO` `vigente` G2: a Diretoria decide a demanda sem tempo hábil; se aceitar, com custo de urgência, segue para E21; se declinar, o cartão é encerrado como declinado. _[DOC-031 · G2 · ITM-00747]_
- `UNI-00589` `FLX-DECISAO` `a-conferir` E27: se o cliente aceitou até o prazo limite, segue para Demandas aprovadas e cronograma macro; se não, o sistema propõe "declinada por prazo" e o vendedor confirma; pedido de extensão vai à G2. _[DOC-031 · E27 · ITM-00755]_
  - **Atenção (leitura do Claude):** item 24: Diz que, vencido o prazo, o sistema propõe "declinada por prazo". A decisão manda avisar todo dia e não diz quando para.
- `UNI-01570` `FLX-DECISAO` `vigente` Cada categoria abre seu fluxo: Estande abre projeto, custos, produção, expedição e montagem; Cenografia acrescenta o setor de Decoração; Audiovisual abre demanda do Christian e planilha de AV; Tecnologia abre demanda do Bruno; 3D Farm abre demanda do Pedro. _[DOC-091 · §41 Categorias de serviço · ITM-02448]_

### FIN · Financeiro (1)

- `UNI-00559` `FLX-DECISAO` `vigente` Financeiro confere em 1 dia se as ordens batem com a comanda e o custo; se não, voltam a Compras (Osmar) para ajuste. _[DOC-010 · FIN-E7 e E8 · ITM-00247]_

### PLA · Planejamento de produção (2)

- `UNI-00562` `FLX-DECISAO` `vigente` Planejamento, PLA-E11: se tudo estiver em conformidade o projeto segue; se não, cria-se um checklist de itens a resolver, tratado pelo Comercial com o cliente, e a ata é atualizada. _[DOC-012 · PLA-E11 · ITM-00306]_
- `UNI-00563` `FLX-DECISAO` `vigente` Se a peça está no prazo e com qualidade, segue; se não, há alerta vermelho e relatório de erros, e Eduardo e Marília decidem refazer em caso de erro. _[DOC-012 · PLA-E20 · ITM-00315]_

### CRD · Credenciamento (3)

- `UNI-00564` `FLX-DECISAO` `proposto` Credenciamento, CRD-E11: se o checklist está 100% completo segue; se não, o Portal cobra o responsável pelo documento pendente e a pasta continua bloqueada. _[DOC-013 · CRD-E11 · ITM-00364]_
- `UNI-00565` `FLX-DECISAO` `proposto` Credenciamento, CRD-E13: se a Maitê deu o ok final segue; se não, o Credenciamento ou o responsável corrige e reenvia para conferência. _[DOC-013 · CRD-E13 · ITM-00366]_
  - Requisitos separados deste item: `UNI-00565.01`
- `UNI-00580.01` `FLX-DECISAO` `a-conferir` Credenciamento, etapa CRD-E15: a feira aprova, ou há ajuste e nova publicação. _[DOC-091 · §5 Credenciamento, CRD-E15 · ITM-01919 · parte de UNI-00580]_
  - **Decisão (Ver decisão do item 3):** O engenheiro refaz detalhamento, cargas e pontos aéreos. Registro: `REGISTROS/decisao__20261104-1043-feira-nao-aprovou-7hjq.md`

### PRD · Produção e app dos setores (4)

- `UNI-00566` `FLX-DECISAO` `vigente` Setores produtivos, PRD-E5: se a solicitação está dentro do previsto segue; se não, a quantidade é ajustada com o líder e o que passar do previsto vai para aprovação. _[DOC-014 · PRD-E5 · ITM-00398]_
  - Requisitos separados deste item: `UNI-00566.01`
- `UNI-00571` `FLX-DECISAO` `vigente` Se a ficha não está no prazo, o setor informa o novo prazo no Portal e Planejamento (Eduardo e Marília) e Érika são notificados; o Portal também repassa o novo prazo ao próximo setor. _[DOC-014 · PRD-E9 · ITM-00420]_
- `UNI-00581` `FLX-DECISAO` `proposto` `conf:media` Cliente e comercial aprovam a amostra; se não, o setor produtivo refaz; se sim, a qualidade confere, embala, etiqueta e fotografa. _[DOC-030 · §02 Fase 6, decisão G4 · ITM-00698]_
  - Requisitos separados deste item: `UNI-00581.01`, `UNI-00581.02`
- `UNI-01561` `FLX-DECISAO` `vigente` Se o sistema não reconhecer o QR code ou o código na foto da ficha, pede a confirmação do código. _[DOC-091 · §25 Da ficha técnica à baixa, Foto e identificação · ITM-02318]_

### CVI · Comunicação visual (3)

- `UNI-00567` `FLX-DECISAO` `vigente` Comunicação visual, CVI-E3: se o arquivo está apto segue; se não, avisa Comunicação visual, comercial e Planejamento, e o cliente tem 1 dia para republicar. _[DOC-014 · CVI-E3 · ITM-00403]_
  - Requisitos separados deste item: `UNI-00567.01`
- `UNI-00568` `FLX-DECISAO` `vigente` Comunicação visual, CVI-E7: se o cliente validou a prova segue para a produção; se não, a Comunicação visual corrige e reenvia a prova. _[DOC-014 · CVI-E7 · ITM-00406]_
- `UNI-01569` `FLX-DECISAO` `vigente` Quando a IA reprova um arquivo do cliente na conferência (CVI-E2) por erro corrigível internamente, o sistema sugere abrir a demanda ao Beto em vez de devolver ao cliente. _[DOC-091 · §38 Criação Gráfica, Gatilho automático (CVI-E2) · ITM-02417]_

### AUD · Audiovisual (2)

- `UNI-00569` `FLX-DECISAO` `vigente` Audiovisual, AUD-E5: se as medidas são compatíveis segue; se não, Audiovisual, setor envolvido e Planejamento corrigem a ficha ou o rider e fazem nova conferência. _[DOC-014 · AUD-E5 · ITM-00413]_
- `UNI-00570` `FLX-DECISAO` `vigente` Audiovisual, AUD-E9: se o conteúdo está apto segue; se não, o Portal avisa o cliente com os problemas apontados e abre nova conferência. _[DOC-014 · AUD-E9 · ITM-00416]_

### ALM · Almoxarifado (1)

- `UNI-01573` `FLX-DECISAO` `proposto` Almoxarifado: o responsável confere o estoque e marca sim ou não em cada item da lista. _[DOC-091 · §5 Almoxarifado, ALM-E5 · ITM-01779]_

### EXP · Expedição e qualidade (2)

- `UNI-00572` `FLX-DECISAO` `proposto` Expedição, EXP-E4: se a peça é aprovada segue para embalar; se não, volta para a produção com alerta a Eduardo, Marília e Érika e entra no relatório de erros (inferido). _[DOC-015 · EXP-E4 · ITM-00446]_
- `UNI-01112` `FLX-DECISAO` `inferido` `conf:media` EXP-E4: peça reprovada volta ao setor que a fez, com alerta a Eduardo, Marília e Érika e registro no relatório de erros; inferido. _[DOC-015 · §07 EXP-E4 · ITM-00459]_

### MON · Montagem (1)

- `UNI-00573` `FLX-DECISAO` `vigente` Montagem, MON-E9: se o cliente aprovou todos os itens segue; se não, a ressalva é registrada e corrigida até o dia do cliente, ou produtor e comercial decidem e registram no termo. _[DOC-016 · MON-E9 · ITM-00482]_

### POS · Pós-feira (2)

- `UNI-00574` `FLX-DECISAO` `proposto` Pós-feira, POS-E4: se o cliente respondeu segue; se não, o Portal reenvia lembrete e o assistente comercial ou o vendedor pede a resposta. _[DOC-017 · POS-E4 · ITM-00513]_
- `UNI-00575` `FLX-DECISAO` `proposto` Pós-feira, POS-E7: se o cliente está satisfeito segue; se não (nota 0 a 6, detrator), Diego e o vendedor são avisados e o contato ocorre em até 48 horas, registrado no Portal. _[DOC-017 · POS-E7 · ITM-00516]_

### MKT · Marketing e acervo (2)

- `UNI-00121.01` `FLX-DECISAO` `proposto` `conf:media` Pedido de acesso ao acervo (MKT-E11): liberação com termo de uso, ou negativa com motivo. _[DOC-091 · §5 Marketing, MKT-E11 · ITM-02012 · parte de UNI-00121]_
- `UNI-01097` `FLX-DECISAO` `inferido` `conf:media` Peça reprovada volta para o marketing ajustar (inferido). _[DOC-005 · §05, PRO-E5 · ITM-00125]_

### CLI · Portal do cliente (1)

- `UNI-00581.01` `FLX-DECISAO` `proposto` `conf:media` O cliente aprova ou reprova cada item no Portal, com comentário ao reprovar. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02164 · parte de UNI-00581]_

### INC · Incentivo e desempenho (1)

- `UNI-00576` `FLX-DECISAO` `proposto` INC-E4: se o gatilho financeiro for atingido o fluxo segue; se não, período sem bônus, só com reconhecimento não financeiro e plano de melhoria. _[DOC-023 · §02 INC-E4 · ITM-00611]_

## Notificações (67)

### CRM · CRM e prospecção (2)

- `UNI-00002.09` `FLX-NOTIF` `proposto` O lembrete do próximo contato chega ao vendedor antes da data do compromisso. _[DOC-091 · §19 Prospecção na feira pelo app, lembrete do próximo contato · ITM-02254 · parte de UNI-00002]_
- `UNI-00591` `FLX-NOTIF` `proposto` Quando um prazo combinado com o cliente vence, o CRM avisa quem conduz o lead. _[DOC-005 · Fim da §02 Fluxograma · ITM-00121]_
  - Requisitos separados deste item: `UNI-00591.01`

### DIS · Distribuição de clientes (1)

- `UNI-00592` `FLX-NOTIF` `proposto` Notificação ao Diego com cliente, feira, perfil, classe e vendedor sugerido. _[DOC-007 · COM-E9 · ITM-00149]_

### PRJ · Projetos e memorial (1)

- `UNI-00604` `FLX-NOTIF` `vigente` Projetos, PLA-E8: ao subir o detalhamento no Portal, o Portal notifica Planejamento e Produção. _[DOC-012 · PLA-E8 · ITM-00303]_

### BIB · Biblioteca de itens e locações (2)

- `UNI-00486.01` `FLX-NOTIF` `proposto` Se não existir padrão para o tipo de item, a IA sinaliza na ficha e avisa o validador do setor e a Marília, para o item entrar na lista de gravação. _[DOC-091 · §35 Padrões construtivos por vídeo, regra para a geração das fichas · ITM-02394 · parte de UNI-00486]_
- `UNI-00785.05` `FLX-NOTIF` `a-conferir` `conf:media` Itens parados na fila de aprovação da biblioteca geram lembrete para a Érika. _[DOC-091 · §24 Biblioteca de referências e projetos para o setor de Projetos · ITM-02293 · parte de UNI-00785]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`

### CUS · Custos (4)

- `UNI-00594` `FLX-NOTIF` `vigente` Projeto aprovado 1 dia ou mais depois do orçamento faz o Portal alertar Maitê e Diego sobre reajuste de preço. _[DOC-009 · CUS-E9, §05 · ITM-00217]_
- `UNI-00595` `FLX-NOTIF` `vigente` Adicional aprovado: o Portal avisa todos os setores. _[DOC-009 · CUS-E19, §07 · ITM-00228]_
- `UNI-00596` `FLX-NOTIF` `proposto` Cada mudança gera nova versão da planilha (V02, V03) e aviso a quem vem depois: Carol, Maitê e Diego, Anderson e Comercial, conforme o caso. _[DOC-009 · §05 Versões e notificações · ITM-00229]_
- `UNI-01523` `FLX-NOTIF` `proposto` `conf:media` Se a alteração não foi cobrada do cliente (não virou adicional), a IA envia apontamento a Projetos e ao Comercial com o caso e o prejuízo; o Diego recebe cada apontamento na hora e ele entra no fechamento e no estudo trimestral. _[DOC-091 · §5 Análise de impacto das alterações de projeto · ITM-01835]_

### COM · Comercial, proposta e contrato (11)

- `UNI-00204` `FLX-NOTIF` `proposto` `conf:media` Nenhuma proposta, aceite ou contrato fica sem dono; demanda fora do prazo é cobrada pelo assistente e, se não resolver, vai ao Diego ou à Maitê conforme a área. _[DOC-011 · §04 Painel, regra · ITM-00279]_
- `UNI-00561.01` `FLX-NOTIF` `proposto` Demanda atrasada: o assistente cobra o responsável e, se não resolver, avisa Diego ou Maitê (ACM-E14). _[DOC-091 · §5 Assistente comercial, ACM-E14 · ITM-01872 · parte de UNI-00561]_
- `UNI-00599` `FLX-NOTIF` `proposto` Quando o preço de venda e a pré-proposta estão validados pelo Financeiro (Maitê e Diego), o Portal notifica o assistente comercial (Anderson), que emite a proposta. _[DOC-011 · ACM-E1 · ITM-00265]_
- `UNI-00600` `FLX-NOTIF` `proposto` O assistente registra o aceite do cliente e o Portal avisa vendedor, Diego e Financeiro (FIN-E1). _[DOC-011 · ACM-E7 · ITM-00271]_
- `UNI-00602` `FLX-NOTIF` `proposto` Notificações que passam pelo assistente: preço pronto (CUS-E7), alteração de preço (CUS-E11), adicional (CUS-E18), aceite, contrato a elaborar, aguardando assinatura e demanda parada. _[DOC-011 · §03 Notificações · ITM-00281]_
  - Requisitos separados deste item: `UNI-00602.01`
- `UNI-00602.01` `FLX-NOTIF` `proposto` Contrato parado na assinatura: o assistente avisa quem precisa assinar (ACM-E10). _[DOC-091 · §5 Assistente comercial, ACM-E10 · ITM-01868 · parte de UNI-00602]_
- `UNI-00615` `FLX-NOTIF` `a-conferir` E25: o sistema alerta vendedor e assistente comercial com "X dias sem retorno; limite para aprovar em Y dias; avise o cliente, senão vamos declinar". _[DOC-031 · E25 · ITM-00753]_
  - **Atenção (leitura do Claude):** item 24: Diz que o alerta vai ao vendedor e ao assistente. Pode ser um aviso anterior ao prazo limite.
- `UNI-01117` `FLX-NOTIF` `inferido` Em E19, quando faltar dado, a IA cobra o vendedor e não o cliente. _[DOC-031 · Validar, E19 · ITM-00757]_
- `UNI-01528` `FLX-NOTIF` `decisao-diego` Aceite sem resposta: depois de 10 dias, o sistema avisa o Diego e o vendedor. _[DOC-091 · §Respostas Cobrança do aceite (ACM-E5) · ITM-01862]_
  - **Decisão (Decidido por Diego):** Ao bater o prazo limite, o sistema avisa o vendedor e o Diego. Depois do prazo, dispara um aviso por dia, todos os dias seguintes, para o vendedor, o Diego e o Anderson. **Em aberto:** Até quando os avisos diários continuam. Registro: `REGISTROS/decisao__20261104-1220-aceite-sem-resposta-fswb.md`
- `UNI-01548` `FLX-NOTIF` `vigente` Quando o cliente abre o e-mail ou a apresentação, o vendedor é notificado para fazer o contato no momento certo. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02269]_
- `UNI-01612` `FLX-NOTIF` `proposto` E-mails do fluxo comercial: o assistente comercial fica em cópia de todos (ACM-E12). _[DOC-091 · §5 06 Assistente comercial, ACM-E12 · ITM-01870]_

### FIN · Financeiro (3)

- `UNI-00598` `FLX-NOTIF` `proposto` Financeiro é notificado em: preço validado (CUS-E6), aceite do cliente, comandas, ordens de compra, nota fiscal enviada e adicional aprovado (CUS-E19). _[DOC-010 · §03 Quando o Financeiro é notificado · ITM-00260]_
- `UNI-00614` `FLX-NOTIF` `proposto` E10: o sistema avisa Financeiro e Diretoria do pedido de alteração da proposta. _[DOC-030 · §03 E10 · ITM-00710]_
- `UNI-00751.07` `FLX-NOTIF` `vigente` `conf:media` O assistente de IA marca pontos duvidosos do contrato (cláusulas fora do padrão, pagamento, prazos, escopo, adicionais) para a Maitê validar antes de liberar. _[DOC-091 · Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-02053 · parte de UNI-00751]_

### CMP · Compras (7)

- `UNI-00229` `FLX-NOTIF` `proposto` O fornecedor recebe a OC por e-mail do sistema e confirma por link; o WhatsApp serve só para avisar. _[DOC-032 · §05 Lista de regras · ITM-00791]_
- `UNI-00597` `FLX-NOTIF` `proposto` Com as comandas aprovadas, as listas de compras são autorizadas e o Portal avisa o setor de Compras. _[DOC-010 · FIN-E6 · ITM-00245]_
  - Requisitos separados deste item: `UNI-00597.01`
- `UNI-00752.04` `FLX-NOTIF` `proposto` O sistema cruza a agenda de chegadas com os carregamentos da Expedição (EXP-E8); se descarga e carregamento coincidem no horário, ou duas descargas se sobrepõem, avisa a equipe da unidade e o comprador para reagendar. _[DOC-091 · §5 Compras, agenda de chegada de materiais, alerta de conflito · ITM-01766 · parte de UNI-00752]_
- `UNI-00752.05` `FLX-NOTIF` `proposto` Na véspera e no dia, a equipe da unidade recebe o resumo das entregas previstas; na chegada, quem recebe dá baixa no app. _[DOC-091 · §5 Compras, agenda de chegada de materiais, aviso de chegada · ITM-01767 · parte de UNI-00752]_
- `UNI-01507` `FLX-NOTIF` `proposto` `conf:media` Notificação diária à Maitê em dois caminhos separados, compras São Paulo e compras Rio Grande do Sul; as ordens de frete, equipes terceirizadas e viagem seguem a mesma separação por unidade. _[DOC-091 · §5 Compras · ITM-01761]_
- `UNI-01508` `FLX-NOTIF` `proposto` Se o material não chegar no horário, o sistema avisa o comprador e o Planejamento, pois pode alterar as datas das fichas. _[DOC-091 · §5 Compras, Atraso · ITM-01768]_
- `UNI-01538` `FLX-NOTIF` `vigente` A Maitê recebe notificação diária dos dois caminhos de compras (RS e SP). _[DOC-091 · §Respostas Compras · cotação (FIN-E7) · ITM-02077]_

### PLA · Planejamento de produção (2)

- `UNI-00603` `FLX-NOTIF` `vigente` Planejamento, PLA-E5: o Portal notifica todos os setores para que cada um já preveja a demanda que vem do projeto. _[DOC-012 · PLA-E5 · ITM-00300]_
- `UNI-01540` `FLX-NOTIF` `vigente` Sem resposta do cliente no prazo da validação de amostras, o sistema avisa o vendedor e o Planejamento, pois o atraso pode mexer no cronograma. _[DOC-091 · §12 Validação de amostras · ITM-02167]_

### CRD · Credenciamento (3)

- `UNI-00565.01` `FLX-NOTIF` `vigente` Documento não conforme: o agente de IA notifica a Alexandra para refazer e subir de novo no sistema, e a conferência roda outra vez. _[DOC-091 · Respostas do Diego, Conferência do Credenciamento (CRD-E12) · ITM-01915 · parte de UNI-00565]_
- `UNI-00606` `FLX-NOTIF` `proposto` Credenciamento, CRD-E8: o Portal notifica o responsável por cada documento (arquiteto do projeto, engenheiro, Planejamento e Expedição). _[DOC-013 · CRD-E8 · ITM-00361]_
- `UNI-01536` `FLX-NOTIF` `vigente` Formulário de deslocamento vai ao Credenciamento: a Alexandra recebe a lista, coleta os dados de cada colaborador e gera os documentos de credenciamento na feira. _[DOC-091 · §Respostas Formulário de deslocamento (CRD-E8) · ITM-02072]_

### PRD · Produção e app dos setores (2)

- `UNI-00605` `FLX-NOTIF` `vigente` Planejamento, PLA-E19: o Portal dá baixa na ficha e avisa produção, planejamento e o próximo setor da cadência, com status em tempo real. _[DOC-012 · PLA-E19 · ITM-00314]_
  - Requisitos separados deste item: `UNI-00605.01`
- `UNI-01630` `FLX-NOTIF` `vigente` A mensagem de congelamento explica que não cabe nova alteração: não há tempo para recompra, planejamento do item, nova ficha técnica e ajuste de peça concluída. _[DOC-091 · §12 Congelamento do projeto · ITM-02181]_

### CVI · Comunicação visual (3)

- `UNI-00607` `FLX-NOTIF` `vigente` Comunicação visual: a cada dia de atraso do cliente o Portal recalcula o impacto no cronograma de produção, e o Planejamento vê o efeito nas datas das fichas. _[DOC-014 · §04 Cadência dos alertas · ITM-00408]_
  - Requisitos separados deste item: `UNI-00607.01`, `UNI-00607.02`
- `UNI-00607.01` `FLX-NOTIF` `proposto` O planejamento de produção da unidade acompanha as mesmas etapas e recebe alerta quando uma peça atrasa em relação ao cronograma. _[DOC-091 · §26 Comunicação visual, controle por etapa, passo 2 · ITM-02326 · parte de UNI-00607]_
- `UNI-00607.02` `FLX-NOTIF` `proposto` Peça parada numa etapa além do prazo gera alerta ao responsável e ao Planejamento. _[DOC-091 · §26 Comunicação visual, controle por etapa, passo 4 · ITM-02328 · parte de UNI-00607]_

### ALM · Almoxarifado (2)

- `UNI-01509` `FLX-NOTIF` `proposto` `conf:media` A notificação matinal da conciliação vai, no Rio Grande do Sul, a Eduardo, Marília e Suellen, e em São Paulo, a Samanta, Rômulo e ao assistente. _[DOC-091 · §5 Compras, Planilha de conciliação diária · ITM-01770]_
- `UNI-01514` `FLX-NOTIF` `proposto` Toda segunda-feira a IA envia ao responsável da unidade a lista de itens que, a princípio, estão faltando ou abaixo do mínimo. _[DOC-091 · §5 Almoxarifado, ALM-E4 · ITM-01778]_

### EXP · Expedição e qualidade (3)

- `UNI-00299.01` `FLX-NOTIF` `vigente` Carregado versus previsto (EXP-E9): se faltar item, o sistema alerta quais não foram conferidos, sem bloquear a saída do caminhão. _[DOC-091 · Respostas do Diego, Carregamento (EXP-E9); §5 Expedição, EXP-E9 · ITM-01968 · parte de UNI-00299]_
- `UNI-00452.01` `FLX-NOTIF` `vigente` Alerta de itens não conferidos vai à produção da unidade do projeto: Rio Grande do Sul = Eduardo e Marília; São Paulo = Rômulo e Samanta. _[DOC-091 · Respostas do Diego, Carregamento (EXP-E9) · ITM-01969 · parte de UNI-00452]_
- `UNI-00608` `FLX-NOTIF` `proposto` Expedição, EXP-E1: o Portal notifica a Expedição quando a peça é concluída no último setor da cadência. _[DOC-015 · EXP-E1 · ITM-00443]_

### LOG · Logística e frota (8)

- `UNI-00009.03` `FLX-NOTIF` `proposto` Frota: alertas de veículos no prazo de troca de óleo, de manutenção preventiva ou com necessidade básica de manutenção. _[DOC-091 · §5 Frota, FRT-E4 · ITM-01790 · parte de UNI-00009]_
- `UNI-00009.04` `FLX-NOTIF` `proposto` `conf:media` Frota, lavagem mensal: o sistema alerta e pede a solicitação de pagamento; a solicitação conferida gera ordem de compra para o Financeiro planejar e validar. _[DOC-091 · §5 Frota, FRT-E5 · ITM-01792 · parte de UNI-00009]_
- `UNI-01440` `FLX-NOTIF` `proposto` Os alertas de manutenção vão, no Rio Grande do Sul, ao seu Marcos, Eduardo e Leandro, e em São Paulo ao Rômulo. _[DOC-091 · §5 Frota, FRT-E4 · ITM-01791]_
- `UNI-01510` `FLX-NOTIF` `proposto` A lista de coletas e a notificação vão, em São Paulo, a Samanta e Rômulo, e no Rio Grande do Sul, a Eduardo, Osmar e Leandro (apoio operacional do Eduardo). _[DOC-091 · §5 Compras, Coleta com veículo próprio · ITM-01773]_
- `UNI-01516` `FLX-NOTIF` `proposto` Se o lançamento de quilometragem não for feito, na terça-feira o sistema alerta quem lança, além do Eduardo, do Leandro e do Rômulo. _[DOC-091 · §5 Frota, FRT-E2a · ITM-01788]_
- `UNI-01535` `FLX-NOTIF` `vigente` Formulário de deslocamento vai ao Financeiro: gera uma ordem de compra de hotel e deslocamento, que o Financeiro valida (FIN-E7). _[DOC-091 · §Respostas Formulário de deslocamento (FIN-E7) · ITM-02071]_
- `UNI-01537` `FLX-NOTIF` `vigente` O sistema avisa Eduardo ou Samanta antes do prazo do formulário de deslocamento. _[DOC-091 · §Respostas Prazo do formulário de deslocamento · ITM-02074]_
- `UNI-01543` `FLX-NOTIF` `vigente` Conferência com foto não registrada: o sistema avisa de novo o produtor e alerta a Érika (RS) ou a Samanta (SP). _[DOC-091 · §18 Locações, controle de devolução · ITM-02232]_

### MON · Montagem (5)

- `UNI-00461.02` `FLX-NOTIF` `proposto` O termo assinado fica no histórico do projeto e é enviado por e-mail ao cliente, ao Jurídico (Maitê), ao Financeiro e ao Comercial. _[DOC-091 · §12 Experiência do cliente no Portal, termo de entrega oficial, registro · ITM-02177 · parte de UNI-00461]_
- `UNI-00609` `FLX-NOTIF` `vigente` Montagem, MON-E6: o Portal notifica Planejamento e Produção; no dashboard de montagem a pizza vermelha fica verde a cada item ok. _[DOC-016 · MON-E6 · ITM-00479]_
- `UNI-00610` `FLX-NOTIF` `vigente` Montagem, MON-E12: o Portal notifica plantonista, comercial, coordenador de montagem e coordenador de produção da empresa a cada chamado. _[DOC-016 · MON-E12 · ITM-00485]_
- `UNI-00611` `FLX-NOTIF` `vigente` Montagem, MON-E14: relatório de atendimento com data, horário, item executado e foto, e o cliente recebe um push do que foi feito. _[DOC-016 · MON-E14 · ITM-00487]_
- `UNI-01542` `FLX-NOTIF` `vigente` `conf:media` Notificação obrigatória no app: o produtor recebe aviso no horário de chegada de cada item locado e na véspera e no horário da devolução. _[DOC-091 · §18 Locações, controle de devolução · ITM-02231]_

### MKT · Marketing e acervo (1)

- `UNI-00612` `FLX-NOTIF` `proposto` Marketing, MKT-E1: o Portal avisa o Marketing das datas do projeto (produção, montagem, dia do cliente e feira). _[DOC-018 · MKT-E1 · ITM-00541]_

### CLI · Portal do cliente (3)

- `UNI-00782.01` `FLX-NOTIF` `proposto` Validação de amostras (etapa obrigatória): na data do cronograma reverso do Planejamento, o sistema notifica o cliente com a lista de itens e foto da amostra para o ok. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02163 · parte de UNI-00782]_
- `UNI-00782.06` `FLX-NOTIF` `proposto` O cliente é notificado (Portal e WhatsApp) antes da data limite e no dia em que o projeto congela. _[DOC-091 · §12 Experiência do cliente no Portal, congelamento do projeto · ITM-02180 · parte de UNI-00782]_
- `UNI-01455` `FLX-NOTIF` `proposto` `conf:media` Push e e-mail para o cliente. _[DOC-091 · §9 Integrações · ITM-02138]_

### FID · Indicação e fidelidade (1)

- `UNI-00012.03` `FLX-NOTIF` `proposto` `conf:media` Todo mês o sistema dispara campanha pelo WhatsApp com os itens novos, sugestões de uso no próximo estande e convite para indicar, apontando para a página do programa no Portal. _[DOC-091 · §13 Programa de indicação com recompensa, campanha mensal · ITM-02196 · parte de UNI-00012]_

### TRP · Transversal (3)

- `UNI-00613` `FLX-NOTIF` `proposto` Os alertas do agente de IA vão para Maitê e Diego, que avaliam cada caso. _[DOC-022 · §5 Monitoramento, item 3 · ITM-00600]_
- `UNI-01446` `FLX-NOTIF` `vigente` Definida a unidade, o sistema manda notificações, fichas, alertas e acessos para a equipe dela. _[DOC-091 · §Respostas Unidade de produção · ITM-02055]_
- `UNI-01562` `FLX-NOTIF` `vigente` Nova tarefa ou prazo próximo gera aviso no celular, e o que é urgente também vai pelo WhatsApp corporativo. _[DOC-091 · §29 Notificações · ITM-02349]_

