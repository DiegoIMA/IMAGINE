---
id: ERP-MOD-MON
titulo: Módulo Montagem
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# MON · Montagem

56 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (7)

- `UNI-00301` `FLX-MACRO` `vigente` Montagem, fase 1 Acesso: a equipe é liberada no app pela Érika, nomeada e escalada a cada feira. _[DOC-016 · §01 Fase 1 (MON-E1) · ITM-00467]_
  - Requisitos separados deste item: `UNI-00301.01`
- `UNI-00301.01` `FLX-MACRO` `a-conferir` O carregamento conferido (EXP-E9) libera a montagem (MON-E1). _[DOC-091 · §2 Fluxo entre setores, item 10 Expedição → Montagem · ITM-01597 · parte de UNI-00301]_
  - **Atenção (leitura do Claude):** item 22: a Logística vem entre a Expedição e a Montagem. Falta dizer se o carregamento ainda libera a Montagem (DUV-028).
- `UNI-00302` `FLX-MACRO` `vigente` Montagem, fase 2 Credenciamento no pavilhão: retirada de credenciais e apresentação de documentos e projeto aprovado. _[DOC-016 · §01 Fase 2 (MON-E2 e E3) · ITM-00468]_
- `UNI-00303` `FLX-MACRO` `vigente` Montagem, fase 3 Montagem: checklist com foto e dashboard de montagem. _[DOC-016 · §01 Fase 3 (MON-E4 a E6) · ITM-00469]_
- `UNI-00304` `FLX-MACRO` `vigente` Montagem, fase 4 Entrega: conferência do stand com o cliente e termo de aceite. _[DOC-016 · §01 Fase 4 (MON-E7 a E10) · ITM-00470]_
- `UNI-00305` `FLX-MACRO` `vigente` Montagem, fase 5 Plantão técnico: chamados do cliente atendidos com foto e relatório. _[DOC-016 · §01 Fase 5 (MON-E11 a E14) · ITM-00471]_
- `UNI-00306` `FLX-MACRO` `vigente` Montagem, fase 6 Desmontagem: mesmo checklist de montagem e encerramento dos acessos. _[DOC-016 · §01 Fase 6 (MON-E15 e E16) · ITM-00472]_

## Etapas do fluxo (15)

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

## Pontos de decisão (1)

- `UNI-00573` `FLX-DECISAO` `vigente` Montagem, MON-E9: se o cliente aprovou todos os itens segue; se não, a ressalva é registrada e corrigida até o dia do cliente, ou produtor e comercial decidem e registram no termo. _[DOC-016 · MON-E9 · ITM-00482]_

## Notificações (5)

- `UNI-00461.02` `FLX-NOTIF` `proposto` O termo assinado fica no histórico do projeto e é enviado por e-mail ao cliente, ao Jurídico (Maitê), ao Financeiro e ao Comercial. _[DOC-091 · §12 Experiência do cliente no Portal, termo de entrega oficial, registro · ITM-02177 · parte de UNI-00461]_
- `UNI-00609` `FLX-NOTIF` `vigente` Montagem, MON-E6: o Portal notifica Planejamento e Produção; no dashboard de montagem a pizza vermelha fica verde a cada item ok. _[DOC-016 · MON-E6 · ITM-00479]_
- `UNI-00610` `FLX-NOTIF` `vigente` Montagem, MON-E12: o Portal notifica plantonista, comercial, coordenador de montagem e coordenador de produção da empresa a cada chamado. _[DOC-016 · MON-E12 · ITM-00485]_
- `UNI-00611` `FLX-NOTIF` `vigente` Montagem, MON-E14: relatório de atendimento com data, horário, item executado e foto, e o cliente recebe um push do que foi feito. _[DOC-016 · MON-E14 · ITM-00487]_
- `UNI-01542` `FLX-NOTIF` `vigente` `conf:media` Notificação obrigatória no app: o produtor recebe aviso no horário de chegada de cada item locado e na véspera e no horário da devolução. _[DOC-091 · §18 Locações, controle de devolução · ITM-02231]_

## Módulos e telas (2)

- `UNI-00006` `ESC-MODULO` `vigente` Locações têm devolução conferida com foto. _[DOC-003 · Mapa, cartão 06 Compras e Locações · ITM-00075]_
  - Requisitos separados deste item: `UNI-00006.01`
- `UNI-01425` `ESC-MODULO` `proposto` App da montagem (setor 13): acesso por categoria, documentos, checklist com foto e chamados. _[DOC-091 · §3 Módulos, App da montagem · ITM-01613]_

## Perfis e responsáveis (4)

- `UNI-00037` `ESC-PERFIL` `proposto` Montagem (montador responsável) carrega, descarrega e monta na sequência, com foto por etapa e registro de previsto x realizado. _[DOC-030 · §05 Setores, card 13 · ITM-00685]_
- `UNI-00118.02` `ESC-PERFIL` `proposto` Perfil Equipe de montagem, por feira (encarregado, responsável, produtor, coordenador, plantonista): acesso ao app da montagem. _[DOC-091 · §8 Perfis de acesso, Equipe de montagem · ITM-02124 · parte de UNI-00118]_
- `UNI-01400` `ESC-PERFIL` `vigente` Montagem é feita pela equipe RS no Rio Grande do Sul e por Rômulo mais um produtor (a contratar) em São Paulo. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00022]_
- `UNI-01622` `ESC-PERFIL` `vigente` Montagem em São Paulo: produtor de montagem a contratar marca o checklist com foto e atende o plantão no app; montadores e plantonista são terceirizados, sem acesso ao app. _[DOC-091 · §Respostas Equipe de São Paulo · ITM-02062]_

## Documentos gerados (6)

- `UNI-00042` `ESC-DOC` `vigente` Documentos no app da montagem: pasta do credenciamento, memorial validado pelo cliente, projeto e 3D, detalhamento técnico, resumo das fichas de produção e etiquetas com leituras do QR code. _[DOC-016 · §04 Documentos no app da montagem · ITM-00495]_
- `UNI-00043` `ESC-DOC` `vigente` Termo de aceite de entrega, com identificação, itens conferidos com foto e ok, ressalvas, aceite (data, assinatura, produtor) e destino ao jurídico, financeiro e comercial como evidência de entrega. _[DOC-016 · §05 Termo de aceite · ITM-00498]_
  - Requisitos separados deste item: `UNI-00043.01`, `UNI-00043.02`
- `UNI-00043.01` `ESC-DOC` `proposto` Conteúdo do termo: dados do projeto, cliente e feira; itens do memorial com ok e foto; ressalvas; cortesias retiradas; data, hora e local. _[DOC-091 · §12 Experiência do cliente no Portal, termo de entrega oficial, conteúdo · ITM-02175 · parte de UNI-00043]_
- `UNI-00461.01` `ESC-DOC` `proposto` Termo de entrega oficial (MON-E10): ao fim da montagem o app gera automaticamente o PDF do termo, com valor jurídico para contestações posteriores à feira. _[DOC-091 · §12 Experiência do cliente no Portal, termo de entrega oficial (MON-E10) · ITM-02174 · parte de UNI-00461]_
- `UNI-00674` `ESC-DOC` `vigente` Campos do termo de aceite: identificação (cliente, feira, estande, código do projeto), itens conferidos, ressalvas com correção e foto, aceite (data, horário, assinatura, produtor) e destino. _[DOC-016 · §05 Termo de aceite · ITM-00499]_
  - Requisitos separados deste item: `UNI-00674.01`
- `UNI-00674.01` `ESC-DOC` `proposto` Termo de aceite: identificação, itens conferidos, ressalvas, data e assinatura. _[DOC-091 · §4 Entidades e dados principais, Termo de aceite; §5 Montagem, MON-E10 · ITM-01638 · parte de UNI-00674]_

## Entidades e campos (4)

- `UNI-00675` `ESC-DADOS` `vigente` Chamado do plantão técnico registra abertura (cliente, estande, pedido, foto opcional, data), notificados, execução (quem, quando, foto), aviso push ao cliente e relatório histórico do estande. _[DOC-016 · §06 Plantão técnico · ITM-00501]_
  - Requisitos separados deste item: `UNI-00675.01`
- `UNI-00675.01` `ESC-DADOS` `proposto` Chamado do plantão: pedido, foto, notificados, quem atendeu e conclusão com foto. _[DOC-091 · §4 Entidades e dados principais, Chamado do plantão; §5 Montagem, MON-E11 a E14 · ITM-01639 · parte de UNI-00675]_
- `UNI-01432` `ESC-DADOS` `proposto` Checklist de montagem: item do memorial, ok e foto. _[DOC-091 · §4 Entidades, Checklist de montagem (MON-E5, MON-E15) · ITM-01637]_
- `UNI-01462` `ESC-DADOS` `vigente` Validador da montagem: o formulário traz nome e dados para autenticação eletrônica no app, para assinar o termo de aceite. _[DOC-091 · §12 Formulário pré-evento, Validador · ITM-02171]_

## Dashboards e indicadores (1)

- `UNI-01457` `ESC-INDIC` `proposto` Dashboard de Montagem: itens com ok. _[DOC-091 · §10 Dashboards, MON-E6 · ITM-02142]_

## Prazos (4)

- `UNI-00090` `REG-PRAZO` `vigente` Montagem, acesso da equipe ao app termina 5 dias após a desmontagem; a aba do cliente fecha no fim da feira. _[DOC-016 · MON-E16; §03 · ITM-00490]_
- `UNI-00091` `REG-PRAZO` `vigente` Plantão técnico: o chamado deve ser atendido em cerca de 10 minutos, porque o plantonista fica na feira. _[DOC-016 · MON-E13; §06 · ITM-00491]_
- `UNI-00092` `REG-PRAZO` `vigente` `conf:media` Calendário da entrega: montagem 100% verde na noite do dia 8, dia 9 é o dia do cliente com checklist, ajustes e termo, e a feira abre no dia 10 (exemplo). _[DOC-016 · MON-E9; §05 Calendário da entrega · ITM-00492]_
- `UNI-00463.01` `REG-PRAZO` `proposto` Montagem, etapa MON-E13: execução do chamado em cerca de 10 minutos, com foto. _[DOC-091 · §5 Montagem, MON-E13; §7 Prazos (SLAs) · ITM-01985 · parte de UNI-00463]_

## Acesso e visibilidade (2)

- `UNI-00026` `REG-ACESSO` `vigente` Categorias de usuário da montagem definem o que cada uma faz, o que acessa e quando o acesso termina (5 dias após a desmontagem, acesso normal da empresa ou durante a feira para o cliente). _[DOC-016 · §03 Usuários e categorias · ITM-00494]_
  - Requisitos separados deste item: `UNI-00026.01`
- `UNI-00026.01` `REG-ACESSO` `proposto` Acessos de montagem são por categoria e por feira, e expiram 5 dias após a desmontagem; a aba do cliente fecha no fim da feira. _[DOC-091 · §6 Regras de negócio, Acessos de montagem; §5 Montagem, MON-E16 · ITM-02090 · parte de UNI-00026]_

## Qualidade (3)

- `UNI-00166` `REG-QUAL` `vigente` Checklist de montagem: sem foto não há ok, e foto sem ok não conta. _[DOC-016 · MON-E5 · ITM-00478]_
- `UNI-00208` `REG-QUAL` `vigente` Ressalva do cliente: o produtor corrige até o dia do cliente, tira foto e o cliente dá o ok; se inviável, produtor de montagem e comercial decidem na hora e digitam a decisão no termo. _[DOC-016 · §05 Ressalvas · ITM-00500]_
- `UNI-00458.01` `REG-QUAL` `proposto` `conf:media` Montagem, etapa MON-E5: item montado com ok e foto; um não vale sem o outro. _[DOC-091 · §5 Montagem, MON-E5 · ITM-01977 · parte de UNI-00458]_

## Regras operacionais (2)

- `UNI-00209` `REG-OPER` `vigente` Pedidos de manutenção durante a feira entram pela aba Plantão técnico, e não pelo WhatsApp. _[DOC-016 · §06 Plantão técnico · ITM-00502]_
- `UNI-00792` `REG-OPER` `vigente` `conf:media` Respostas de 29/10 incorporadas: acesso liberado pela Érika, ajuste inviável decidido por produtor e comercial, chamado em cerca de 10 minutos, seleção de peças na desmontagem e aba do cliente fechando no fim da feira. _[DOC-016 · §08 Respostas de 29/10 · ITM-00505]_

