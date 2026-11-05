---
id: ERP-MOD-FID
titulo: Módulo Indicação e fidelidade
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# FID · Indicação e fidelidade

19 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (2)

- `UNI-00859.01` `FLX-MICRO` `proposto` `conf:media` O cliente promotor é convidado para indicação e case (POS-E8, MKT-E15) e a indicação volta como origem de cliente no SET02. _[DOC-091 · §2 Fluxo entre setores, gatilho 12; §5 Pós-feira, POS-E8; §5 Marketing, MKT-E15 · ITM-01599 · parte de UNI-00859]_
- `UNI-00859.03` `FLX-MICRO` `proposto` O cliente indica pelo Portal (empresa, contato e feira, ou link) e a indicação entra no CRM RD Station com a origem do indicador, atendida pelo vendedor. _[DOC-091 · §13 Programa de indicação com recompensa, metodologia, passos 1 e 2 · ITM-02185 · parte de UNI-00859]_

## Notificações (1)

- `UNI-00012.03` `FLX-NOTIF` `proposto` `conf:media` Todo mês o sistema dispara campanha pelo WhatsApp com os itens novos, sugestões de uso no próximo estande e convite para indicar, apontando para a página do programa no Portal. _[DOC-091 · §13 Programa de indicação com recompensa, campanha mensal · ITM-02196 · parte de UNI-00012]_

## Módulos e telas (4)

- `UNI-00012.02` `ESC-MODULO` `proposto` Programa de indicação: o cliente indica empresas e ganha upgrade no próximo estande, em três níveis com selo. _[DOC-091 · §13 Programa de indicação com recompensa · ITM-02183 · parte de UNI-00012]_
- `UNI-01464` `ESC-MODULO` `vigente` Selo do nível: digital no Portal, plaquinha discreta no estande se o cliente quiser, e nível visível ao vendedor no CRM. _[DOC-091 · §13 Programa de indicação, Selo · ITM-02192]_
- `UNI-01465` `ESC-MODULO` `vigente` Ambiente do programa no Portal: página em formato de apresentação com regulamento, passo a passo, três níveis e selos, nível atual e histórico de indicações do cliente. _[DOC-091 · §13 Programa de indicação, Ambiente · ITM-02193]_
- `UNI-01466` `ESC-MODULO` `vigente` Biblioteca de fidelização: portfólio de itens de upgrade na biblioteca macro, com foto, descrição e nível mínimo; itens ainda a definir. _[DOC-091 · §13 Programa de indicação, Biblioteca de fidelização · ITM-02194]_

## Dashboards e indicadores (1)

- `UNI-00012.04` `ESC-INDIC` `proposto` `conf:media` Relatório mensal da campanha: mensagens enviadas, acessos à página e indicações geradas. _[DOC-091 · §13 Programa de indicação com recompensa, campanha mensal · ITM-02198 · parte de UNI-00012]_

## Prazos (2)

- `UNI-00859.05` `REG-PRAZO` `proposto` O upgrade fica disponível para o próximo projeto do cliente, com validade de 12 meses. _[DOC-091 · §13 Programa de indicação com recompensa, metodologia, passo 4 · ITM-02187 · parte de UNI-00859]_
- `UNI-01632` `REG-PRAZO` `vigente` A Imagine define no início do ano todos os itens do ciclo de fidelização e libera novos itens a cada mês. _[DOC-091 · §13 Programa de indicação, Biblioteca de fidelização · ITM-02195]_

## Preço, margem e comissão (3)

- `UNI-01591` `REG-PRECO` `vigente` Nível Parceiro Imagine: 1 indicação fechada, upgrade até 0,5% do contrato indicado, com mobiliário, iluminação ou comunicação visual extra. _[DOC-091 · §13 Programa de indicação, Níveis · ITM-02189]_
- `UNI-01592` `REG-PRECO` `vigente` Nível Embaixador Imagine: 3 indicações fechadas, upgrade até 1% do contrato indicado, com prioridade na agenda de feiras concorridas. _[DOC-091 · §13 Programa de indicação, Níveis · ITM-02190]_
- `UNI-01593` `REG-PRECO` `vigente` Nível Imagine Signature: 5 indicações fechadas, upgrade até 1,5% do contrato indicado, com item exclusivo no estande e convite para eventos da Imagine. _[DOC-091 · §13 Programa de indicação, Níveis · ITM-02191]_

## Regras operacionais (3)

- `UNI-00859.02` `REG-OPER` `proposto` `conf:media` A recompensa vai sempre para a empresa do cliente como upgrade, nunca em dinheiro para quem indicou; validar compliance com a Maitê. _[DOC-091 · §13 Programa de indicação com recompensa, abertura · ITM-02184 · parte de UNI-00859]_
- `UNI-00859.04` `REG-OPER` `proposto` A indicação só conta depois do contrato assinado e do primeiro pagamento recebido. _[DOC-091 · §13 Programa de indicação com recompensa, metodologia, passo 3 · ITM-02186 · parte de UNI-00859]_
- `UNI-01631` `REG-OPER` `vigente` O controle do programa usa a base de pontos de fidelidade do Marketing (MKT-E14). _[DOC-091 · §13 Programa de indicação, MKT-E14 · ITM-02188]_

## Pendências (1)

- `UNI-00950` `PEND` `pendente` Regras de pontos, níveis e recompensas são sugestões e precisam ser validadas com o Financeiro (custo) antes de lançar. _[DOC-018 · §07 item 9 (MKT-E14, E15) · ITM-00566]_

## Ideias sem compromisso (2)

- `UNI-00858` `IDEIA` `proposto` Programa de fidelidade (sugestão): pontos proporcionais ao contrato (ex.: 1 ponto a cada R$ 1.000), níveis Bronze, Prata e Ouro, recompensas em serviço, validade (ex.: 24 meses) e extrato na aba do cliente. _[DOC-018 · §05 Programa de fidelidade · ITM-00555]_
- `UNI-00859` `IDEIA` `proposto` Programa de indicação (sugestão): recompensa só quando a indicação vira contrato, benefício de upgrade ao indicado e entrada como cliente de origem indicação no Comercial. _[DOC-018 · §05 Programa de indicação · ITM-00556]_
  - Requisitos separados deste item: `UNI-00859.01`, `UNI-00859.02`, `UNI-00859.03`, `UNI-00859.04`, `UNI-00859.05`

