# Entrada de demanda via WhatsApp com triagem de prazo

**Doc:** PLANDEM_FLX-001 · entrada alternativa · mapeamento (etapa 1) · V01 · 30/10/2026
**Base:** PLANDEM_FLX-001 V03 (E1–E16, G1). Esta entrada continua a numeração: E17–E27 e G2.
**Status:** mapeamento validado com 11 perguntas. Próximo: fluxograma (etapa 2), que entra no V04 do fluxo.

## Objetivo
Levar para o Portal Imagine toda demanda de cliente já conhecido que chega pelo WhatsApp, checar na entrada se há tempo hábil de produção até o evento e não deixar cartão aberto parado por falta de retorno do cliente.

## Início e fim
- **Começa:** cliente conhecido manda pedido, projeto pronto, arquivos ou fotos de referência no WhatsApp pessoal do vendedor.
- **Fim principal:** cliente aceita a proposta dentro do prazo limite → Demandas aprovadas → cronograma macro (fase 5), onde a checagem de prazo e tempo hábil é refeita.
- **Fim alternativo 1:** sem tempo hábil e a Diretoria declina (G2).
- **Fim alternativo 2:** prazo limite vence sem aceite e o vendedor confirma o encerramento como "declinada por prazo" (E27).

## Etapas

### Fase W1 · Recepção
| Código | Etapa | Responsável | Lógica / saída | Marca |
|---|---|---|---|---|
| E17 | Cliente envia a demanda no WhatsApp pessoal do vendedor | Cliente | Texto, projeto pronto, arquivos, fotos | DOCUMENTO |
| E17a | Vendedor encaminha a conversa ao número da IA, já informando data do evento e prazo | Vendedor | Conversa + anexos + data do evento + prazo | ENVIO |
| E18 | IA recebe e registra tudo no Portal | IA / sistema | Demanda registrada | DOCUMENTO |
| E19 | Conferência dos dados de prazo | IA / sistema | Se faltar data do evento ou prazo, a IA cobra do vendedor (inferido). Se completo, E20 | ESPERA |

### Fase W2 · Triagem de prazo
| Código | Etapa | Responsável | Lógica / saída | Marca |
|---|---|---|---|---|
| E20 | Há tempo hábil de produção até o evento? | Sistema | Regra fixa por enquanto: proposta fechada até 30 dias antes e produção a partir de 20 dias antes. Depois, tabela por tipo de item com o histórico de previsto x realizado. Se sim, E21. Se não, G2 | DECISÃO |
| G2 | Diretoria decide a demanda sem tempo hábil | Diretoria | Aceita (com custo de urgência) → E21. Declina → cartão encerrado como declinado | APROVAÇÃO |
| E21 | Sistema abre o cartão de nova demanda | Sistema | Já marca vendedor, assistente comercial, Projetos e Custos | DOCUMENTO |
| E22 | Sistema monta o micro cronograma reverso | Sistema | Prazo limite de aprovação do cliente e de início da produção | DOCUMENTO |
| E23 | Assistente comercial confere o prazo limite | Assistente comercial | Confirma ou corrige; a correção fica registrada | CONFERÊNCIA |
| → | Segue para a reunião de briefing gravada e para a validação do vendedor (E1/E12), e daí no fluxo principal até a proposta (E14/E15) | — | Toda demanda via WhatsApp passa pelo briefing | — |

### Fase W3 · Acompanhamento do retorno (em paralelo, do E21 até o aceite)
| Código | Etapa | Responsável | Lógica / saída | Marca |
|---|---|---|---|---|
| E24 | Sistema acompanha os dias sem retorno contra o prazo limite | Sistema | Vale a régua de 7 dias da E15 ou o prazo limite do micro cronograma, o que vencer primeiro | ESPERA |
| E25 | Alerta: "X dias sem retorno; limite para aprovar em Y dias; avise o cliente, senão vamos declinar" | Sistema → vendedor + assistente comercial | Vendedor avisa o cliente; assistente acompanha o prazo | ENVIO |
| E26 | Vendedor avisa o cliente de que o prazo está acabando | Vendedor | Pelo WhatsApp do vendedor (inferido) | ENVIO |
| E27 | Cliente aceitou até o prazo limite? | Sistema + vendedor | Se sim, Demandas aprovadas → cronograma macro. Se não, o sistema propõe "declinada por prazo" e o vendedor confirma; se ele pedir extensão, vai para a G2 | DECISÃO |

## Lista simples
E17 → E17a → E18 → E19 → E20 → (G2) → E21 → E22 → E23 → briefing E1/E12 → fluxo principal → E24 → E25 → E26 → E27

## Validar antes de implantar
- **(inferido)** E19: quando faltar dado, a IA cobra o vendedor, não o cliente.
- **(inferido)** E26: o vendedor avisa pelo próprio WhatsApp.
- **(inferido)** E27: a "aprovação" esperada é o aceite eletrônico da proposta (E15).
- **(não informado)** G2: prazo de resposta da Diretoria e como se calcula o custo de urgência.
- **(não informado)** Novo status de encerramento: "declinada por prazo" separado de "cliente não fechou" (E16).
- **(atenção)** Com o encaminhamento manual (E17a), a demanda só entra no sistema se o vendedor encaminhar. Demanda não encaminhada fica invisível para o Portal.
- **(a definir)** Ferramenta de WhatsApp com IA (número oficial conectado à API do WhatsApp Business).
- **(a definir)** Tabela de tempo de produção por tipo de item, para substituir a regra fixa da E20.
