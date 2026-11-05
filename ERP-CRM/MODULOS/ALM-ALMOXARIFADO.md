---
id: ERP-MOD-ALM
titulo: Módulo Almoxarifado
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# ALM · Almoxarifado

18 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (5)

- `UNI-01511` `FLX-MICRO` `proposto` Almoxarifado, entrada: o material comprado entra no estoque quando a chegada é baixada no app, pela agenda de chegadas. _[DOC-091 · §5 Almoxarifado, ALM-E1 · ITM-01775]_
- `UNI-01512` `FLX-MICRO` `proposto` Almoxarifado, saída: cada retirada é registrada no app com material, quantidade, projeto e setor que retirou. _[DOC-091 · §5 Almoxarifado, ALM-E2 · ITM-01776]_
- `UNI-01513` `FLX-MICRO` `proposto` Almoxarifado: um agente de IA compara a lista de compras com a de consumo e calcula o saldo de cada item. _[DOC-091 · §5 Almoxarifado, ALM-E3 · ITM-01777]_
- `UNI-01515` `FLX-MICRO` `proposto` Almoxarifado: os itens marcados sim viram solicitação de compra de reposição para Compras da unidade, seguindo o fluxo normal com aprovação da Maitê. _[DOC-091 · §5 Almoxarifado, ALM-E6 · ITM-01780]_
- `UNI-01560` `FLX-MICRO` `vigente` O item de estoque é reservado no almoxarifado da unidade, com baixa na saída. _[DOC-091 · §25 Item de estoque · ITM-02310]_

## Pontos de decisão (1)

- `UNI-01573` `FLX-DECISAO` `proposto` Almoxarifado: o responsável confere o estoque e marca sim ou não em cada item da lista. _[DOC-091 · §5 Almoxarifado, ALM-E5 · ITM-01779]_

## Notificações (2)

- `UNI-01509` `FLX-NOTIF` `proposto` `conf:media` A notificação matinal da conciliação vai, no Rio Grande do Sul, a Eduardo, Marília e Suellen, e em São Paulo, a Samanta, Rômulo e ao assistente. _[DOC-091 · §5 Compras, Planilha de conciliação diária · ITM-01770]_
- `UNI-01514` `FLX-NOTIF` `proposto` Toda segunda-feira a IA envia ao responsável da unidade a lista de itens que, a princípio, estão faltando ou abaixo do mínimo. _[DOC-091 · §5 Almoxarifado, ALM-E4 · ITM-01778]_

## Perfis e responsáveis (1)

- `UNI-01399.01` `ESC-PERFIL` `proposto` Responsáveis pelo Almoxarifado: Rio Grande do Sul, seu Marcos; São Paulo, assistente do Rômulo (a contratar); os dois usam o app. _[DOC-091 · §5 Almoxarifado, responsáveis · ITM-01774 · parte de UNI-01399]_

## Entidades e campos (2)

- `UNI-01435` `ESC-DADOS` `proposto` `conf:media` Campos da agenda de chegada: data e horário previstos, fornecedor e material (com quantidade e volume), tipo de veículo, local de descarga, quem descarrega, destino do material e status. _[DOC-091 · §5 Compras, Agenda de chegada de materiais · ITM-01764]_
- `UNI-01436` `ESC-DADOS` `proposto` `conf:media` Planilha de conciliação diária: horário, tipo (chegada ou saída), projeto, fornecedor ou destino, material ou volumes, veículo, local, responsável e conflitos apontados pela IA. _[DOC-091 · §5 Compras, Planilha de conciliação diária · ITM-01771]_

## Acesso e visibilidade (1)

- `UNI-01434` `REG-ACESSO` `proposto` `conf:media` A agenda de chegadas é visível para Eduardo, Marília e Suellen no Rio Grande do Sul, e para Samanta, Rômulo e o assistente em São Paulo. _[DOC-091 · §5 Compras, Agenda de chegada de materiais · ITM-01763]_

## Regras operacionais (2)

- `UNI-00226` `REG-OPER` `proposto` Reposição: embalagens e consumíveis têm estoque mínimo na biblioteca; ao atingi-lo o sistema abre SOL sem job e o custo é rateado nos jobs que consumirem o material. _[DOC-032 · §05 Compras recorrentes · ITM-00787]_
  - Requisitos separados deste item: `UNI-00226.01`
- `UNI-00226.01` `REG-OPER` `proposto` Cada item terá quantidade mínima de estoque cadastrada no sistema, por unidade. _[DOC-091 · §5 Almoxarifado, Estoque mínimo · ITM-01781 · parte de UNI-00226]_

## Pendências (3)

- `UNI-00897` `PEND` `pendente` `conf:media` Pendentes: estoque mínimo, padrões do Credenciamento e fluxos dos setores 10 e 11. _[DOC-002 · §45 Pendências · ITM-00061]_
- `UNI-00932` `PEND` `pendente` Não foi informado se Almoxarifado e logística interna recebem fichas de produção como os outros setores ou só apoiam. _[DOC-014 · §07 item 5 · ITM-00432]_
- `UNI-01600` `PEND` `pendente` Os valores de estoque mínimo de cada item ainda não estão definidos. _[DOC-091 · §5 Almoxarifado, Estoque mínimo · ITM-01782]_

## Ideias sem compromisso (1)

- `UNI-01437` `IDEIA` `proposto` Sugestão: nos primeiros meses a IA mede o consumo real e propõe o estoque mínimo de cada item, para o seu Marcos e o assistente de São Paulo validarem. _[DOC-091 · §5 Almoxarifado, Estoque mínimo · ITM-01783]_

