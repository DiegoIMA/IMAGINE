# Setor 06 · Assistente comercial

O assistente comercial é o braço operacional do dia a dia da diretoria: Diego (comercial, planejamento e operação) e Maitê (jurídico e financeiro). Ele finaliza as propostas e as encaminha aos vendedores, cobra o aceite do cliente, aciona o contrato e monitora todos os e-mails e demandas do fluxo comercial.

**DOC** PLANDEM\_FLX-SET06 · **VERSÃO** V01 · proposta · **DATA** 29/10/2026 · **BASE** Ditado 29/10

## 01 · Fluxo macro

O assistente comercial é o braço operacional do dia a dia da diretoria. Tudo passa por ele: proposta, aceite, contrato e o monitoramento diário dos e-mails e das demandas.

- **FASE 1** · Proposta — ACM-E1 – E3 Proposta com o vendedor  
- **FASE 2** · Aceite — ACM-E4 – E7 Aceite cobrado e registrado  
- **FASE 3** · Contrato — ACM-E8 – E11 Contrato assinado  
- **FASE 4** · Monitoramento — ACM-E12 – E14 Nenhuma demanda parada  
- *Ciclo diário*

## 02 · Fluxograma detalhado

O assistente finaliza e despacha a proposta, cobra o aceite, aciona o contrato e garante que nenhuma demanda fique parada.

### FASES 1 E 2 · PROPOSTA E ACEITE

- *Início · preço e pré-proposta prontos (CUS-E7)*

**FASE 1 · PROPOSTA COMERCIAL**

- **ACM-E1** · Portal notifica o assistente comercial — preço de venda e pré-proposta validados pelo Financeiro (Maitê e Diego)  
- **ACM-E2** · Assistente finaliza a proposta comercial — no modelo da Imagine: escopo, valores e condições  
- **ACM-E3** · Portal encaminha a proposta ao vendedor responsável — cada cliente vai para o seu vendedor (COM-E10)

**FASE 2 · ACEITE DO CLIENTE**

- **ACM-E4** · Vendedor envia a proposta ao cliente — assistente em cópia do e-mail  
- **ACM-E5** · Assistente cobra o aceite do cliente — acompanha até a resposta  
- ◆ **ACM-E6** · Cliente deu o aceite? → **se sim** segue  
  - **se não** → Proposta em aberto — sem resposta: nova cobrança · pediu ajuste: volta ao vendedor e Custos  
- **ACM-E7** · Assistente registra a proposta formalizada e o aceite — Portal avisa vendedor, Diego e Financeiro (FIN-E1)  
- *Segue para o contrato*

### FASES 3 E 4 · CONTRATO E MONITORAMENTO

**FASE 3 · CONTRATO**

- **ACM-E8** · Assistente notifica o jurídico-financeiro — Maitê elabora o contrato e libera no sistema (FIN-E2)  
- **ACM-E9** · Contrato enviado para assinatura digital — assistente em cópia do envio  
- ◆ **ACM-E10** · Contrato assinado? → **se sim** segue  
  - **se não** → Contrato parado — assistente avisa quem precisa assinar (ex.: e-mail pouco lido)  
- **ACM-E11** · Contrato assinado registrado no Portal — Planejamento recebe o projeto fechado (PLA-E1)

**FASE 4 · MONITORAMENTO DIÁRIO**

- **ACM-E12** · Assistente em cópia de todos os e-mails do fluxo comercial — entradas e saídas de todos os clientes  
- **ACM-E13** · Despacha ou executa cada demanda — encaminha ao setor certo ou resolve  
- ◆ **ACM-E14** · Todas as demandas em dia? → **se sim** segue  
  - **se não** → Cobra o responsável — cliente sem retorno ou vendedor sem informação para a proposta  
- *Ciclo diário, todos os dias*

## 03 · Papel e notificações

O assistente está em cópia de todos os e-mails do fluxo comercial, porque é quem fica o dia inteiro na frente do computador olhando as entradas e as saídas. Assim o cliente não fica sem retorno nas questões burocráticas e o vendedor não fica sem as informações para elaborar ou enviar a proposta.

| Diretoria apoiada | Área | O que o assistente despacha |
| :---- | :---- | :---- |
| Diego | gestor comercial, planejamento e operação | propostas, aceites, distribuição de demandas e cobrança dos vendedores |
| Maitê | jurídico e financeiro | contratos a elaborar e liberar, assinaturas pendentes e documentos jurídicos |

### Notificações que passam pelo assistente

| Evento | Quem o assistente avisa | Para quê |
| :---- | :---- | :---- |
| Preço e pré-proposta prontos (CUS-E7) | recebe do Financeiro | finalizar a proposta comercial |
| Alteração no preço de venda (CUS-E11) | recebe a V2 | refazer a proposta com o novo preço |
| Adicional pedido pelo cliente (CUS-E18) | recebe o preço validado | elaborar a proposta do adicional e devolver ao Comercial |
| Proposta finalizada | vendedor responsável | enviar a proposta ao cliente |
| Cliente sem resposta | cliente, com o vendedor em cópia | cobrar o aceite |
| Aceite do cliente | vendedor, Diego e Financeiro | formalizar e liberar o contrato |
| Contrato a elaborar | Maitê (jurídico-financeiro) | elaborar e liberar o contrato no sistema |
| Contrato aguardando assinatura | quem precisa assinar | assinar o contrato digital |
| Contrato assinado | Planejamento | iniciar o cronograma reverso (PLA-E1) |
| Demanda parada em qualquer setor | responsável pela demanda | destravar antes que o cliente ou o vendedor fique sem retorno |

## 04 · Painel do assistente no Portal

Proposta: uma aba onde o assistente vê, de uma vez, tudo o que está esperando por alguém.

| No painel do assistente | O que mostra |
| :---- | :---- |
| Propostas a finalizar | lista com cliente, vendedor e data em que o preço chegou |
| Aguardando aceite | propostas enviadas, com os dias sem resposta e a última cobrança |
| Contratos | a elaborar pela Maitê, enviados para assinatura e assinados |
| E-mails do fluxo comercial | entradas e saídas em que o assistente está em cópia, com as que ainda não tiveram retorno |
| Demandas por setor | o que está com cada setor e o que passou do prazo |

Regra: nenhuma proposta, aceite ou contrato fica sem dono. Se uma demanda passa do prazo, o assistente cobra o responsável e, se não resolver, avisa o Diego ou a Maitê, conforme a área.

## 05 · Checklist passo a passo

O que precisa estar feito em cada fase antes de seguir.

### Fase 1 · Proposta comercial

*Assistente comercial*

- [ ] **ACM-E1** Notificação do preço e da pré-proposta recebida.  
- [ ] **ACM-E2** Proposta finalizada no modelo da Imagine.  
- [ ] **ACM-E3** Proposta encaminhada ao vendedor responsável.

### Fase 2 · Aceite do cliente

*Vendedor · assistente comercial*

- [ ] **ACM-E4** Proposta enviada ao cliente, com o assistente em cópia.  
- [ ] **ACM-E5** Aceite cobrado até a resposta do cliente.  
- [ ] **ACM-E6** Pedido de ajuste devolvido ao vendedor e a Custos.  
- [ ] **ACM-E7** Aceite registrado; vendedor, Diego e Financeiro avisados.

### Fase 3 · Contrato

*Assistente comercial · Maitê*

- [ ] **ACM-E8** Maitê notificada para elaborar e liberar o contrato.  
- [ ] **ACM-E9** Contrato enviado para assinatura digital, com o assistente em cópia.  
- [ ] **ACM-E10** Quem precisa assinar foi avisado até a assinatura.  
- [ ] **ACM-E11** Contrato assinado no Portal e Planejamento notificado.

### Fase 4 · Monitoramento diário

*Assistente comercial*

- [ ] **ACM-E12** Assistente em cópia de todos os e-mails do fluxo comercial.  
- [ ] **ACM-E13** Cada demanda despachada ao setor certo ou executada.  
- [ ] **ACM-E14** Nenhum cliente sem retorno e nenhum vendedor sem informação.

## 06 · Validar antes de implantar

1. O assistente comercial é o Anderson (citado em Custos, CUS-E7)? É uma pessoa só? Inferido: sim.  
2. Prazo para finalizar a proposta depois que o preço chega (ACM-E2). Não informado.  
3. ACM-E5 · Cadência da cobrança do aceite: a cada quantos dias, e depois de quantas cobranças sem resposta o caso sobe para o vendedor ou para o Diego? Não informado.  
4. ACM-E4 · Quem envia a proposta ao cliente: o vendedor ou o próprio assistente? Inferido: o vendedor, com o assistente em cópia.  
5. ACM-E12 · A cópia nos e-mails é feita por regra (cada vendedor copia o assistente) ou o Portal integra os e-mails do comercial numa caixa só? Não informado.  
6. ACM-E14 · Prazo máximo de retorno ao cliente nas questões burocráticas (ex.: 24 horas). Não informado.  
7. ACM-E9 · Qual plataforma de assinatura digital, e quem envia o contrato: a Maitê ou o assistente? Não informado.  
8. Painel do assistente (seção 04): é uma proposta para o Portal. Confirmar se é isso que você quer ver.

---

*Imagine Arquitetura Efêmera · PLANDEM\_FLX-SET06 V01 · mapeado a partir do ditado de 29/10/2026 · numeração de setores conforme PLANDEM\_SET-001*