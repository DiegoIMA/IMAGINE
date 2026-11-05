---
id: ERP-MOD-CMP
titulo: Módulo Compras
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# CMP · Compras

58 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-5** (Aprovação de compras): Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
- **ponto-2** (Valor orçado em Compras): O comprador não vê o valor orçado. O sistema compara orçado e comprado sem mostrar o orçado a ele. **Em aberto:** Quem vê o resultado dessa comparação. Quem aprova depois do alerta de preço. Registro: `REGISTROS/decisao__20261104-1855-compras-sem-orcado-7vi7.md`

## Fluxo macro (1)

- `UNI-00329` `FLX-MACRO` `substituido-parcial` Ciclo da OC: FIC ou estoque mínimo gera SOL, checa estoque, cotação, OC em rascunho comparada ao ORC-001, aprovação por alçada, envio por e-mail, confirmação, recebimento conferido, NF e pagamento. _[DOC-032 · §05 Ordem de compra · ITM-00782]_
  - **Continua valendo:** O ciclo cotação, ordem de compra, envio, confirmação, recebimento conferido, nota fiscal e pagamento continua.
  - **Mudou:** A origem é a comanda vinda da pré-comanda automática, e não a ficha (item-21); no lugar das alçadas vale o alerta de preço (item-5); o comprador não vê o orçado (ponto-2); quem aprova depois do alerta está em aberto.

## Etapas do fluxo (16)

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

## Notificações (7)

- `UNI-00229` `FLX-NOTIF` `proposto` O fornecedor recebe a OC por e-mail do sistema e confirma por link; o WhatsApp serve só para avisar. _[DOC-032 · §05 Lista de regras · ITM-00791]_
- `UNI-00597` `FLX-NOTIF` `proposto` Com as comandas aprovadas, as listas de compras são autorizadas e o Portal avisa o setor de Compras. _[DOC-010 · FIN-E6 · ITM-00245]_
  - Requisitos separados deste item: `UNI-00597.01`
- `UNI-00752.04` `FLX-NOTIF` `proposto` O sistema cruza a agenda de chegadas com os carregamentos da Expedição (EXP-E8); se descarga e carregamento coincidem no horário, ou duas descargas se sobrepõem, avisa a equipe da unidade e o comprador para reagendar. _[DOC-091 · §5 Compras, agenda de chegada de materiais, alerta de conflito · ITM-01766 · parte de UNI-00752]_
- `UNI-00752.05` `FLX-NOTIF` `proposto` Na véspera e no dia, a equipe da unidade recebe o resumo das entregas previstas; na chegada, quem recebe dá baixa no app. _[DOC-091 · §5 Compras, agenda de chegada de materiais, aviso de chegada · ITM-01767 · parte de UNI-00752]_
- `UNI-01507` `FLX-NOTIF` `proposto` `conf:media` Notificação diária à Maitê em dois caminhos separados, compras São Paulo e compras Rio Grande do Sul; as ordens de frete, equipes terceirizadas e viagem seguem a mesma separação por unidade. _[DOC-091 · §5 Compras · ITM-01761]_
- `UNI-01508` `FLX-NOTIF` `proposto` Se o material não chegar no horário, o sistema avisa o comprador e o Planejamento, pois pode alterar as datas das fichas. _[DOC-091 · §5 Compras, Atraso · ITM-01768]_
- `UNI-01538` `FLX-NOTIF` `vigente` A Maitê recebe notificação diária dos dois caminhos de compras (RS e SP). _[DOC-091 · §Respostas Compras · cotação (FIN-E7) · ITM-02077]_

## Perfis e responsáveis (3)

- `UNI-01394.01` `ESC-PERFIL` `vigente` Compras é setor próprio, separado do Financeiro, com dois fluxos simultâneos por unidade: Rio Grande do Sul com Osmar e São Paulo com Samanta; a Maitê (Financeiro) atende as duas. _[DOC-091 · §5 Compras (setor próprio); Respostas do Diego, Compras cotação (FIN-E7) · ITM-01750 · parte de UNI-01394]_
- `UNI-01394.02` `ESC-PERFIL` `vigente` Compras vira setor próprio, com Osmar (RS) e Samanta (SP) em fluxos separados, cada um com seu cadastro de fornecedores e suas ordens de compra. _[DOC-091 · Respostas do Diego, Compras cotação (FIN-E7) · ITM-02075 · parte de UNI-01394]_
- `UNI-01394.03` `ESC-PERFIL` `proposto` Perfil Compras (Osmar): ordens de compra e notas. _[DOC-091 · §8 Perfis de acesso, Compras · ITM-02121 · parte de UNI-01394]_

## Documentos gerados (3)

- `UNI-00051` `ESC-DOC` `proposto` Compras (setor ainda a ditar): SOL solicitação, COT mapa de cotação, OC ordem de compra, OS ordem de serviço a terceiros e REC recebimento conferido. _[DOC-032 · §04 Fase 6 Compras · ITM-00779]_
- `UNI-00690` `ESC-DOC` `substituido-parcial` Campos da OC: cabeçalho (nº, versão, comprador, job), fornecedor (código, CNPJ, pagamento, frete CIF/FOB), itens (MAT, IT, quantidade, preço, entrega), entrega, controle (orçado x OC) e fechamento (REC, NF, pagamentos). _[DOC-032 · §05 Campos mínimos da OC · ITM-00784]_
  - **Continua valendo:** Os campos da ordem de compra continuam.
  - **Mudou:** O controle de orçado contra comprado não aparece para o comprador (ponto-2).
  - Requisitos separados deste item: `UNI-00690.01`
- `UNI-00690.01` `ESC-DOC` `proposto` `conf:media` Ordem de compra: itens, fornecedor, prazo, forma de pagamento, IBS/CBS, nota fiscal e situação. _[DOC-091 · §4 Entidades e dados principais, Ordem de compra (FIN-E7 a E11) · ITM-01630 · parte de UNI-00690]_

## Entidades e campos (6)

- `UNI-00635` `ESC-DADOS` `a-conferir` Status da OC: RASCUNHO, EM APROVAÇÃO, APROVADA, ENVIADA, CONFIRMADA, RECEBIDA PARCIAL, RECEBIDA, FATURADA, PAGA, ENCERRADA ou CANCELADA (com motivo). _[DOC-032 · §05 Status da OC · ITM-00783]_
  - **Atenção (leitura do Claude):** item 5: "em aprovação" vem do ciclo com alçadas, e falta o estado do alerta de preço. Veja ERP-CRM/10_ESTADOS-PRINCIPAIS.md.
- `UNI-00661` `ESC-DADOS` `a-conferir` Comanda: item e código, setor que pediu, previsto no custo, pedido para a produção, diferença e status (aprovado, devolvido, em compra, comprado, entregue). _[DOC-010 · §04 Comanda de materiais · ITM-00248]_
  - **Atenção (leitura do Claude):** item 21: A comanda tem "setor que pediu" e "pedido". Pode ainda valer para os ajustes.
  - Requisitos separados deste item: `UNI-00661.01`
- `UNI-00752.03` `ESC-DADOS` `proposto` Status da chegada de material: previsto, chegou, descarregado ou atrasado. _[DOC-091 · §5 Compras, agenda de chegada de materiais, campo Status · ITM-01765 · parte de UNI-00752]_
- `UNI-01451` `ESC-DADOS` `vigente` No ERP: cadastro de fornecedores com histórico de preços por material, e registro das cotações e do fornecedor escolhido em cada ordem de compra. _[DOC-091 · §Respostas Compras · cotação (FIN-E7) · ITM-02078]_
- `UNI-01597` `ESC-DADOS` `proposto` `conf:media` Cada unidade de compras tem o seu cadastro de fornecedores e as suas ordens de compra. _[DOC-091 · §5 Compras · ITM-01751]_
- `UNI-01599` `ESC-DADOS` `proposto` A ordem de compra tem campo obrigatório: entrega pelo fornecedor ou coleta com veículo da Imagine; a coleta aparece destacada na agenda e na conciliação, com endereço, horário e material. _[DOC-091 · §5 Compras, Coleta com veículo próprio · ITM-01772]_

## Aprovações e alçadas (5)

- `UNI-00104` `REG-APROV` `proposto` Toda compra segue o fluxo oficial (cotação, ordem de compra, aprovação da Maitê) e nenhum pagamento é combinado fora da ordem de compra. _[DOC-022 · §4 Regras de uso, item 4 · ITM-00598]_
  - Requisitos separados deste item: `UNI-00104.01`
- `UNI-00104.01` `REG-APROV` `a-conferir` Compras: a Maitê confere a ordem e, se não bater com a comanda e o custo, ela volta para Compras da unidade. _[DOC-091 · §5 Compras, CMP-E4 (FIN-E8) · ITM-01756 · parte de UNI-00104]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
- `UNI-00108` `REG-APROV` `proposto` Uma OC aprovada que muda de valor para cima gera nova versão e volta para aprovação; mudança só de prazo é registrada sem nova aprovação e avisa o CRO-002. _[DOC-032 · §05 Lista de regras · ITM-00789]_
- `UNI-00200.02` `REG-APROV` `proposto` Quando o cliente paga direto o fornecedor, a contratação exige aprovação do cliente. _[DOC-091 · §40 Produção de Evento, fase 5 Contratação · ITM-02439 · parte de UNI-00200]_
- `UNI-00881.01` `REG-APROV` `vigente` Se o preço do comprador diferir das três fontes além do limite de 10% (configurável), a ordem de compra não segue direto: comprador (Osmar no RS, Samanta em SP) e Maitê recebem alerta e o comprador justifica ou renegocia. _[DOC-091 · §16 Compras, pesquisa paralela de preços, quadro comparativo · ITM-02218 · parte de UNI-00881]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`

## Cálculos e critérios (1)

- `UNI-00752.09` `REG-CALC` `proposto` Fonte histórico: compara com o último preço pago e com a média dos últimos meses do mesmo material. _[DOC-091 · §16 Compras, pesquisa paralela de preços, fonte 1 · ITM-02215 · parte de UNI-00752]_

## Regras operacionais (11)

- `UNI-00199` `REG-OPER` `vigente` Fornecedor de serviço Imagine: a Imagine contrata e o cliente paga a Imagine. Fornecedor intermediado: a Imagine contrata e paga, repassando ao cliente. _[DOC-002 · §43 Produção de evento, tabela de fornecedores · ITM-00048]_
  - Requisitos separados deste item: `UNI-00199.01`, `UNI-00199.02`
- `UNI-00199.01` `REG-OPER` `proposto` Serviço Imagine: a Imagine contrata, o cliente paga a Imagine, e segue o fluxo normal de produção. _[DOC-091 · §40 Produção de Evento, tipos de fornecedor · ITM-02431 · parte de UNI-00199]_
- `UNI-00199.02` `REG-OPER` `proposto` Fornecedor intermediado: a Imagine contrata e paga, repassa ao cliente, e o fornecedor entra em custos e compras. _[DOC-091 · §40 Produção de Evento, tipos de fornecedor · ITM-02432 · parte de UNI-00199]_
- `UNI-00200` `REG-OPER` `vigente` Fornecedor gerenciado: a Imagine contrata em nome do cliente e o cliente paga direto, fora do caixa da Imagine. _[DOC-002 · §43 Produção de evento, tabela de fornecedores · ITM-00049]_
  - Requisitos separados deste item: `UNI-00200.01`, `UNI-00200.02`
- `UNI-00200.01` `REG-OPER` `proposto` Fornecedor gerenciado: a Imagine contrata em nome do cliente, o cliente paga direto, a Imagine controla prazo, entrega e qualidade, e o valor não entra no caixa. _[DOC-091 · §40 Produção de Evento, tipos de fornecedor · ITM-02433 · parte de UNI-00200]_
- `UNI-00225` `REG-OPER` `proposto` OC aberta: contrato de fornecimento com preço, validade e teto negociados e aprovados uma vez, com chamadas que só conferem preço e saldo. _[DOC-032 · §05 Compras recorrentes · ITM-00786]_
- `UNI-00227` `REG-OPER` `proposto` "Repetir compra" copia fornecedor e itens de uma OC antiga; se a cotação estiver vencida, volta para COT antes da aprovação. _[DOC-032 · §05 Compras recorrentes · ITM-00788]_
- `UNI-00752` `REG-OPER` `vigente` Compras: pesquisa paralela de preços com alerta de 10%, agenda de chegadas e conciliação diária. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00028]_
  - Requisitos separados deste item: `UNI-00752.01`, `UNI-00752.02`, `UNI-00752.03`, `UNI-00752.04`, `UNI-00752.05`, `UNI-00752.06`, `UNI-00752.07`, `UNI-00752.08`, `UNI-00752.09`, `UNI-00752.10`, `UNI-00752.11`, `UNI-00752.12`, `UNI-00752.13`
- `UNI-00752.12` `REG-OPER` `proposto` `conf:media` Locações: cotação pelo histórico de fornecedores de locação da unidade e pesquisa paralela de preços (histórico, cotação automática e internet), com alerta acima de 10%. _[DOC-091 · §18 Locações · ITM-02227 · parte de UNI-00752]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
- `UNI-00752.13` `REG-OPER` `proposto` `conf:media` Locações mantém agenda de chegadas e conciliação diária com Compras, e contata fornecedores só pelo WhatsApp corporativo, conforme PLANDEM_POL-001. _[DOC-091 · §18 Locações; §17 Política de uso de dispositivos e WhatsApp corporativo · ITM-02229 · parte de UNI-00752]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-01598` `REG-OPER` `proposto` A ordem de compra exige data e horário de entrega; sem eles a ordem não é enviada. _[DOC-091 · §5 Compras, CMP-E3 · ITM-01755]_

## Pendências (3)

- `UNI-00881` `PEND` `decisao-diego` Aprovação de compras: o SET05 não admite tolerância e aprova toda comanda; o IMG-PAD-003 libera até R$ 2.000 no orçado (valor de exemplo); o ERP-001 prevê alerta de preço de 10%. _[DOC-090 · §3 item 5 · ITM-01565]_
  - **Decisão (Decidido por Diego):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
  - Requisitos separados deste item: `UNI-00881.01`
- `UNI-00975` `PEND` `pendencia-parcial` As faixas de aprovação da OC (R$ 2.000, R$ 10.000 e 5%) são apenas exemplos e não foram informadas; falta também o número mínimo de cotações e o valor a partir do qual vale. _[DOC-032 · §09 Validar · ITM-00807]_
  - **Atenção (leitura do Claude):** item 5: as faixas de aprovação caíram; só o número mínimo de cotações e o valor a partir do qual vale seguem em aberto.
- `UNI-00976` `PEND` `pendente` Falta definir quem confere o recebimento (REC) de material na fábrica e quando a entrega é direto no pavilhão, além de validade e teto padrão da OC aberta. _[DOC-032 · §09 Validar · ITM-00808]_

## Não usar: substituídos ou desatualizados (2)

- `UNI-00107` `REG-APROV` `substituido` `conf:media` Faixa A até R$ 2.000 e dentro do orçado: comprador; B até R$ 10.000 ou até 5% acima do orçado: Financeiro; C acima disso ou sem linha no ORC: Diretoria. Valores são exemplo a validar. _[DOC-032 · §05 Faixas de aprovação · ITM-00785]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
- `UNI-00391` `FLX-MICRO` `substituido` `conf:media` Comanda de materiais: cada setor lista o que usará no projeto detalhado e o Planejamento reúne. _[DOC-010 · FIN-E3 · ITM-00241]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`

