# Setor 05 · Financeiro: o controlador do projeto

O Financeiro acompanha o projeto do preço ao pagamento: valida o contrato, compara o que foi orçado com o que a produção pede, autoriza as compras, controla o centro de custos de cada projeto e cuida dos repasses, das comissões e do dashboard de vendas.

**DOC** PLANDEM\_FLX-SET05 · **VERSÃO** V02 · revisada · **DATA** 28/10/2026 · **BASE** FLX-001 \+ ditado e respostas 28/10

## 01 · Fluxo macro

Cinco fases: contrato, comandas, ordens de compra, centro de custos e remunerações.

- **FASE 1** · Contrato — FIN-E1 – E2 Aceite do cliente e contrato validado  
- **FASE 2** · Comandas — FIN-E3 – E6 Previsto × pedido aprovado  
- **FASE 3** · Ordens de compra — FIN-E7 – E8 Ordens conferidas e autorizadas  
- **FASE 4** · Centro de custos — FIN-E9 – E12 Notas, pagamentos e fluxo de caixa  
- **FASE 5** · Remunerações — FIN-E13 – E15 Repasses, comissões e dashboard  
- *Gestão financeira*

## 02 · Fluxograma detalhado

O Financeiro é notificado em cada passagem e só libera a etapa seguinte depois de conferir.

### FASES 1 E 2 · CONTRATO E COMANDAS

- *Início · preço validado (CUS-E6)*

**FASE 1 · CONTRATO**

- **FIN-E1** · Cliente dá o aceite da proposta — o Portal notifica o Financeiro  
- **FIN-E2** · Financeiro gera o contrato no modelo padrão do sistema — prazo 1 dia · valores, pagamento, cláusulas

**FASE 2 · COMANDAS**

- **FIN-E3** · Comanda de materiais — cada setor lista o que vai usar no projeto detalhado; Planejamento reúne  
- **FIN-E4** · Comanda de logística e equipe — mão de obra · dias de produção, viagem e montagem · alimentação · combustível · hotéis · fretes · transportes  
- **FIN-E5** · Portal cruza as comandas com a planilha de custos — previsto × pedido, item a item; toda comanda passa por aprovação (1 dia)  
- ◆ **FIN-E6** · Financeiro aprova as comandas? → **se sim** segue  
  - **se não** → Volta para o setor que pediu — ajusta e o Portal cruza de novo  
- Listas de compras autorizadas — o Portal avisa o setor de Compras  
- *Segue para Compras*

### FASES 3 E 4 · COMPRAS E CENTRO DE CUSTOS

**FASE 3 · ORDENS DE COMPRA**

- **FIN-E7** · Compras (Osmar) gera as listas e as ordens de compra — a partir da comanda aprovada; o Financeiro confere em 1 dia  
- ◆ **FIN-E8** · As ordens batem com a comanda e o custo? → **se sim** segue  
  - **se não** → Volta para Compras (Osmar) ajustar — e reenvia ao Financeiro  
- Compras do projeto autorizadas

**FASE 4 · CENTRO DE CUSTOS E PAGAMENTOS**

- **FIN-E9** · Centro de custos do projeto — itens · valor · fornecedor · prazo e forma de pagamento · IBS/CBS  
- **FIN-E10** · Item entregue: Compras sobe a nota fiscal no Portal — prazo 2 dias · o Financeiro é notificado  
- **FIN-E11** · Financeiro confere notas, compras, pagamentos e vencimentos — nota não emitida · compra não concluída · pagamento pendente · prazo vencendo  
- **FIN-E12** · Contas a pagar, recebimentos e fluxo de caixa da empresa — no sistema de gestão financeiro, integrado ao Portal

### FASE 5 · REMUNERAÇÕES E INDICADORES

**FASE 5 · REMUNERAÇÕES E INDICADORES (CONTÍNUA)**

- **FIN-E13** · Repasse aos arquitetos — [PES-00104]  
- **FIN-E14** · Comissões dos vendedores — 2% em clientes da empresa · 3% em clientes abertos pelo vendedor  
- **FIN-E15** · Dashboard financeiro — comissões · volume de vendas · curva de meta × fechamento do mês (com o COM-E15)

## 03 · Quando o Financeiro é notificado

Os pontos de controle do Financeiro no Portal, do preço ao pagamento.

| Quando o Financeiro é notificado | O que ele faz | Origem |
| :---- | :---- | :---- |
| Custos (CUS-E6) | Validar o preço de venda | Setor 04 |
| Aceite do cliente (FIN-E1) | Gerar o contrato no modelo padrão, em 1 dia | Comercial |
| Comandas reunidas pelo Planejamento (FIN-E3 e E4) | Aprovar a comanda em 1 dia e liberar as listas de compras | Planejamento |
| Ordens de compra geradas (FIN-E7) | Conferir as ordens com a comanda e o custo em 1 dia, e autorizar a compra | Compras (Osmar) |
| Nota fiscal enviada (FIN-E10) | Conferir notas, compras, pagamentos e vencimentos | Compras (Osmar), até 2 dias após a entrega |
| Adicional aprovado (CUS-E19) | Incluir o adicional no centro de custos e no contrato | Portal |

## 04 · Comanda de materiais e custos

Cada setor produtivo olha o projeto detalhado e lista o que vai usar. O Planejamento junta tudo numa comanda, e o Portal espelha essa comanda na planilha de custos para mostrar se o que foi previsto bate com o que está sendo pedido. A comanda de logística e equipe segue o mesmo modelo, cruzada com o bloco de logística e montagem da planilha.

| Coluna | Conteúdo |
| :---- | :---- |
| Item e código | o mesmo código da biblioteca, do memorial e da planilha de custos |
| Setor que pediu | pintura, serralheria, elétrica, marcenaria, tapeçaria, comunicação visual… |
| Previsto no custo | quantidade e valor da planilha de custos validada |
| Pedido para a produção | quantidade e valor que o setor está pedindo agora |
| Diferença | quantidade e valor a mais ou a menos; sem tolerância, toda comanda é aprovada pelo Financeiro |
| Status | aprovado · devolvido ao setor · em compra · comprado · entregue |

## 05 · Centro de custos por projeto

Cada ordem de compra alimenta a planilha de gestão de pagamentos do projeto. Contas a pagar, recebimentos do cliente e fluxo de caixa ficam no sistema de gestão financeiro, integrado ao Portal.

| Campo | Conteúdo |
| :---- | :---- |
| Itens e valores | de cada ordem de compra do projeto |
| Fornecedor | quem vende ou presta o serviço |
| Pagamento | prazo, forma e data de vencimento |
| Impostos | identificação de IBS e CBS (substituição dos impostos atuais) |
| Nota fiscal | anexada por Compras em até 2 dias após a entrega; marca o que ainda não foi emitido |
| Situação | contratado · comprado · entregue · pago, e até quando precisa ser contratado |
| Logística e viagem | verba de alimentação, combustível, hotel, frete e transporte, com o mesmo controle |

## 06 · Remunerações e dashboard

Repasses dos arquitetos e comissões dos vendedores, cruzados com o dashboard semanal de vendas do Comercial (COM-E15) para mostrar se a curva da meta vai fechar o mês.

| Quem | Modelo | Como é calculado |
| :---- | :---- | :---- |
| [PES-00105] | Por hora | Horas trabalhadas por projeto × valor da hora |
| [PES-00106] | Fixo mensal | Valor fixo, sem vínculo com projeto |
| [PES-00107] | Fixo mensal | Valor fixo, sem vínculo com projeto |
| [PES-00108] | Fixo mensal \+ % | Valor fixo mais percentual combinado |
| Vendedor · cliente da empresa | Comissão 2% | 2% sobre o contrato fechado com cliente distribuído pela empresa |
| Vendedor · cliente aberto por ele | Comissão 3% | 3% sobre o contrato fechado com cliente que o próprio vendedor abriu |

## 07 · Checklist passo a passo

O que precisa estar feito em cada fase antes de seguir.

### Fase 1 · Contrato

*Maitê (Financeiro)*

- [ ] **FIN-E1** Aceite do cliente registrado no Portal.  
- [ ] **FIN-E2** Contrato gerado no modelo padrão do sistema em até 1 dia.

### Fase 2 · Comandas

*Setores produtivos · Planejamento · Maitê*

- [ ] **FIN-E3** Lista de materiais de cada setor reunida na comanda.  
- [ ] **FIN-E4** Comanda de logística e equipe com dias de produção, viagem e montagem.  
- [ ] **FIN-E5** Comandas cruzadas com a planilha de custos.  
- [ ] **FIN-E6** Comandas aprovadas em até 1 dia (ou devolvidas ao setor que pediu) e listas de compras liberadas.

### Fase 3 · Ordens de compra

*Osmar (Compras) · Maitê*

- [ ] **FIN-E7** Listas e ordens de compra geradas a partir da comanda.  
- [ ] **FIN-E8** Ordens conferidas em até 1 dia (ou devolvidas a Compras) e compras autorizadas.

### Fase 4 · Centro de custos

*Osmar (Compras) · Maitê*

- [ ] **FIN-E9** Centro de custos do projeto com itens, fornecedores, prazos, formas de pagamento e IBS/CBS.  
- [ ] **FIN-E10** Notas fiscais anexadas em até 2 dias após cada entrega.  
- [ ] **FIN-E11** Nenhuma nota, compra ou pagamento pendente sem dono e prazo.  
- [ ] **FIN-E12** Contas a pagar, recebimentos e fluxo de caixa atualizados no sistema de gestão financeiro.

### Fase 5 · Remunerações e indicadores

*Maitê (Financeiro)*

- [ ] **FIN-E13** Repasses calculados: por hora, fixo mensal ou fixo \+ %.  
- [ ] **FIN-E14** Comissões calculadas: 2% clientes da empresa, 3% clientes abertos pelo vendedor.  
- [ ] **FIN-E15** Dashboard com comissões, volume de vendas e curva da meta do mês.

## 08 · Validar antes de implantar

- FIN-E13 · [PES-00109] E o freelancer (nomeado a cada demanda), por hora ou por projeto? Não informado.  
- FIN-E13 · [PES-00110] (contratos dos projetos dele ou faturamento total). Não informado.  
- FIN-E13 · Os arquitetos por hora registram as horas por projeto no próprio Portal, e o relatório chega ao Financeiro no fechamento do mês. Proposta.  
- FIN-E14 · Para aplicar 2% ou 3%, o cadastro do cliente no CRM precisa marcar a origem: cliente da empresa (distribuído pela diretoria) ou aberto pelo vendedor. Proposta.  
- FIN-E14 · A comissão é paga na assinatura do contrato ou conforme os recebimentos do cliente? Incide também sobre os adicionais? Não informado.  
- FIN-E14 · [PES-00111] Não informado.  
- FIN-E12 · Nome do sistema de gestão financeiro usado hoje, para planejar a integração com o Portal. Não informado.  
- FIN-E2 · Quem cria e revisa o modelo padrão de contrato (jurídico interno ou externo). Não informado.  
- Usuários · Só a Maitê usa o Financeiro. No Setor 04 o preço é validado por Maitê e Diego: confirma que o Diego entra ali como diretoria, não como usuário do Financeiro? (inferido)

---

*Imagine Arquitetura Efêmera · PLANDEM\_FLX-SET05 V02 · revisada com as respostas de 28/10/2026 sobre a V01 · numeração de setores conforme PLANDEM\_SET-001*