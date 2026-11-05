---
id: ERP-MOD-LOG
titulo: Módulo Logística e frota
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# LOG · Logística e frota

42 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (6)

- `UNI-00009.01` `FLX-MICRO` `proposto` Frota: a quilometragem de cada veículo é lançada no app, pelo seu Marcos no Rio Grande do Sul e pelo assistente do Rômulo em São Paulo. _[DOC-091 · §5 Frota, FRT-E2 · ITM-01786 · parte de UNI-00009]_
- `UNI-00009.05` `FLX-MICRO` `proposto` Verba de viagem (combustível, pedágio e estacionamento): solicitada no app pelos solicitantes de cada unidade, validada e liberada pelo Financeiro. _[DOC-091 · §5 Frota, FRT-E6 · ITM-01795 · parte de UNI-00009]_
- `UNI-00009.06` `FLX-MICRO` `proposto` Verba de viagem: o solicitante anexa as notas fiscais de combustível, pedágio e estacionamento e um agente de IA compara o valor liberado com o realizado. _[DOC-091 · §5 Frota, FRT-E6 passos 3 e 4 · ITM-01798 · parte de UNI-00009]_
- `UNI-00789.05` `FLX-MICRO` `proposto` `conf:media` A estimativa de carga preenche o formulário de frete do Eduardo (RS) ou da Samanta (SP) e ajuda a Expedição a planejar o carregamento. _[DOC-091 · §31 Estimativa de volume de carga por projeto · ITM-02361 · parte de UNI-00789]_
- `UNI-01517` `FLX-MICRO` `proposto` `conf:media` Verba de terceirizados: montadores terceirizados solicitam no app com usuário terceirizado, que só acessa a própria verba, seguindo FRT-E6 e FRT-E7. _[DOC-091 · §5 Frota, FRT-E8 · ITM-01807]_
- `UNI-01625` `FLX-MICRO` `vigente` O Eduardo (RS) e a Samanta (SP) cuidam do frete e preenchem o formulário de frete, que gera uma ordem de compra para o Financeiro (FIN-E7). _[DOC-091 · §Respostas Logística no Rio Grande do Sul (Setor 11) · ITM-02066]_

## Notificações (8)

- `UNI-00009.03` `FLX-NOTIF` `proposto` Frota: alertas de veículos no prazo de troca de óleo, de manutenção preventiva ou com necessidade básica de manutenção. _[DOC-091 · §5 Frota, FRT-E4 · ITM-01790 · parte de UNI-00009]_
- `UNI-00009.04` `FLX-NOTIF` `proposto` `conf:media` Frota, lavagem mensal: o sistema alerta e pede a solicitação de pagamento; a solicitação conferida gera ordem de compra para o Financeiro planejar e validar. _[DOC-091 · §5 Frota, FRT-E5 · ITM-01792 · parte de UNI-00009]_
- `UNI-01440` `FLX-NOTIF` `proposto` Os alertas de manutenção vão, no Rio Grande do Sul, ao seu Marcos, Eduardo e Leandro, e em São Paulo ao Rômulo. _[DOC-091 · §5 Frota, FRT-E4 · ITM-01791]_
- `UNI-01510` `FLX-NOTIF` `proposto` A lista de coletas e a notificação vão, em São Paulo, a Samanta e Rômulo, e no Rio Grande do Sul, a Eduardo, Osmar e Leandro (apoio operacional do Eduardo). _[DOC-091 · §5 Compras, Coleta com veículo próprio · ITM-01773]_
- `UNI-01516` `FLX-NOTIF` `proposto` Se o lançamento de quilometragem não for feito, na terça-feira o sistema alerta quem lança, além do Eduardo, do Leandro e do Rômulo. _[DOC-091 · §5 Frota, FRT-E2a · ITM-01788]_
- `UNI-01535` `FLX-NOTIF` `vigente` Formulário de deslocamento vai ao Financeiro: gera uma ordem de compra de hotel e deslocamento, que o Financeiro valida (FIN-E7). _[DOC-091 · §Respostas Formulário de deslocamento (FIN-E7) · ITM-02071]_
- `UNI-01537` `FLX-NOTIF` `vigente` O sistema avisa Eduardo ou Samanta antes do prazo do formulário de deslocamento. _[DOC-091 · §Respostas Prazo do formulário de deslocamento · ITM-02074]_
- `UNI-01543` `FLX-NOTIF` `vigente` Conferência com foto não registrada: o sistema avisa de novo o produtor e alerta a Érika (RS) ou a Samanta (SP). _[DOC-091 · §18 Locações, controle de devolução · ITM-02232]_

## Módulos e telas (1)

- `UNI-01438` `ESC-MODULO` `proposto` Frota: controle de quilometragem e manutenção dos veículos da Imagine, por unidade. _[DOC-091 · §5 Frota · ITM-01784]_

## Perfis e responsáveis (2)

- `UNI-01410` `ESC-PERFIL` `vigente` `rotina-anterior` Leandro [PES-00012]: logística (EQP-011). _[DOC-033 · §5.6.2 EQP-011 · ITM-01037]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01603` `ESC-PERFIL` `proposto` `conf:media` Lavagem: no Rio Grande do Sul o Leandro solicita e o seu Marcos e o Eduardo conferem; em São Paulo o assistente do Rômulo solicita e o Rômulo confere. _[DOC-091 · §5 Frota, FRT-E5 · ITM-01794]_

## Documentos gerados (1)

- `UNI-00697` `ESC-DOC` `a-conferir` ROM-001 Romaneio de carga: volume nº de total, IT, descrição, peso, dimensões, ordem de carga e descarga, veículo, motorista, horário e conferência na saída e na chegada. _[DOC-032 · §06 ROM-001 · ITM-00799]_
  - **Atenção (leitura do Claude):** item 9: Usa IT como referência do item.

## Entidades e campos (4)

- `UNI-00789.06` `ESC-DADOS` `proposto` Cada item tem o campo transporte (carregado pela Imagine ou entregue pelo fornecedor na feira), sugerido pelo que foi registrado na ordem de compra ou de locação. _[DOC-091 · §31 Estimativa de volume de carga por projeto, itens que não são carregados pela Imagine · ITM-02364 · parte de UNI-00789]_
- `UNI-01439` `ESC-DADOS` `proposto` Cadastro de veículo: placa, modelo, unidade, quilometragem atual e plano de manutenção (troca de óleo e preventivas por quilometragem ou data). _[DOC-091 · §5 Frota, FRT-E1 · ITM-01785]_
- `UNI-01448` `ESC-DADOS` `vigente` Formulário padrão de solicitação de frete: transportadora, origem e destino, data de carregamento, horário de chegada na feira, quantidade de veículos, tipo de transporte, valor negociado e data limite da nota fiscal de remessa. _[DOC-091 · §Respostas Logística no Rio Grande do Sul (Setor 11) · ITM-02065]_
- `UNI-01450` `ESC-DADOS` `vigente` `conf:media` Formulário de deslocamento para a feira, preenchido por Eduardo (RS) ou Samanta (SP): custo de deslocamento, diárias de hotel, quantidade e nome de cada pessoa, e quem será credenciado. _[DOC-091 · §Respostas Formulário de deslocamento da equipe para a feira · ITM-02070]_

## Dashboards e indicadores (1)

- `UNI-00009.02` `ESC-INDIC` `proposto` Frota: o sistema gera toda semana o relatório de quilometragem de cada veículo. _[DOC-091 · §5 Frota, FRT-E3 · ITM-01789 · parte de UNI-00009]_

## Prazos (3)

- `UNI-00009.11` `REG-PRAZO` `vigente` Antifraude (aprovado em 31/10): prazo de 5 dias após a viagem para anexar comprovantes; sem eles, nova verba fica bloqueada. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01804 · parte de UNI-00009]_
- `UNI-01601` `REG-PRAZO` `proposto` A quilometragem é lançada uma vez por semana e o lançamento da semana anterior vence na segunda-feira. _[DOC-091 · §5 Frota, FRT-E2 · ITM-01787]_
- `UNI-01602` `REG-PRAZO` `proposto` O alerta da lavagem mensal dos veículos ocorre todo dia 20. _[DOC-091 · §5 Frota, FRT-E5 · ITM-01793]_

## Aprovações e alçadas (2)

- `UNI-01541` `REG-APROV` `vigente` `conf:media` Ordem de locação exige data e horário de entrega e aprovação da Maitê em 1 dia. _[DOC-091 · §18 Locações · ITM-02228]_
- `UNI-01663` `REG-APROV` `vigente` Antes de fechar o cálculo de carga, Eduardo (RS) ou Samanta (SP), e Christian para o audiovisual, devem confirmar a lista de itens que não vão no caminhão da Imagine. _[DOC-091 · §31 Itens que não são carregados pela Imagine · ITM-02365]_

## Qualidade (1)

- `UNI-00009.12` `REG-QUAL` `vigente` `conf:media` Antifraude (aprovado em 31/10): a IA confere data, posto, placa e horário das notas com a viagem e aponta repetições e desvios. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01805 · parte de UNI-00009]_

## Legal e fiscal (1)

- `UNI-00009.13` `REG-LEGAL` `vigente` Antifraude (aprovado em 31/10): descontos em folha só com autorização por escrito e conforme a lei, a validar com a Maitê. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01806 · parte de UNI-00009]_

## Cálculos e critérios (5)

- `UNI-00009.09` `REG-CALC` `vigente` `conf:media` Antifraude (aprovado em 31/10): o preço do litro é limitado pela média da região (tabela da ANP); acima disso exige justificativa. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01802 · parte de UNI-00009]_
- `UNI-00900.01` `REG-CALC` `proposto` A IA indica tipo e quantidade de veículos (utilitário pequeno, 3/4, caminhão baú, truck baú, carreta baú) e a distribuição da carga, com capacidades configuráveis a partir de dados reais das transportadoras. _[DOC-091 · §31 Estimativa de volume de carga por projeto, passo 2 · ITM-02360 · parte de UNI-00900]_
- `UNI-01660` `REG-CALC` `vigente` Com medidas e peso de cada item da ficha técnica, já com a embalagem, a IA calcula o volume (m³) e o peso total do projeto, considerando itens frágeis ou que não podem ser empilhados. _[DOC-091 · §31 Estimativa de volume de carga · ITM-02359]_
- `UNI-01661` `REG-CALC` `vigente` Antes do contrato a IA faz uma estimativa preliminar de carga a partir do memorial e de projetos parecidos, para o custo de frete no orçamento. _[DOC-091 · §31 Estimativa de volume de carga, Antes do contrato · ITM-02362]_
- `UNI-01662` `REG-CALC` `vigente` Depois do carregamento, o sistema compara o estimado com os veículos realmente usados e ajusta os cálculos. _[DOC-091 · §31 Estimativa de volume de carga, Aprendizado · ITM-02363]_

## Regras operacionais (4)

- `UNI-00009.07` `REG-OPER` `vigente` Antifraude da verba de viagem (aprovado pelo Diego em 31/10): a rota é calculada pelo sistema, com origem, destino e km por mapa, e não digitada pelo solicitante. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01800 · parte de UNI-00009]_
- `UNI-00009.08` `REG-OPER` `vigente` Antifraude (aprovado em 31/10): foto do hodômetro na saída e na volta, e a IA compara os km rodados com a rota. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01801 · parte de UNI-00009]_
- `UNI-00009.10` `REG-OPER` `vigente` Antifraude (aprovado em 31/10): preferência por cartão de combustível e tag de pedágio da empresa, com dados direto do fornecedor e sem dinheiro adiantado. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01803 · parte de UNI-00009]_
- `UNI-00789.07` `REG-OPER` `proposto` `conf:media` Itens entregues pelo fornecedor saem do cálculo de volume e veículos e entram na agenda de entregas na feira, com fornecedor, data e horário, para o produtor de montagem conferir a chegada com foto. _[DOC-091 · §31 Estimativa de volume de carga por projeto, itens que não são carregados pela Imagine · ITM-02366 · parte de UNI-00789]_

## Pendências (2)

- `UNI-00900` `PEND` `pendente` `conf:media` Pendentes: capacidades dos veículos, margem das molduras de LED e rendimentos de tintas. _[DOC-002 · §45 Pendências · ITM-00064]_
  - Requisitos separados deste item: `UNI-00900.01`, `UNI-00900.02`
- `UNI-00939` `PEND` `pendencia-parcial` Transporte, frete, motorista e horários de saída e chegada não foram detalhados; falta decidir se entram na Expedição ou em um setor de logística próprio. _[DOC-015 · §07 Logística · ITM-00464]_
  - **Atenção (leitura do Claude):** item 22: Na ordem decidida, Logística aparece separada da Expedição. Diego não disse se é um setor próprio.

## Não usar: substituídos ou desatualizados (1)

- `UNI-01155` `ESC-PERFIL` `desatualizado` A pergunta sobre o responsável pela Logística, aberta no SET12, já tem resposta no ERP-001: Eduardo no RS e Samanta em SP. _[DOC-090 · §4 linha Responsável pela Logística · ITM-01578]_

