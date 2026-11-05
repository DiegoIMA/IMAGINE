---
id: ERP-ESTADOS
titulo: Estados principais
tipo: GUIA-PARA-IA
versao: V01
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
---

# Estados principais

**Proposta provisória do Claude.** Liga os estados citados no material às etapas dos fluxos, nas quatro entidades que mais dependem disso. Nenhum documento traz essa ligação pronta. Onde o material não dá nome a um estado, a linha diz `sem nome no material`: é uma lacuna para resolver, e não um estado definido. As outras entidades, em geral, não têm lista de estados, então siga as etapas em `ERP-CRM/FLUXOS/` e registre a dúvida em `ERP-CRM/ANDAMENTO/DUVIDAS.md` (DUV-046).

## Proposta

Estados reunidos de `UNI-00017`, `UNI-01443` e `UNI-01611`, sem lista fechada em nenhum item.

| Estado | Entra quando | Sai para | Observação |
|---|---|---|---|
| a finalizar | `ACM-E1` recebe o preço e a pré-proposta | autorização do vendedor | Prazo em `ACM-E2` |
| `sem nome no material` | `ACM-D1`: aguarda a autorização do vendedor | enviada | Caminho se ele não autorizar: DUV-006 (`item-7`) |
| enviada | `ACM-E4`: o assistente envia | aguardando aceite | Validade de 7 dias (`item-7`) |
| aguardando aceite | `ACM-E5` cobra, `ACM-E6` decide | aceita, em ajuste, perdida | Cobranças e avisos: DUV-005 (`item-4`, `item-24`) |
| `sem nome no material` | `ACM-E6`: pedido de ajuste | volta a Custos (`CUS-E8`) | Nova versão da planilha |
| aceita | `ACM-E7` registra o aceite | fim | Avisa o Financeiro e leva ao Planejamento (`item-8`) |
| perdida | Motivo obrigatório (`COM-E16`) | fim | Caminho de recusa: DUV-006 |
| `sem nome no material` | Sem resposta depois do prazo | em aberto | A expiração no 3º aviso continua? DUV-005 |

## Contrato

Estados reunidos de `UNI-00751.01` e `UNI-01529`, sem lista fechada em nenhum item.

| Estado | Entra quando | Sai para | Observação |
|---|---|---|---|
| minuta | `FIN-E2`: a IA gera no modelo padrão | liberado | Aponta os pontos duvidosos |
| liberado | `FIN-E2`: a Diretoria jurídica e financeira valida | enviado | Prazo de 1 dia |
| `sem nome no material` | `ACM-E9`: enviado para assinatura | assinado | Alerta de contrato parado em `ACM-E10`. Plataforma não definida (`UNI-00918`) |
| assinado | `ACM-E11` | fim | **Libera o detalhamento técnico** (`ponto-1`) e, com a previsão aprovada, a pré-comanda |

## Pré-comanda e comanda

Se são uma entidade com dois momentos ou duas entidades está em aberto: DUV-042. Estados da comanda: `UNI-00661`, ainda `a-conferir`.

| Estado | Entra quando | Sai para | Observação |
|---|---|---|---|
| `sem nome no material` | `FIN-D1`: o sistema gera a pré-comanda | conferência | Só depois de contrato assinado e previsão aprovada |
| `sem nome no material` | `FIN-D2`: os setores conferem e ajustam | em aprovação | Momento da conferência: DUV-024 |
| `sem nome no material` | `FIN-E5`: o sistema cruza, e o Financeiro aprova em 1 dia | aprovado, devolvido | **Toda** comanda passa pelo Financeiro (`ponto-3`) |
| devolvido | `FIN-E6`: reprovada | volta a `FIN-D2` ou `FIN-E4` | |
| aprovado | `FIN-E6` | em compra | Vai para `CMP-E1` |
| em compra | `CMP-E2`, `CMP-E3` | comprado | |
| comprado | `CMP-E5` | entregue | |
| entregue | Baixa no app (`ALM-E1`) | fim | |

## Ordem de compra

Estados de `UNI-00635`, proposta e agora `a-conferir`, porque vieram do ciclo com alçadas.

| Estado | Entra quando | Sai para | Observação |
|---|---|---|---|
| rascunho | `CMP-E3` | conferência | Data, horário e tipo de entrega são obrigatórios |
| `sem nome no material` | `CMP-D2`: alerta de preço | renegociação ou conferência | Segura a ordem. Quem aprova depois: DUV-020 |
| em aprovação | `CMP-E4`: conferência em 1 dia | aprovada ou volta a `CMP-E3` | O nome vem das alçadas, que caíram (`item-5`) |
| aprovada | `CMP-E4` | enviada | Entra na agenda de chegadas |
| enviada | Sem etapa própria (`UNI-00229`) | confirmada | E-mail do sistema |
| confirmada | Sem etapa própria (`UNI-00229`) | recebida | O fornecedor confirma por link |
| recebida parcial, recebida | `ALM-E1` | faturada | Quem confere o recebimento: `UNI-00976` |
| faturada | `CMP-E6` | paga | Nota fiscal até 2 dias depois da entrega |
| paga | `FIN-E11`, `FIN-E12` | encerrada | |
| encerrada | Sem etapa própria | fim | |
| cancelada | Em qualquer momento, com motivo | fim | |

Regra ligada: aumento de valor em ordem aprovada gera nova versão e volta para aprovação; mudança só de prazo é registrada e avisa o cronograma (`UNI-00108`).
