---
id: ERP-MOD-EXP
titulo: Módulo Expedição e qualidade
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# EXP · Expedição e qualidade

61 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (6)

- `UNI-00296` `FLX-MACRO` `proposto` Expedição, fase 1 Recebimento: a peça concluída é recebida com leitura do QR code. _[DOC-015 · §01 Fase 1 (EXP-E1 e E2) · ITM-00438]_
  - Requisitos separados deste item: `UNI-00296.01`
- `UNI-00296.01` `FLX-MACRO` `proposto` A ficha concluída no último setor da cadência (PLA-E19/PRD-E10) chega à Expedição (EXP-E1). _[DOC-091 · §2 Fluxo entre setores, item 9 Produção → Expedição · ITM-01596 · parte de UNI-00296]_
- `UNI-00297` `FLX-MACRO` `a-conferir` Expedição, fase 2 Qualidade: nova verificação com foto e ok no sistema. _[DOC-015 · §01 Fase 2 (EXP-E3 e E4) · ITM-00439]_
  - **Atenção (leitura do Claude):** item 22: Coloca a verificação de qualidade dentro da Expedição. Na ordem decidida, o Controle de qualidade vem antes.
- `UNI-00298` `FLX-MACRO` `proposto` Expedição, fase 3 Embalagem e etiqueta: a peça é embalada e recebe etiqueta com foto e código. _[DOC-015 · §01 Fase 3 (EXP-E5 a E7) · ITM-00440]_
- `UNI-00299` `FLX-MACRO` `proposto` Expedição, fase 4 Carregamento: controle do carregado versus previsto. _[DOC-015 · §01 Fase 4 (EXP-E8 e E9) · ITM-00441]_
  - Requisitos separados deste item: `UNI-00299.01`
- `UNI-00300` `FLX-MACRO` `proposto` Expedição, fase 5 Pavilhão: volumes descarregados, localizados pela etiqueta e desembalados e instalados pelo montador. _[DOC-015 · §01 Fase 5 (EXP-E10 a E12) · ITM-00442]_

## Etapas do fluxo (10)

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

## Pontos de decisão (2)

- `UNI-00572` `FLX-DECISAO` `proposto` Expedição, EXP-E4: se a peça é aprovada segue para embalar; se não, volta para a produção com alerta a Eduardo, Marília e Érika e entra no relatório de erros (inferido). _[DOC-015 · EXP-E4 · ITM-00446]_
- `UNI-01112` `FLX-DECISAO` `inferido` `conf:media` EXP-E4: peça reprovada volta ao setor que a fez, com alerta a Eduardo, Marília e Érika e registro no relatório de erros; inferido. _[DOC-015 · §07 EXP-E4 · ITM-00459]_

## Notificações (3)

- `UNI-00299.01` `FLX-NOTIF` `vigente` Carregado versus previsto (EXP-E9): se faltar item, o sistema alerta quais não foram conferidos, sem bloquear a saída do caminhão. _[DOC-091 · Respostas do Diego, Carregamento (EXP-E9); §5 Expedição, EXP-E9 · ITM-01968 · parte de UNI-00299]_
- `UNI-00452.01` `FLX-NOTIF` `vigente` Alerta de itens não conferidos vai à produção da unidade do projeto: Rio Grande do Sul = Eduardo e Marília; São Paulo = Rômulo e Samanta. _[DOC-091 · Respostas do Diego, Carregamento (EXP-E9) · ITM-01969 · parte de UNI-00452]_
- `UNI-00608` `FLX-NOTIF` `proposto` Expedição, EXP-E1: o Portal notifica a Expedição quando a peça é concluída no último setor da cadência. _[DOC-015 · EXP-E1 · ITM-00443]_

## Módulos e telas (3)

- `UNI-00009` `ESC-MODULO` `vigente` `conf:media` Expedição usa etiqueta final e conferência por QR; logística controla frete, escala, deslocamento, km, manutenção, lavagem e verba de viagem antifraude. _[DOC-003 · Mapa, cartão 09 Expedição, Logística e Frota · ITM-00078]_
  - Requisitos separados deste item: `UNI-00009.01`, `UNI-00009.02`, `UNI-00009.03`, `UNI-00009.04`, `UNI-00009.05`, `UNI-00009.06`, `UNI-00009.07`, `UNI-00009.08`, `UNI-00009.09`, `UNI-00009.10`, `UNI-00009.11`, `UNI-00009.12`, `UNI-00009.13`
- `UNI-00672.01` `ESC-MODULO` `a-conferir` `conf:media` Módulo Expedição e rastreio (setor 12): etiqueta com QR code, leituras e comparação carregado × previsto. _[DOC-091 · §3 Módulos do ERP, Expedição e rastreio (setor 12) · ITM-01612 · parte de UNI-00672]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`
- `UNI-00922.01` `ESC-MODULO` `a-conferir` `conf:baixa` O documento atual do setor 12 Controle de qualidade (PLANDEM_FLX-SET12, prefixo EXP) inclui a Expedição. _[DOC-091 · Respostas do Diego, Setores · ITM-01586 · parte de UNI-00922]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`

## Perfis e responsáveis (6)

- `UNI-00023.02` `ESC-PERFIL` `proposto` `conf:media` Perfil Qualidade (Suellen): relatório de conformidade. _[DOC-091 · §8 Perfis de acesso, Qualidade · ITM-02120 · parte de UNI-00023]_
- `UNI-00024` `ESC-PERFIL` `a-conferir` Expedição e logística é um novo setor, a mapear, que recebe as peças prontas pelo código e cuida do carregamento; Atendimento comercial envia o manual da feira e o relatório quando pedido. _[DOC-012 · §07 Composição no Portal · ITM-00344]_
  - **Atenção (leitura do Claude):** item 22: Trata Expedição e logística como um setor só.
- `UNI-00025` `ESC-PERFIL` `proposto` Composição: Expedição recebe, verifica, embala, etiqueta e controla o carregamento; Eduardo e Marília decidem refazer peças reprovadas; Érika acompanha o status; montadores usam o mesmo app. _[DOC-015 · §05 Composição no Portal · ITM-00456]_
- `UNI-00036` `ESC-PERFIL` `a-conferir` Expedição e qualidade confere, embala, etiqueta e fotografa as peças e controla o estoque de embalagens. _[DOC-030 · §05 Setores, card 12 · ITM-00684]_
  - **Atenção (leitura do Claude):** item 22: Trata Expedição e qualidade juntas.
- `UNI-01154.01` `ESC-PERFIL` `proposto` `conf:media` Perfil Credenciamento e Expedição (Alexandra no Credenciamento, Suellen na Expedição): acesso à aba do setor. _[DOC-091 · §8 Perfis de acesso, Credenciamento e Expedição · ITM-02123 · parte de UNI-01154]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-01399` `ESC-PERFIL` `vigente` Expedição e qualidade: Suellen no RS e assistente do Rômulo (a contratar) em SP. Almoxarifado: Seu Marcos no RS e assistente do Rômulo em SP. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00021]_
  - Requisitos separados deste item: `UNI-01399.01`

## Documentos gerados (7)

- `UNI-00052` `ESC-DOC` `substituido-parcial` `conf:media` Produção, expedição e evento: avanço na própria FIC, AMO aprovação de amostra, CHK-001 qualidade, ROM-001 romaneio e etiquetas, CHK-002 montagem e TER-001 termo de entrega. _[DOC-032 · §04 Fases 7 e 8 · ITM-00780]_
  - **Continua valendo:** Existem avanço na ficha, aprovação de amostra, checklists de qualidade e montagem, romaneio, etiquetas e termo de entrega.
  - **Mudou:** Ficha técnica usa FT no lugar de FIC (item-12).
- `UNI-00415` `ESC-DOC` `vigente` Planejamento, PLA-E22: relatório de conformidade e controle de qualidade, visual e com fotos de cada item, alimentado pela Qualidade e pela Produção. _[DOC-012 · PLA-E22 · ITM-00318]_
  - Requisitos separados deste item: `UNI-00415.01`
- `UNI-00415.01` `ESC-DOC` `proposto` `conf:media` Planejamento, etapa PLA-E22: relatório de conformidade com fotos, feito por Suellen e Produção. _[DOC-091 · §5 Planejamento, PLA-E22 · ITM-01898 · parte de UNI-00415]_
- `UNI-00671` `ESC-DOC` `substituido-parcial` Etiqueta de expedição: código (projeto, item e subitem), nome do produto, foto, QR code, projeto e feira (inferido), volume (proposta) e tamanho legível de longe (proposta 10 x 15 cm); tipo de impressora e "volume 1 de 3" para peça em várias embalagens ainda a validar. _[DOC-015 · §03 Etiqueta de expedição · ITM-00454]_
  - **Continua valendo:** Os campos da etiqueta de expedição continuam, com os pontos que o texto já marca como a validar.
  - **Mudou:** O código do item segue o item-9.
  - Requisitos separados deste item: `UNI-00671.01`
- `UNI-00671.01` `ESC-DOC` `a-conferir` Etiqueta: código, nome, foto, QR code, projeto e feira, volume 1 de N. _[DOC-091 · §4 Entidades e dados principais, Etiqueta; §5 Expedição, EXP-E6 · ITM-01632 · parte de UNI-00671]_
  - **Decisão (Ver decisão do item 9):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- `UNI-00696` `ESC-DOC` `a-conferir` CHK-001 Checklist de qualidade: IT, medidas, acabamento, funcionamento, conformidade com a amostra aprovada (AMO), embalagem e etiqueta, foto, responsável e data. _[DOC-032 · §06 CHK-001 · ITM-00798]_
  - **Atenção (leitura do Claude):** item 9: Usa IT como referência do item.
- `UNI-00733` `ESC-DOC` `fato` `conf:media` Termo de Entrega de Material de PDV: modelo com identificação das partes, dados da entrega, itens entregues, vistoria na loja, ressalvas, condições, registro fotográfico e assinaturas de Imagine, contratante e loja. _[DOC-060 · Seções 1 a 8 · ITM-01312]_

## Entidades e campos (6)

- `UNI-00672` `ESC-DADOS` `a-conferir` Leituras do QR code registram: peça pronta, recebimento, verificação de qualidade, etiqueta colada, carregamento, descarregamento (proposta, para registrar a chegada de cada volume ao pavilhão), desembalada e instalada, com quem leu e o que fica registrado. _[DOC-015 · §04 Leituras do QR code · ITM-00455]_
  - **Atenção (leitura do Claude):** item 22: A Especificação (ITM-01612) traz Expedição como setor 12. Os números estão em aberto.
  - Requisitos separados deste item: `UNI-00672.01`, `UNI-00672.02`
- `UNI-00672.02` `ESC-DADOS` `proposto` Leitura de QR code: peça, evento, usuário, data e hora. _[DOC-091 · §4 Entidades e dados principais, Leitura de QR code · ITM-01633 · parte de UNI-00672]_
- `UNI-00709` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV, dados da entrega: pedido ou OS, campanha, vigência, data e hora, tipo (somente entrega, com instalação, com manutenção), nota fiscal ou romaneio, equipe Imagine e promotor do cliente presente. _[DOC-060 · §2 Dados da entrega · ITM-01313]_
- `UNI-00710` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV, tabela de itens: material (display de chão, ilha, testeira, wobbler, stopper, cartaz, adesivo de piso, clip strip), especificação, local, quantidade pedida e entregue, e status (Entregue, Instalado, com ressalva, Não entregue). _[DOC-060 · §3 Itens entregues · ITM-01314]_
- `UNI-00711` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV, amostra aprovada: peça, material (PS, PVC expandido, papelão, acrílico, MDF, vinil), espessura, impressão ou acabamento, medidas finais e aprovador com data; as peças entregues devem igualar a amostra. _[DOC-060 · §3.1 Amostra de referência · ITM-01315]_
- `UNI-00712` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV: assinatura por Imagine (contratada), contratante (marca ou indústria) e loja (gerente ou responsável), com nome, cargo, local e data; Leandro [PES-00012] consta como responsável da Imagine. _[DOC-060 · §8 Assinaturas · ITM-01321]_

## Integrações (1)

- `UNI-01454` `ESC-INTEG` `proposto` Impressão de etiquetas integrada ao sistema. _[DOC-091 · §9 Integrações · ITM-02137]_

## Prazos (2)

- `UNI-00087` `REG-PRAZO` `vigente` Planejamento, o relatório de conformidade (Suellen e Produção) é feito durante a produção, até o carregamento; o carregamento é em D0 e fica com Expedição e logística. _[DOC-012 · §03 Marcos (PLA-E22) · ITM-00328]_
- `UNI-00938.01` `REG-PRAZO` `vigente` Peça reprovada na Expedição: a produção tem 3 dias para corrigir. _[DOC-091 · Respostas do Diego, Peça reprovada na Expedição (EXP-E4) · ITM-01963 · parte de UNI-00938]_

## Códigos e rastreabilidade (1)

- `UNI-01497` `REG-CODIGO` `decisao-diego` `conf:media` Numeração de setores: 10 = Expedição, 11 = Logística, 12 = Controle de qualidade; o documento SET12 atual cobre Expedição e qualidade e será dividido. _[DOC-091 · §Respostas Setores · ITM-02026]_
  - **Decisão (Decidido em parte):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`

## Qualidade (2)

- `UNI-00165` `REG-QUAL` `inferido` Verificação de qualidade da expedição alimenta o relatório de conformidade (PLA-E22), pela Suellen (marcado como inferido). _[DOC-015 · §05 Composição no Portal · ITM-00457]_
- `UNI-00177` `REG-QUAL` `fato` `conf:media` Termo de Entrega de PDV: vistoria com o responsável da loja confere quantidades, danos, cores e artes, preços e validade, firmeza dos displays, locais combinados, corredores livres, regras da rede, limpeza e fotos de antes e depois. _[DOC-060 · §4 Vistoria na loja · ITM-01316]_

## Legal e fiscal (2)

- `UNI-00265` `REG-LEGAL` `fato` `conf:media` Termo de Entrega de PDV: ao assinar, contratante e loja aceitam os itens, salvo ressalvas da seção 5; após a entrega a guarda passa à loja e ao contratante, e a Imagine não responde por danos de clientes ou da equipe da loja. _[DOC-060 · §6 Condições · ITM-01317]_
- `UNI-00266` `REG-LEGAL` `fato` `conf:media` Termo de Entrega de PDV: manutenção e reposição fora das ressalvas são orçadas à parte, salvo contrato; pendências da seção 5 são resolvidas nos prazos indicados sem custo quando de responsabilidade da Imagine. _[DOC-060 · §6 Condições · ITM-01319]_

## Cálculos e critérios (2)

- `UNI-01657` `REG-CALC` `vigente` Ao gerar cada ficha técnica, a IA define a embalagem ideal pelo tipo, medidas, peso e fragilidade do item (ex.: plástico bolha, filme stretch, cantoneira, caixa, manta), calcula as quantidades e as inclui na lista de materiais da ficha. _[DOC-091 · §28 Embalagem por item · ITM-02341]_
- `UNI-01659` `REG-CALC` `vigente` A IA compara a embalagem prevista com a consumida em cada projeto e ajusta os cálculos. _[DOC-091 · §28 Embalagem, Aprendizado · ITM-02345]_

## Pendências (6)

- `UNI-00922` `PEND` `a-conferir` Expedição e logística é setor novo, ainda a mapear e a incluir no PLANDEM_FLX-001. _[DOC-012 · §09 Validar antes de implantar · ITM-00347]_
  - **Atenção (leitura do Claude):** item 22: Trata Expedição e logística como um setor só.
  - Requisitos separados deste item: `UNI-00922.01`, `UNI-00922.02`
- `UNI-00922.02` `PEND` `a-conferir` `conf:media` Setores 10 (Expedição) e 11 (Logística) estão definidos, mas falta mapear o fluxo de cada um. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento; Respostas do Diego, Setores · ITM-02145 · parte de UNI-00922]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`
- `UNI-00938` `PEND` `pendente` EXP-E4: não foi informado o prazo para a produção corrigir uma peça reprovada na expedição. _[DOC-015 · §07 EXP-E4 · ITM-00460]_
  - Requisitos separados deste item: `UNI-00938.01`
- `UNI-00941` `PEND` `pendente` Ajuste pendente no EXP-E12 do SET12: no SET13 o QR code é lido só ao desembalar e a instalação é registrada pelo checklist (MON-E5); entra na próxima revisão do SET12. _[DOC-016 · §08 Ajuste em outro documento · ITM-00504]_
- `UNI-01070` `PEND` `pendente` Termo de Entrega de PDV: prazos de reclamação por defeitos não visíveis e de garantia de produção e montagem estão em branco no modelo (dias a preencher); a garantia não cobre desgaste, mau uso, umidade ou sol. _[DOC-060 · §6 Condições · ITM-01318]_
- `UNI-01539` `PEND` `pendente` Definir se o Portal bloqueia a saída do caminhão quando falta item. _[DOC-091 · §11 Pendências · ITM-02153]_

## Ideias sem compromisso (1)

- `UNI-00838` `IDEIA` `proposto` Proposta: o Portal bloquear a saída do caminhão quando falta item do projeto. _[DOC-015 · §07 EXP-E9 · ITM-00462]_

## Não usar: substituídos ou desatualizados (1)

- `UNI-01154` `ESC-PERFIL` `desatualizado` O responsável pela Expedição, pergunta aberta no SET12, já tem resposta no ERP-001: Suellen no RS e assistente a contratar em SP. _[DOC-090 · §4 linha Responsável pela Expedição · ITM-01577]_
  - Requisitos separados deste item: `UNI-01154.01`

