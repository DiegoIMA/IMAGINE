---
id: ERP-MOD-DIS
titulo: Módulo Distribuição de clientes
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# DIS · Distribuição de clientes

9 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (2)

- `UNI-00358` `FLX-MICRO` `proposto` Cliente entra na área de organização de clientes do Portal, com o relatório da Prospecção quando houver. _[DOC-007 · COM-E6 · ITM-00144]_
  - Requisitos separados deste item: `UNI-00358.01`
- `UNI-00358.01` `FLX-MICRO` `proposto` Comercial: o cliente aparece no usuário do vendedor, com o relatório da Prospecção. _[DOC-091 · §5 Comercial, COM-E10 · ITM-01671 · parte de UNI-00358]_

## Pontos de decisão (2)

- `UNI-00552` `FLX-DECISAO` `vigente` Cliente sem feira no calendário não recebe sugestão automática; a diretoria avalia e indica o vendedor. _[DOC-007 · COM-E8, §08 · ITM-00148]_
- `UNI-00553` `FLX-DECISAO` `proposto` Diego aprova o vendedor sugerido ou indica outro. _[DOC-007 · COM-E9 · ITM-00150]_

## Notificações (1)

- `UNI-00592` `FLX-NOTIF` `proposto` Notificação ao Diego com cliente, feira, perfil, classe e vendedor sugerido. _[DOC-007 · COM-E9 · ITM-00149]_

## Módulos e telas (1)

- `UNI-00015.02` `ESC-MODULO` `proposto` Módulo Distribuição de clientes (setor 02): classificação automática, sugestão de vendedor e aprovação do Diego. _[DOC-091 · §3 Módulos do ERP, Distribuição de clientes · ITM-01602 · parte de UNI-00015]_

## Prazos (1)

- `UNI-00071` `REG-PRAZO` `vigente` Sem resposta do Diego em 2 dias, o cliente segue para o vendedor sugerido. _[DOC-007 · COM-E9, §08 · ITM-00151]_

## Cálculos e critérios (2)

- `UNI-00623` `REG-CALC` `vigente` Classe Prioridade é 50 m² ou mais e R$ 1.500/m² ou mais; o restante é Secundária, inclusive abaixo de 50 m²; Pacote é exceção para cliente fiel. _[DOC-007 · COM-E7, §03 Classes · ITM-00146]_
  - Requisitos separados deste item: `UNI-00623.01`
- `UNI-00623.01` `REG-CALC` `proposto` Classificação automática de cliente: Prioridade (50 m² ou mais e R$ 1.500/m² ou mais), Secundária (o resto) e Pacote (exceção). _[DOC-091 · §5 Comercial, COM-E7 · ITM-01666 · parte de UNI-00623]_

