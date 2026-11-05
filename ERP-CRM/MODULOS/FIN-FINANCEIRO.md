---
id: ERP-MOD-FIN
titulo: Módulo Financeiro
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# FIN · Financeiro

70 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-20** (Pagamento dos projetistas): Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- **item-21** (Comanda de materiais): Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`
- **item-10** (Comissão): Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- **ponto-3** (Comanda no Financeiro): Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
- **ponto-4** (Valor do projetista da filial SP): Decisão adiada: "4 decidimos dps". **Em aberto:** A própria decisão e quando ela será tomada. _(Adiado por Diego)_ Registro: `REGISTROS/decisao__20261104-1855-participacao-projetista-sp-4r2s.md`

## Fluxo macro (2)

- `UNI-00278` `FLX-MACRO` `proposto` Financeiro tem cinco fases: contrato (FIN-E1 a E2), comandas (E3 a E6), ordens de compra (E7 a E8), centro de custos (E9 a E12) e remunerações e indicadores (E13 a E15). _[DOC-010 · §01 Fluxo macro · ITM-00237]_
- `UNI-01496` `FLX-MACRO` `substituido-parcial` O aceite do cliente (ACM-E7 = FIN-E1) gera o contrato em 1 dia (FIN-E2); o contrato assinado (ACM-E11) libera o Planejamento (PLA-E1). _[DOC-091 · §2 Assistente → Financeiro · ITM-01592]_
  - **Continua valendo:** O aceite do cliente gera o contrato em 1 dia.
  - **Mudou:** O projeto entra no Planejamento a partir do aceite (item-8); o contrato assinado libera o detalhamento técnico (ponto-1).

## Etapas do fluxo (15)

- `UNI-00005.01` `FLX-MICRO` `proposto` `conf:media` A IA junta a planilha de custos validada pela Carol com a planilha do Audiovisual (modelo padrão do Christian, AUD-E11) e gera uma previsão orçamentária única do projeto. _[DOC-091 · §5 Custos, previsão orçamentária do projeto (AUD-E11); §25 item 4 · ITM-01828 · parte de UNI-00005]_
- `UNI-00383.01` `FLX-MICRO` `vigente` Validação da Maitê: ela analisa a proposta de operação e montagem da IA e valida ou pede alteração. _[DOC-091 · §5 Custos, CUS-E6; novo fluxo de Custos com IA, passo 4 · ITM-01817 · parte de UNI-00383]_
  - **Decisão (Ver decisão do item 19):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- `UNI-00386` `FLX-MICRO` `proposto` Financeiro (Maitê e Diego) valida o novo preço da V2 ao receber o aviso. _[DOC-009 · CUS-E10 · ITM-00218]_
- `UNI-00390` `FLX-MICRO` `proposto` Maitê e Diego validam o preço do adicional e o Anderson elabora a proposta e a devolve ao Comercial, cada etapa em até 2 dias. _[DOC-009 · CUS-E17 e E18 · ITM-00226]_
- `UNI-00392` `FLX-MICRO` `proposto` `conf:media` Comanda de logística e equipe: mão de obra, dias de produção, viagem e montagem, alimentação, combustível, hotéis, fretes e transportes. _[DOC-010 · FIN-E4 · ITM-00242]_
- `UNI-00394` `FLX-MICRO` `proposto` Financeiro confere notas, compras, pagamentos e vencimentos: nota não emitida, compra não concluída, pagamento pendente e prazo vencendo. _[DOC-010 · FIN-E11 · ITM-00251]_
- `UNI-00395.01` `FLX-MICRO` `vigente` Pagamento de projetistas, passos 4 e 5: a Maitê valida o valor e depois efetua o pagamento. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas; §5 Financeiro, FIN-E13 · ITM-02045 · parte de UNI-00395]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.01` `FLX-MICRO` `vigente` Financeiro: a IA gera a minuta do contrato no modelo padrão e aponta os pontos duvidosos; a Maitê valida cada ponto e libera. _[DOC-091 · §5 Financeiro, FIN-E2; Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-01731 · parte de UNI-00751]_
- `UNI-00751.04` `FLX-MICRO` `vigente` Pagamento de projetistas, passo 1: a Érika estima as horas do projeto no sistema; vale para todos os projetistas e freelancers. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas, passo 1 · ITM-02042 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.05` `FLX-MICRO` `vigente` Pagamento de projetistas, passo 2: ao concluir o projeto, a Érika lança as horas realizadas. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas, passo 2 · ITM-02043 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.06` `FLX-MICRO` `vigente` Pagamento de projetistas, passo 3: o sistema gera o valor a pagar a cada projetista pelo valor da hora dele. _[DOC-091 · Respostas do Diego, Fluxo de pagamento dos projetistas, passo 3 · ITM-02044 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-01502` `FLX-MICRO` `proposto` Financeiro: nota fiscal registrada no Portal. _[DOC-091 · §5 05 Financeiro, FIN-E10 · ITM-01742]_
- `UNI-01504` `FLX-MICRO` `decisao-diego` Financeiro: repasse aos projetistas, todos por hora; Érika estima as horas, ao concluir atualiza as realizadas, o sistema calcula o valor e a Maitê valida e paga. _[DOC-091 · §5 05 Financeiro, FIN-E13 · ITM-01746]_
  - **Decisão (Decidido por Diego):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-01519` `FLX-MICRO` `decisao-diego` `conf:media` Com o ok da Carol, o sistema notifica o Financeiro e a IA propõe à Maitê mão de obra, equipe, hospedagem, alimentação, frete e deslocamento, com base no histórico; os parâmetros são configuráveis. _[DOC-091 · §5 Novo fluxo de Custos com IA (31/10) · ITM-01816]_
  - **Decisão (Decidido por Diego):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- `UNI-01627` `FLX-MICRO` `vigente` Um formulário padrão por projeto registra quem trabalhou e gera uma ordem de compra, que o Financeiro valida e coloca no fluxo de pagamento semanal. _[DOC-091 · §Respostas Escala e pagamento das equipes terceirizadas · ITM-02068]_

## Pontos de decisão (1)

- `UNI-00559` `FLX-DECISAO` `vigente` Financeiro confere em 1 dia se as ordens batem com a comanda e o custo; se não, voltam a Compras (Osmar) para ajuste. _[DOC-010 · FIN-E7 e E8 · ITM-00247]_

## Notificações (3)

- `UNI-00598` `FLX-NOTIF` `proposto` Financeiro é notificado em: preço validado (CUS-E6), aceite do cliente, comandas, ordens de compra, nota fiscal enviada e adicional aprovado (CUS-E19). _[DOC-010 · §03 Quando o Financeiro é notificado · ITM-00260]_
- `UNI-00614` `FLX-NOTIF` `proposto` E10: o sistema avisa Financeiro e Diretoria do pedido de alteração da proposta. _[DOC-030 · §03 E10 · ITM-00710]_
- `UNI-00751.07` `FLX-NOTIF` `vigente` `conf:media` O assistente de IA marca pontos duvidosos do contrato (cláusulas fora do padrão, pagamento, prazos, escopo, adicionais) para a Maitê validar antes de liberar. _[DOC-091 · Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-02053 · parte de UNI-00751]_

## Módulos e telas (2)

- `UNI-00005` `ESC-MODULO` `vigente` Financeiro e Jurídico têm previsão orçamentária única e fechamento mensal e trimestral. _[DOC-003 · Mapa, cartão 05 Financeiro e Jurídico · ITM-00074]_
  - Requisitos separados deste item: `UNI-00005.01`, `UNI-00005.02`, `UNI-00005.03`
- `UNI-01424` `ESC-MODULO` `proposto` Módulo Financeiro e compras (setor 05): comandas, ordens de compra, centro de custos, notas fiscais, repasses e comissões. _[DOC-091 · §3 Módulos, Financeiro e compras · ITM-01608]_

## Perfis e responsáveis (3)

- `UNI-00031` `ESC-PERFIL` `substituido-parcial` Financeiro/Jurídico (CFO) fecha o custo completo e o preço de venda, aprova alterações da proposta (G1), valida o contrato e controla recebimentos. _[DOC-030 · §05 Setores, card 05 · ITM-00679]_
  - **Continua valendo:** Aprova alterações da proposta, valida o contrato e controla recebimentos.
  - **Mudou:** A IA propõe logística e operação e gera o preço depois da validação (item-19); o preço de venda só Maitê e Diego aprovam (item-1).
- `UNI-00077.02` `ESC-PERFIL` `vigente` `conf:media` Modelo de contrato (FIN-E2): criado e revisado pelo jurídico interno, a Maitê. _[DOC-091 · Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-02051 · parte de UNI-00077]_
- `UNI-01604` `ESC-PERFIL` `proposto` Solicitantes de verba de viagem: Eduardo e Leandro no Rio Grande do Sul; Rômulo e o assistente do Rômulo em São Paulo, cada um na sua unidade. _[DOC-091 · §5 Frota, FRT-E6 · ITM-01796]_

## Entidades e campos (3)

- `UNI-00661.01` `ESC-DADOS` `a-conferir` `conf:media` Comanda: item e código, setor, previsto, pedido, diferença e status. _[DOC-091 · §4 Entidades e dados principais, Comanda (FIN-E3 a E6) · ITM-01629 · parte de UNI-00661]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`
- `UNI-00662` `ESC-DADOS` `proposto` Centro de custos do projeto: itens e valores, fornecedor, pagamento, impostos (IBS e CBS), nota fiscal, situação e logística e viagem. _[DOC-010 · §05 Centro de custos · ITM-00249]_
- `UNI-01449` `ESC-DADOS` `vigente` `conf:media` Formulário semanal das equipes terceirizadas: projeto, pessoas que trabalharam, número de diárias, valor da diária, diária de alimentação, descontos de diária com motivo e relatório completo com observações. _[DOC-091 · §Respostas Campos do formulário semanal · ITM-02069]_

## Integrações (2)

- `UNI-00060` `ESC-INTEG` `proposto` Contas a pagar, recebimentos e fluxo de caixa ficam no sistema de gestão financeiro, integrado ao Portal. _[DOC-010 · FIN-E12 · ITM-00252]_
- `UNI-01503` `ESC-INTEG` `proposto` Financeiro: contas a pagar, recebimentos e fluxo de caixa no sistema financeiro integrado. _[DOC-091 · §5 05 Financeiro, FIN-E12 · ITM-01745]_

## Dashboards e indicadores (5)

- `UNI-00005.02` `ESC-INDIC` `proposto` `conf:media` Relatório de fechamento do mês, com gráficos e dashboard, gerado automaticamente no fim de cada mês e enviado ao Diego por notificação. _[DOC-091 · §5 Custos, relatório de fechamento do mês · ITM-01830 · parte de UNI-00005]_
- `UNI-00005.03` `ESC-INDIC` `proposto` `conf:media` A partir do 3º mês de operação e a cada 3 meses, a IA compila os fechamentos mensais e gera o estudo orçamentário da empresa, com custos, tendências e desvios recorrentes por setor, projeto e unidade. _[DOC-091 · §5 Custos, estudo orçamentário trimestral · ITM-01832 · parte de UNI-00005]_
- `UNI-00396` `ESC-INDIC` `proposto` Dashboard financeiro mostra comissões, volume de vendas e curva de meta x fechamento do mês, junto com o COM-E15. _[DOC-010 · FIN-E15 · ITM-00259]_
- `UNI-01456` `ESC-INDIC` `proposto` Dashboard Financeiro: comissões, volume de vendas e curva da meta do mês. _[DOC-091 · §10 Dashboards, FIN-E15 · ITM-02140]_
- `UNI-01558` `ESC-INDIC` `vigente` O Financeiro acompanha em tempo real o previsto, comprado e realizado por projeto e por código, alimentando a base histórica de custos. _[DOC-091 · §25 Financeiro · ITM-02304]_

## Prazos (11)

- `UNI-00077` `REG-PRAZO` `vigente` Financeiro gera o contrato no modelo padrão do sistema em 1 dia, com valores, pagamento e cláusulas. _[DOC-010 · FIN-E2 · ITM-00239]_
  - Requisitos separados deste item: `UNI-00077.01`, `UNI-00077.02`, `UNI-00077.03`
- `UNI-00077.01` `REG-PRAZO` `proposto` O contrato é gerado em 1 dia após o aceite. _[DOC-091 · §5 Financeiro, FIN-E2; §7 Prazos (SLAs) · ITM-01732 · parte de UNI-00077]_
- `UNI-00077.03` `REG-PRAZO` `proposto` Contrato (FIN-E2): 1 dia, responsável Maitê. _[DOC-091 · §7 Prazos (SLAs), contrato · ITM-02096 · parte de UNI-00077]_
- `UNI-00078` `REG-PRAZO` `vigente` Compras sobe a nota fiscal no Portal em até 2 dias após a entrega do item e o Financeiro é notificado. _[DOC-010 · FIN-E10 · ITM-00250]_
  - Requisitos separados deste item: `UNI-00078.01`
- `UNI-00078.01` `REG-PRAZO` `proposto` Nota fiscal no Portal (FIN-E10): 2 dias após a entrega, responsável Osmar. _[DOC-091 · §7 Prazos (SLAs), nota fiscal no Portal; §5 Financeiro, FIN-E10 · ITM-02104 · parte de UNI-00078]_
- `UNI-00751` `REG-PRAZO` `vigente` `conf:media` Financeiro: contrato gerado pela IA em 1 dia; projetistas remunerados por hora. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00027]_
  - Requisitos separados deste item: `UNI-00751.01`, `UNI-00751.02`, `UNI-00751.03`, `UNI-00751.04`, `UNI-00751.05`, `UNI-00751.06`, `UNI-00751.07`
- `UNI-00763` `REG-PRAZO` `vigente` A V02 revisa a V01 com as respostas de 28/10, incluindo prazos de 1 dia para contrato, comandas e ordens e 2 dias para a nota fiscal. _[DOC-010 · §02 Fluxograma e rodapé · ITM-00262]_
  - Requisitos separados deste item: `UNI-00763.01`, `UNI-00763.02`, `UNI-00763.03`, `UNI-00763.04`, `UNI-00763.05`
- `UNI-00763.01` `REG-PRAZO` `proposto` Toda comanda é aprovada em 1 dia, sem tolerância de diferença. _[DOC-091 · §5 Financeiro, FIN-E5; §7 Prazos · ITM-01736 · parte de UNI-00763]_
  - **Decisão (Ver decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
- `UNI-00763.02` `REG-PRAZO` `proposto` A conferência das ordens de compra pelo Financeiro leva 1 dia. _[DOC-091 · §5 Financeiro, FIN-E7; §7 Prazos · ITM-01739 · parte de UNI-00763]_
- `UNI-00763.03` `REG-PRAZO` `proposto` A Maitê confere a ordem de compra em 1 dia (FIN-E8). _[DOC-091 · §5 Financeiro, FIN-E7 e FIN-E8; §5 Compras, CMP-E4 · ITM-01757 · parte de UNI-00763]_
- `UNI-00763.05` `REG-PRAZO` `proposto` Aprovação de comanda (FIN-E5) e de ordem de compra (FIN-E7): 1 dia, responsável Financeiro. _[DOC-091 · §7 Prazos, aprovação de comanda e de ordem de compra · ITM-02103 · parte de UNI-00763]_

## Aprovações e alçadas (6)

- `UNI-00103` `REG-APROV` `confirmado` Toda comanda passa por aprovação do Financeiro em 1 dia, sem tolerância de diferença; se reprovada, volta ao setor que pediu. _[DOC-010 · FIN-E5 e E6, §03 · ITM-00244]_
  - **Decisão (De acordo com a decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
  - Requisitos separados deste item: `UNI-00103.01`, `UNI-00103.02`
- `UNI-00103.01` `REG-APROV` `vigente` Financeiro: o Portal cruza previsto × pedido item a item para aprovar a comanda. _[DOC-091 · §5 Financeiro, FIN-E5; §6 Comandas · ITM-01735 · parte de UNI-00103]_
  - **Decisão (Ver decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
- `UNI-00103.02` `REG-APROV` `substituido-parcial` Toda diferença da pré-comanda em relação ao orçado passa pelo Financeiro. _[DOC-091 · §6 Regras de negócio, Comandas · ITM-02302 · parte de UNI-00103]_
  - **Continua valendo:** A diferença em relação ao orçado passa pelo Financeiro.
  - **Mudou:** Não só a diferença: toda comanda passa pelo Financeiro (ponto-3).
- `UNI-00228` `REG-APROV` `proposto` Nenhum pagamento sai sem OC/OS aprovada e sem REC conferido, com conferência OC x REC x NF. _[DOC-032 · §05 Lista de regras · ITM-00790]_
- `UNI-01576` `REG-APROV` `proposto` Só a Maitê aprova a previsão orçamentária do projeto, antes de qualquer compra começar (antes de FIN-E3 e CMP-E1). _[DOC-091 · §5 Previsão orçamentária do projeto · ITM-01829]_
- `UNI-01579` `REG-APROV` `vigente` A previsão orçamentária reúne Custos e Audiovisual e é aprovada pela Maitê. _[DOC-091 · §25 Previsão orçamentária · ITM-02299]_

## Preço, margem e comissão (3)

- `UNI-00913.01` `REG-PRECO` `vigente` As comissões têm fechamento mensal. _[DOC-091 · §5 Financeiro, FIN-E14; Respostas do Diego, Comissões dos vendedores · ITM-01748 · parte de UNI-00913]_
  - **Decisão (Ver decisão do item 10):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- `UNI-00913.02` `REG-PRECO` `vigente` Comissão é calculada sobre o que o cliente efetivamente pagou, com fechamento no fim de cada mês e um único pagamento; adicionais não geram comissão. _[DOC-091 · Respostas do Diego, Comissões dos vendedores · ITM-02048 · parte de UNI-00913]_
  - **Decisão (Ver decisão do item 10):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- `UNI-01607` `REG-PRECO` `proposto` Terceirizado não tem adiantamento nem cartão da empresa: paga do próprio bolso, anexa as notas e a empresa reembolsa, limitado ao valor da rota e da tabela padrão. _[DOC-091 · §5 Frota, FRT-E8 · ITM-01808]_

## Acesso e visibilidade (1)

- `UNI-00116` `REG-ACESSO` `inferido` Só a Maitê usa o Financeiro; Diego entra na validação de preço como diretoria, não como usuário do Financeiro (inferido). _[DOC-010 · §08 Usuários · ITM-00261]_

## Legal e fiscal (2)

- `UNI-00891.01` `REG-LEGAL` `vigente` No ERP, as alíquotas de impostos ficam configuráveis, porque mudam ao longo da transição. _[DOC-091 · Respostas do Diego, Preço de venda (CUS-E4) · ITM-02031 · parte de UNI-00891]_
- `UNI-01618` `REG-LEGAL` `vigente` `conf:media` Impostos: lucro presumido, no modelo híbrido da transição para IBS e CBS. _[DOC-091 · §Respostas Impostos · ITM-02030]_

## Cálculos e critérios (2)

- `UNI-00751.02` `REG-CALC` `vigente` Remuneração por hora de projetistas: cada projeto tem uma planilha com as horas estimadas, e o valor da hora é calculado e as horas são acumuladas por projeto. _[DOC-091 · Respostas do Diego, Remuneração por hora · ITM-02039 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.03` `REG-CALC` `vigente` Valor da hora do projetista: negociado com cada um e parametrizado no ERP, por pessoa; o pagamento usa as horas realizadas, não as estimadas. _[DOC-091 · Respostas do Diego, Regras da hora · ITM-02040 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`

## Regras operacionais (2)

- `UNI-00763.04` `REG-OPER` `proposto` Comandas não têm tolerância de diferença, e toda diferença passa pelo Financeiro. _[DOC-091 · §6 Regras de negócio e bloqueios, Comandas · ITM-02085 · parte de UNI-00763]_
  - **Decisão (Ver decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
- `UNI-01606` `REG-OPER` `proposto` Se o gasto for menor que o liberado, a IA notifica o Financeiro e o solicitante devolve a diferença; se for maior, a empresa reembolsa o solicitante. _[DOC-091 · §5 Frota, FRT-E6 · ITM-01799]_

## Pendências (5)

- `UNI-00879` `PEND` `decisao-diego` Comissão: o SET05 diz 2% e 3%, enquanto o ERP-001 e o ERP-002 dizem 3% e 1,5%. _[DOC-090 · §3 item 3 · ITM-01563]_
  - **Decisão (Decidido por Diego):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- `UNI-00891` `PEND` `pendente` O nome do sistema de gestão financeiro usado hoje segue pendente (ERP-001 V08 lista o sistema financeiro entre as pendências) e é necessário para planejar a integração com o Portal. _[DOC-002 · §45 Pendências · ITM-00057]_
  - Requisitos separados deste item: `UNI-00891.01`
- `UNI-00912` `PEND` `substituido-parcial` Proposta: o CRM precisa marcar a origem do cliente (da empresa ou aberto pelo vendedor) para aplicar 2% ou 3%. _[DOC-010 · §08, FIN-E14 · ITM-00257]_
  - **Continua valendo:** O CRM marca a origem do cliente para definir a comissão.
  - **Mudou:** Os percentuais são os do ERP-001 e do ERP-002 (item-10), não os citados aqui.
  - Requisitos separados deste item: `UNI-00912.01`
- `UNI-00913` `PEND` `pendente` Não foi informado se a comissão é paga na assinatura do contrato ou conforme os recebimentos, nem se incide sobre os adicionais. _[DOC-010 · §08, FIN-E14 · ITM-00258]_
  - Requisitos separados deste item: `UNI-00913.01`, `UNI-00913.02`
- `UNI-01445` `PEND` `pendente` Sistema financeiro e sistema de assinatura digital: o Diego vai verificar qual usar. _[DOC-091 · §Respostas CRM · ITM-02033]_

## Não usar: substituídos ou desatualizados (2)

- `UNI-00383` `FLX-MICRO` `substituido` Financeiro (Maitê e Diego) lança logística e operação no Portal e forma o preço de venda. _[DOC-009 · CUS-E6 · ITM-00212]_
  - **Decisão (Ver decisão do item 19):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
  - Requisitos separados deste item: `UNI-00383.01`
- `UNI-00395` `FLX-MICRO` `substituido` Financeiro faz o repasse aos arquitetos conforme o modelo de remuneração de cada um. _[DOC-010 · FIN-E13 · ITM-00254]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
  - Requisitos separados deste item: `UNI-00395.01`

