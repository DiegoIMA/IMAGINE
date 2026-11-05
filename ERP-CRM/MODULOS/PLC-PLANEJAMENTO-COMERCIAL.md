---
id: ERP-MOD-PLC
titulo: Módulo Planejamento comercial
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# PLC · Planejamento comercial

19 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (1)

- `UNI-00275` `FLX-MACRO` `proposto` Comercial tem quatro fases: planejamento anual (COM-E1 a E5), entrada e distribuição (E6 a E10), atendimento (E11 a E13) e controle semanal (E14 a E15). _[DOC-007 · §01 Fluxo macro · ITM-00133]_

## Etapas do fluxo (6)

- `UNI-00355` `FLX-MICRO` `proposto` Montar o calendário comercial de 12 meses com as feiras e eventos de cada mês. _[DOC-007 · COM-E1 · ITM-00135]_
- `UNI-00357` `FLX-MICRO` `proposto` Definir o vendedor responsável por cada feira, conforme perfil, tipo de evento e histórico. _[DOC-007 · COM-E3 · ITM-00139]_
- `UNI-00359` `FLX-MICRO` `proposto` `conf:media` O sistema sugere o vendedor responsável pela feira no planejamento. _[DOC-007 · COM-E8 · ITM-00147]_
- `UNI-00497` `FLX-MICRO` `proposto` E13: a IA abre as demandas dos setores e monta o cronograma reverso até o envio da proposta (3D, memorial, custo, preço, montagem e envio) nas agendas de Projetos, Custos e Comercial. _[DOC-030 · §03 E13 · ITM-00701]_
- `UNI-00511` `FLX-MICRO` `vigente` E22: o sistema monta o micro cronograma reverso com o prazo limite de aprovação do cliente e de início da produção. _[DOC-031 · E22 · ITM-00749]_
- `UNI-00760` `FLX-MICRO` `vigente` `conf:media` O time de vendas monta junto o planejamento COM-E1 a E5; o vendedor envia o login do Portal ao cliente (COM-E11). _[DOC-007 · §08 Respondido em 28/10 · ITM-00165]_

## Módulos e telas (2)

- `UNI-00015` `ESC-MODULO` `proposto` Módulos do Comercial no Portal: planejamento comercial, área de organização de clientes, distribuição com aprovação, usuário por vendedor, Termômetro da Reunião e dashboard semanal. _[DOC-007 · §06 O que construir no Portal · ITM-00161]_
  - Requisitos separados deste item: `UNI-00015.01`, `UNI-00015.02`
- `UNI-00015.01` `ESC-MODULO` `proposto` Módulo Planejamento comercial (setor 02): calendário de 12 meses, perfil de feira, vendedor por feira, listas A/B/C/Pacote e metas. _[DOC-091 · §3 Módulos do ERP, Planejamento comercial · ITM-01601 · parte de UNI-00015]_

## Perfis e responsáveis (1)

- `UNI-00033` `ESC-PERFIL` `proposto` Planejamento faz o cronograma macro reverso e a timeline do cliente, com prazos para Projetos, Produção e Credenciamento; responsável a confirmar. _[DOC-030 · §05 Setores, card 07 · ITM-00681]_

## Entidades e campos (4)

- `UNI-00356` `ESC-DADOS` `proposto` Registrar o perfil de cada feira: tipo, perfil do evento e histórico de vendas da Imagine. _[DOC-007 · COM-E2 · ITM-00136]_
  - Requisitos separados deste item: `UNI-00356.01`
- `UNI-00356.01` `ESC-DADOS` `proposto` Comercial: definir o perfil de cada feira, com mínimo de 200 m² vendidos pela Imagine. _[DOC-091 · §5 Comercial, COM-E2 · ITM-01661 · parte de UNI-00356]_
- `UNI-01426` `ESC-DADOS` `proposto` Entidade Feira: mês, tipo, perfil, histórico de vendas, mínimo de 200 m², vendedor responsável, listas A/B/C/Pacote e prazos do manual. _[DOC-091 · §4 Entidades, Feira (COM-E1 a E4, CRD-E5) · ITM-01619]_
- `UNI-01427` `ESC-DADOS` `proposto` Entidade Vendedor: meta mensal, clientes, funil e comissão. _[DOC-091 · §4 Entidades, Vendedor (COM-E5, FIN-E14) · ITM-01620]_

## Dashboards e indicadores (2)

- `UNI-00656` `ESC-INDIC` `proposto` Indicadores semanais propostos: meta x realizado, funil, qualidade da carteira, atividade, previsão ponderada pela probabilidade e distribuição por vendedor e origem. _[DOC-007 · §05 Dashboard do Diego · ITM-00160]_
- `UNI-01301` `ESC-INDIC` `proposto` Outras metas do planejamento: quantidade de clientes atendidos, por classe, por nível de pagamento, por verba e por m². _[DOC-007 · §05 Metas, Outras metas · ITM-00143]_

## Aprovações e alçadas (1)

- `UNI-01594` `REG-APROV` `proposto` Se a feira do cliente não estiver no calendário, a diretoria avalia quem atende. _[DOC-091 · §5 02 Comercial, COM-E8 · ITM-01668]_

## Cálculos e critérios (1)

- `UNI-00621` `REG-CALC` `proposto` Listas por feira: A conhecidos (abordados primeiro), B potenciais novos (prospecção ativa), C reserva (segundo movimento) e Pacote (várias feiras no ano, exceção de metragem). _[DOC-007 · COM-E4, §03 Listas · ITM-00140]_

## Pendências (1)

- `UNI-00908` `PEND` `pendente` Não foi informado em que mês o time de vendas fecha o planejamento do ano seguinte. _[DOC-007 · §08 COM-E1 a E5 · ITM-00162]_

