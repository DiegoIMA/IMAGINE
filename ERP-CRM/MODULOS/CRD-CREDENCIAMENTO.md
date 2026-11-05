---
id: ERP-MOD-CRD
titulo: Módulo Credenciamento
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# CRD · Credenciamento

55 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-3** (Feira não aprovou o projeto): O engenheiro refaz detalhamento, cargas e pontos aéreos. Registro: `REGISTROS/decisao__20261104-1043-feira-nao-aprovou-7hjq.md`

## Fluxo macro (5)

- `UNI-00287` `FLX-MACRO` `proposto` Credenciamento, fase 1 Entrada: recebe a demanda do Planejamento, abre a pasta do projeto e coleta os dados cadastrais do cliente. _[DOC-013 · §01 Fase 1 (CRD-E1 a E3) · ITM-00349]_
- `UNI-00288` `FLX-MACRO` `proposto` Credenciamento, fase 2 Portal da feira: levanta as exigências no portal do expositor, gera o checklist e compatibiliza o cronograma da feira com o da Imagine. _[DOC-013 · §01 Fase 2 (CRD-E4 a E7) · ITM-00350]_
- `UNI-00289` `FLX-MACRO` `proposto` Credenciamento, fase 3 Coleta: responsáveis entregam os documentos e o setor elabora os próprios, até o checklist ficar 100% completo. _[DOC-013 · §01 Fase 3 (CRD-E8 a E11) · ITM-00351]_
- `UNI-00290` `FLX-MACRO` `proposto` Credenciamento, fase 4 Validação: o jurídico-financeiro confere todos os documentos e a Maitê dá o ok final. _[DOC-013 · §01 Fase 4 (CRD-E12 e E13) · ITM-00352]_
- `UNI-00291` `FLX-MACRO` `proposto` Credenciamento, fase 5 Publicação: projeto e documentos vão ao portal da feira e a pasta final fica salva para a Montagem retirar as credenciais. _[DOC-013 · §01 Fase 5 (CRD-E14 a E16) · ITM-00353]_

## Etapas do fluxo (16)

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

## Pontos de decisão (3)

- `UNI-00564` `FLX-DECISAO` `proposto` Credenciamento, CRD-E11: se o checklist está 100% completo segue; se não, o Portal cobra o responsável pelo documento pendente e a pasta continua bloqueada. _[DOC-013 · CRD-E11 · ITM-00364]_
- `UNI-00565` `FLX-DECISAO` `proposto` Credenciamento, CRD-E13: se a Maitê deu o ok final segue; se não, o Credenciamento ou o responsável corrige e reenvia para conferência. _[DOC-013 · CRD-E13 · ITM-00366]_
  - Requisitos separados deste item: `UNI-00565.01`
- `UNI-00580.01` `FLX-DECISAO` `a-conferir` Credenciamento, etapa CRD-E15: a feira aprova, ou há ajuste e nova publicação. _[DOC-091 · §5 Credenciamento, CRD-E15 · ITM-01919 · parte de UNI-00580]_
  - **Decisão (Ver decisão do item 3):** O engenheiro refaz detalhamento, cargas e pontos aéreos. Registro: `REGISTROS/decisao__20261104-1043-feira-nao-aprovou-7hjq.md`

## Notificações (3)

- `UNI-00565.01` `FLX-NOTIF` `vigente` Documento não conforme: o agente de IA notifica a Alexandra para refazer e subir de novo no sistema, e a conferência roda outra vez. _[DOC-091 · Respostas do Diego, Conferência do Credenciamento (CRD-E12) · ITM-01915 · parte de UNI-00565]_
- `UNI-00606` `FLX-NOTIF` `proposto` Credenciamento, CRD-E8: o Portal notifica o responsável por cada documento (arquiteto do projeto, engenheiro, Planejamento e Expedição). _[DOC-013 · CRD-E8 · ITM-00361]_
- `UNI-01536` `FLX-NOTIF` `vigente` Formulário de deslocamento vai ao Credenciamento: a Alexandra recebe a lista, coleta os dados de cada colaborador e gera os documentos de credenciamento na feira. _[DOC-091 · §Respostas Formulário de deslocamento (CRD-E8) · ITM-02072]_

## Módulos e telas (3)

- `UNI-00010` `ESC-MODULO` `vigente` Credenciamento tem IA que confere documentos; montagem tem checklist com foto e plantão técnico; termo de entrega com assinatura eletrônica. _[DOC-003 · Mapa, cartão 10 Credenciamento e Montagem · ITM-00079]_
- `UNI-00666` `ESC-MODULO` `proposto` Aba do Credenciamento: pasta do projeto, dados do cliente, acesso ao portal do expositor, checklist, status de cada documento, cronograma compatibilizado e pasta final. _[DOC-013 · §04 Aba do Credenciamento · ITM-00376]_
  - Requisitos separados deste item: `UNI-00666.01`, `UNI-00666.02`
- `UNI-00666.01` `ESC-MODULO` `proposto` Módulo Credenciamento (setor 08): checklist obrigatório, cronograma compatibilizado e pasta final. _[DOC-091 · §3 Módulos do ERP, Credenciamento · ITM-01609 · parte de UNI-00666]_

## Perfis e responsáveis (1)

- `UNI-00034` `ESC-PERFIL` `proposto` Credenciamento cuida do portal da feira, aprovação do projeto pelo evento, RRTs, equipe, hotéis, frete e kit de credenciais, com engenheiro e arquiteto. _[DOC-030 · §05 Setores, card 08 · ITM-00682]_

## Entidades e campos (5)

- `UNI-00625` `ESC-DADOS` `proposto` Status de cada documento do checklist: pendente, solicitado, recebido, conferido pela Maitê, publicado e aprovado pela feira. _[DOC-013 · §04 Status de cada documento · ITM-00378]_
- `UNI-00665` `ESC-DADOS` `proposto` Checklist básico: projeto aprovado, projeto estrutural, detalhamento parcial, planta elétrica, pontos de carga e cabos de aço, laudo do engenheiro, cálculo de carga, RRTs, termo de responsabilidade, documentos dos funcionários e dados do caminhão. _[DOC-013 · §03 Checklist obrigatório · ITM-00372]_
  - Requisitos separados deste item: `UNI-00665.01`
- `UNI-00665.01` `ESC-DADOS` `proposto` Checklist básico do Credenciamento: projeto aprovado, projeto estrutural, detalhamento parcial, planta elétrica, pontos de carga e cabos de aço, laudo do engenheiro, carga aérea, RRTs, termo, documentos dos funcionários, caminhão e placa. _[DOC-091 · §5 Credenciamento, checklist básico · ITM-01921 · parte de UNI-00665]_
- `UNI-00666.02` `ESC-DADOS` `proposto` Documento de credenciamento: tipo, responsável, prazo e status (pendente, solicitado, recebido, conferido, publicado, aprovado). _[DOC-091 · §4 Entidades e dados principais, Documento de credenciamento · ITM-01634 · parte de UNI-00666]_
- `UNI-00667` `ESC-DADOS` `proposto` Cronograma compatibilizado tem linhas de prazos da feira, cronograma macro da Imagine (SET07), prazo de cada documento por responsável e alertas antes de cada vencimento. _[DOC-013 · §04 Cronograma compatibilizado · ITM-00379]_

## Integrações (1)

- `UNI-00117.01` `ESC-INTEG` `proposto` Portal do expositor de cada feira, acessado com o login do cliente. _[DOC-091 · §9 Integrações, portal do expositor · ITM-02135 · parte de UNI-00117]_

## Prazos (4)

- `UNI-00086` `REG-PRAZO` `vigente` Credenciamento, a pasta do credenciamento deve ser aprovada dentro do prazo do manual da feira. _[DOC-012 · §03 Marcos (PLA-E17) · ITM-00327]_
- `UNI-00924.01` `REG-PRAZO` `vigente` Documentos do Credenciamento: cada setor tem 3 dias, a partir da notificação, para devolver o documento à Alexandra. _[DOC-091 · Respostas do Diego, Documentos do Credenciamento (CRD-E9) · ITM-01910 · parte de UNI-00924]_
- `UNI-00928.01` `REG-PRAZO` `vigente` Ok final do Credenciamento: a Maitê dá em até 5 dias. _[DOC-091 · Respostas do Diego, Conferência do Credenciamento (CRD-E12) · ITM-01917 · parte de UNI-00928]_
- `UNI-01628` `REG-PRAZO` `vigente` Prazo do formulário de deslocamento: segue o manual de cada feira (ex.: 15 ou 20 dias antes); a Alexandra define o limite, que entra no cronograma reverso da Érika (PLA-E3, CRD-E7). _[DOC-091 · §Respostas Prazo do formulário de deslocamento · ITM-02073]_

## Aprovações e alçadas (1)

- `UNI-00179` `REG-APROV` `proposto` Toda validação de documentos do credenciamento passa pelo jurídico-financeiro e tem o ok final da Maitê. _[DOC-013 · §03 Regra · ITM-00371]_

## Acesso e visibilidade (1)

- `UNI-00117` `REG-ACESSO` `proposto` Login e senha do cliente no portal da feira são guardados na aba do Credenciamento com acesso restrito. _[DOC-013 · §04 Aba do Credenciamento · ITM-00377]_
  - Requisitos separados deste item: `UNI-00117.01`

## Qualidade (1)

- `UNI-00206` `REG-QUAL` `proposto` A pasta do Credenciamento só é liberada, usada e publicada com todos os itens do checklist resolvidos (100%) e o ok da Maitê, para não esquecer documento nem levar multa por atraso; é a pasta que a Montagem usa no pavilhão. _[DOC-013 · §04 Pasta final · ITM-00380]_

## Legal e fiscal (1)

- `UNI-00180` `REG-LEGAL` `proposto` Credenciamento exige RRT de projeto, RRT de execução e RRT de elétrica (projeto e execução) em todas as feiras, além do termo de responsabilidade. _[DOC-013 · §03 Checklist (RRT) · ITM-00373]_

## Regras operacionais (1)

- `UNI-00205` `REG-OPER` `proposto` Planta de pontos de carga e cabos de aço e o cálculo de carga dos pontos aéreos só são exigidos quando há estrutura suspensa no pavilhão; os demais itens variam conforme o manual da feira. _[DOC-013 · §03 Checklist · ITM-00374]_

## Pendências (8)

- `UNI-00923` `PEND` `pendente` Credenciamento: não foi informado se o laudo do engenheiro é exigido sempre ou só quando há estrutura suspensa. _[DOC-013 · §06 item 3 · ITM-00383]_
- `UNI-00924` `PEND` `pendente` CRD-E9: não foi informado o prazo para cada setor devolver o documento ao Credenciamento após a notificação. _[DOC-013 · §06 item 5 (CRD-E9) · ITM-00385]_
  - Requisitos separados deste item: `UNI-00924.01`
- `UNI-00925` `PEND` `pendente` CRD-E4: não foi informado quem pede o login e a senha ao cliente (Credenciamento, vendedor ou assistente comercial). _[DOC-013 · §06 item 6 (CRD-E4) · ITM-00386]_
- `UNI-00926` `PEND` `pendente` Taxas da feira (energia, montagem, seguro): não foi informado se o Credenciamento levanta e pede o pagamento ao Financeiro. _[DOC-013 · §06 item 7 · ITM-00387]_
- `UNI-00927` `PEND` `pendente` CRD-E7: não foi informado quantos dias antes de cada prazo da feira o Portal deve alertar. _[DOC-013 · §06 item 8 (CRD-E7) · ITM-00388]_
- `UNI-00928` `PEND` `pendente` CRD-E13: não foi informado o prazo da Maitê para conferir e dar o ok final. _[DOC-013 · §06 item 9 (CRD-E13) · ITM-00389]_
  - Requisitos separados deste item: `UNI-00928.01`, `UNI-00928.02`
- `UNI-01108` `PEND` `inferido` `conf:media` No checklist do Credenciamento, a coluna de quem fornece cada documento (arquiteto, engenheiro, Projetos, Planejamento, Expedição) é inferida e deve ser confirmada, em especial se o engenheiro é da casa ou terceirizado e quem reúne os documentos dos funcionários. _[DOC-013 · §06 item 2 · ITM-00382]_
- `UNI-01109` `PEND` `a-conferir` CRD-E15: o retorno da feira com exigências passa de novo pela Maitê antes de publicar; inferido como sim, a confirmar. _[DOC-013 · §06 item 4 (CRD-E15) · ITM-00384]_
  - **Atenção (leitura do Claude):** item 3: Diz que o retorno da feira passa de novo pela Maitê antes de publicar (inferido). A decisão escolheu o engenheiro refazer e não cita a Maitê.

## Não usar: substituídos ou desatualizados (1)

- `UNI-01153` `ESC-PERFIL` `desatualizado` `conf:media` O responsável pelo Credenciamento, pergunta aberta no SET08, já tem resposta no ERP-001: Alexandra (o cadastro traz "Alessandra"; confirmar se é a mesma pessoa). _[DOC-090 · §4 linha Responsável pelo Credenciamento · ITM-01576]_
  - Requisitos separados deste item: `UNI-01153.01`

