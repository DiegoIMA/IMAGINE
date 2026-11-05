---
conv_id: CONV-038
origem: documento interno (IMG-PAD-003_MODELOS-DE-DOCUMENTOS_V01.html)
tamanho_origem_bytes: 48411
data_origem: 2026-10-30
convertido_em: 2026-11-04
metodo: programa conv\passo1.ps1 (extracao de texto)
limites: texto, titulos e tabelas; estilos, scripts e layout nao entram
---

# IMG-PAD-003_MODELOS-DE-DOCUMENTOS_V01.html

Modelos de Documentos Imagine

# Modelos de documentos da Imagine

Quais documentos cada setor emite em cada etapa do fluxo, com os campos mínimos e quem aprova. Todos saem da mesma base de itens e cada setor vê o mesmo dado no formato de que precisa.

**Doc**IMG-PAD-003

**Versão**V01 · proposta

**Data**30/10/2026

**Base**PLANDEM_FLX-001 V03 + entrada WhatsApp V01 · IMG-PAD-002 §4.1

01 Um item, vários documentos
02 Regras comuns
03 Siglas
04 Catálogo por fase
05 Ordem de compra
06 Campos mínimos
07 Quem faz o quê
08 Ordem de implantação
09 Validar

## 01 Um item, vários documentos

A base de tudo é o **memorial descritivo (MEM-001)** transformado em lista mestre de itens. O código de cada item (**IT**) é o próprio número do ÍTEM no memorial (1.1, 2.3…), o mesmo das etiquetas do detalhamento; ele nunca é renumerado. Com o ID do job, forma o código de rastreio ( [JOB]/2.1 ), e cada material, um código **MAT-NNNN** da biblioteca. Custos, proposta, fichas de produção, compras, qualidade, carga e montagem leem esses mesmos códigos, cada um no seu formato. Quando alguém altera o item no memorial (via ALT), a mudança aparece em todos os documentos que usam aquele IT.

%%{init: {'theme':'base','themeVariables':{'primaryColor':'#ffffff','primaryBorderColor':'#1d2124','primaryTextColor':'#1d2124','lineColor':'#5d666b','fontFamily':'IBM Plex Sans, Arial'}}}%%
flowchart LR
BIB["IMG-CAD-004
Biblioteca de itens
e materiais · MAT"]:::base
BRF["BRF-001
Briefing + pré-escopo"]
MEM["MEM-001
Lista mestre de itens
IT 1.1 … N.N"]:::mestre
BIB --> BRF --> MEM
BIB --> MEM
MEM --> ORC["ORC-001 Custos
IT × MAT × mão de obra"]
ORC --> PRE["ORC-002
Preço de venda"]
PRE --> PRP["PRP-001 Proposta
IT sem custo"]
MEM --> FIC["FIC Fichas por setor
só os IT do setor"]
FIC --> SOL["SOL → COT → OC
MAT dos IT"]
ORC -. "orçado x comprado" .-> SOL
FIC --> CHK["CHK-001 Qualidade
por IT"]
CHK --> ROM["ROM-001 Romaneio
volumes etiquetados por IT"]
ROM --> MON["CHK-002 Montagem
sequência por IT"]
MON --> REL["REL-002 Fechamento
orçado x real por IT"]
SOL -.-> REL
classDef base fill:#ffffff,stroke:#5d666b,stroke-dasharray:4 3,color:#1d2124
classDef mestre fill:#fbe9d5,stroke:#e07b12,stroke-width:2px,color:#1d2124

### Exemplo: o mesmo item em cada documento IT 2.1 · balcão de atendimento com LED

| Documento | Setor | Como o IT 2.1 aparece |
|---|---|---|
| MEM-001 | Projetos | Balcão 2,00 × 0,60 × 1,10 m, MDF 18 mm branco TX, fita LED 4000 K embutida no tampo, 1 unidade |
| ORC-001 | Custos | MAT de MDF, fita LED, fonte e ferragens com quantidade e custo, mais horas de marcenaria e elétrica |
| PRP-001 | Comercial | "Balcão de atendimento com iluminação" dentro do pacote, sem custo aberto |
| FIC | Marcenaria / Elétrica | Marcenaria: plano de corte e montagem. Elétrica: 3 m de fita, fonte e ponto de energia |
| SOL / OC | Compras | 3 chapas de MDF 18 mm branco TX, 3 m de fita LED, 1 fonte 12 V, cada linha apontando para o IT 2.1 |
| CHK-001 | Qualidade | Medidas conferidas, acabamento sem lascas, LED testado, foto |
| ROM-001 | Expedição | Volume 07 de 32, etiqueta "IT 2.1 · balcão · frágil" |
| CHK-002 | Montagem | Passo 12 da sequência, foto de ok no pavilhão |
| REL-002 | Financeiro | Orçado x comprado x horas reais do IT 2.1 |

## 02 Regras comuns a todo modelo

Estas regras seguem a regra de rastreabilidade do IMG-PAD-002 (§4.1) e valem para tudo o que o Portal gerar e para os modelos em Excel ou Word usados até as telas ficarem prontas.

NOME

### Arquivo e código

[CLIENTE]-[FEIRA][AA]_[TIPO]-NNN_[NOME]_VNN para documento de job; IMG-[TIPO]-NNN para documento geral. Sem acento, sem espaço, versão com 2 dígitos.

CARIMBO

### Cabeçalho igual em todos

Logo IMG-MOD-001, código, versão, data, status, cliente e evento, cartão da demanda, etapa do fluxo (E-código), elaborado por.

STATUS

### Mesma régua de status

RASCUNHO → EM APROVAÇÃO → APROVADO → SUBSTITUÍDO (por nova versão) ou CANCELADO (com motivo). Só a versão APROVADA vale para o setor seguinte.

APROVAÇÃO

### Bloco de aprovação

Quem aprovou, quando, em qual alçada e com qual comentário. A aprovação é registrada no Portal; no PDF aparece como carimbo.

VÍNCULO

### Documento de origem

Todo documento cita de onde veio: OC cita SOL, COT e linha do ORC; FIC cita MEM e PRJ; PRP cita ORC-002. Assim, ao abrir qualquer um, dá para voltar até o briefing.

HISTÓRICO

### Versão nova, nunca sobrescrever

Tabela VERSÃO · DATA · AUTOR · ALTERAÇÃO · ALT de origem. Versões antigas não são apagadas.

## 03 Siglas de tipo

Mantém as sete siglas que já existem e propõe as que faltam para cobrir o fluxo inteiro. Para não renomear arquivos já emitidos, o PRJ-001 continua sendo o detalhamento técnico (D01).

| Sigla | Documento | Situação |
|---|---|---|
| CAD | Cadastro (equipe, clientes, fornecedores, biblioteca) | EXISTE |
| PAD | Padrão (regras, tabelas de tempo, alçadas) | EXISTE |
| MOD | Modelo (logo, pacotes, apresentação institucional) | EXISTE |
| MEM · ORC · PRJ · ATA | Memorial, custos/orçamento, projeto/detalhamento, ata | EXISTE |
| ENT | Ficha de entrada da demanda (lead ou WhatsApp) com triagem de prazo | NOVO |
| BRF | Briefing do cliente + pré-escopo | NOVO |
| CRO | Cronograma reverso (micro até a proposta; macro até o evento) | NOVO |
| ALT | Pedido de alteração de projeto ou de proposta | NOVO |
| PRP | Proposta comercial | NOVO o modelo existe, falta a sigla |
| CTR · FIN | Contrato · cronograma de recebimentos | NOVO |
| CRD | Dossiê de credenciamento e documentação da feira | NOVO |
| FIC | Ficha técnica de produção por setor (funciona como ordem de produção) | NOVO |
| SOL · COT · OC · OS · REC | Solicitação de compra · mapa de cotação · ordem de compra · ordem de serviço · recebimento | NOVO |
| AMO · CHK | Aprovação de amostra · checklist (qualidade, montagem) | NOVO o checklist de montagem existe |
| ROM · TER | Romaneio de carga/retorno · termo de entrega | NOVO o termo existe |
| REL | Relatório (previsto x realizado, fechamento do job) | NOVO |

## 04 Catálogo por fase

Fases e códigos de etapa do PLANDEM_FLX-001 V03 e da entrada via WhatsApp (E17–E27). "Formato" indica onde o documento vive: no **Portal** (tela com exportação em PDF), em **Excel** ou em **Word/PDF**.

EXISTE já há modelo ou arquivo
NOVO modelo a criar
ADAPTAR existe, mas precisa ganhar IT/MAT e carimbo

### Base da empresa documentos gerais que alimentam todos os jobs

| Código | Documento | Dono | Usado em | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| IMG-CAD-001 | Cadastro da equipe | Diretoria | Todas | Portal | Responsáveis de cada documento | EXISTE |
| IMG-CAD-002 | Cadastro de clientes CNPJ, contatos, WhatsApp cadastrado, vendedor da conta, histórico de jobs | Comercial | E17, A3 | Portal / CRM | ENT, PRP, CTR | NOVO |
| IMG-CAD-003 | Cadastro de fornecedores categoria, CNPJ, condições, prazo médio, avaliação | Compras | Fase 6 | Portal | COT, OC, OS | NOVO |
| IMG-CAD-004 | Biblioteca de itens e materiais código MAT, nome padronizado, unidade, custo de referência, fornecedor preferido, estoque mínimo | Custos | B3, fases 3–6 | Portal / Excel | BRF, MEM, ORC, SOL, OC | ADAPTAR lista base + unificação de nomenclatura |
| IMG-PAD-004 | Tabela de tempos de produção hoje: regra fixa de 30/20 dias; depois, por tipo de item | Planejamento | E20, E13, E22 | Portal | ENT, CRO | NOVO |
| IMG-PAD-005 | Tabela de alçadas de aprovação desconto e parcelamento (G1), OC/OS, urgência (G2) | Financeiro + Diretoria | G1, G2, fase 6 | Portal | PRP, ALT, OC, OS | NOVO |
| IMG-PAD-006 | Composição de preço encargos de mão de obra, diárias, hospedagem, alimentação, frete, impostos, margem mínima | Financeiro | D2 | Excel restrito | ORC-002 | NOVO |

### 1 · Captação

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| — | Registro do lead no CRM porte, verba, tipo de cliente e de demanda, feira, decisor | 01 Prospecção | A3, A4 | CRM | ENT | NOVO |
| IMG-MOD-003 | Apresentação institucional e portfólio | 02 Comercial | A5 | PDF | — | NOVO |

### 2 · Entrada e briefing lead do CRM ou WhatsApp

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| ENT-001 | Ficha de entrada da demanda origem, data do evento, prazo pedido, anexos, triagem de tempo hábil, decisão G2, prazo limite de aceite | Sistema · confere o assistente comercial | E17a–E23, E1 | Portal | Cartão, CRO-001, BRF | NOVO |
| BRF-001 | Briefing + pré-escopo 12 blocos, anexos, itens escolhidos na biblioteca | Cliente · valida o comercial | B2–B4 | Portal | MEM-001, PRJ | ADAPTAR |
| ATA-001 | Ata de briefing e verificações mesma ata, nova versão a cada reunião (V01 briefing, V02 prévia, V03 render) | Assistente de reunião · valida o vendedor | E1, E12, E4, E5 | Portal | ALT, MEM-001 | NOVO |
| CRO-001 | Micro cronograma reverso 3D → memorial → custo → preço → proposta → prazo limite de aceite | Sistema · confere o assistente comercial | E13, E22, E23 | Portal | Agendas dos setores, alertas E24/E25 | NOVO |

### 3 · Projeto e verificações

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| PRJ-002 | Apresentação de prévia e render padrão Imagine, versões por verificação | 03 Projetos | C5, C7 | PDF | ATA-001, PRP | ADAPTAR |
| MEM-001 | Memorial descritivo = lista mestre de itens modelo IMG-MOD-004: código de rastreio, setor produtivo, origem, materiais, sequência de montagem, status e ALT | 03 Projetos | C7 | Excel → Portal | ORC, PRP, FIC, SOL, CHK, ROM | MODELO PRONTO |
| ALT-NNN | Pedido de alteração tipo (projeto ou proposta), IT afetados, o que muda, impacto em prazo e custo, aprovação | Comercial | E2, E3, E9–E11, G1 | Portal | Nova versão de MEM, ORC, PRP | NOVO |

### 4 · Orçamento, proposta e contrato

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| ORC-001 | Levantamento de custos por categoria linha por IT × MAT, mão de obra, sugestões de redução | 04 Custos | D1 | Excel restrito | ORC-002, teto de cada OC | ADAPTAR |
| ORC-002 | Formação do preço de venda | 05 Financeiro | D2 | Excel restrito | PRP-001, REL-002 | NOVO |
| PRP-001 | Proposta comercial escopo por IT sem custo aberto, valor, condições, validade de 7 dias, prazo limite | 06 Assistente comercial | E7–E15 | Portal → PDF + aceite eletrônico | CTR-001 | EXISTE modelo de estandes |
| CTR-001 | Contrato escopo = PRP aceita, cláusulas, multas, prazos do cliente (artes, aprovações) | 05 Financeiro / Jurídico | D6, D7 | Word/PDF + assinatura eletrônica | FIN-001, CRO-002 | NOVO |
| FIN-001 | Cronograma de recebimentos | 05 Financeiro | D7 | Portal | Fluxo de caixa, REL-002 | NOVO |

### 5 · Planejamento e documentação

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| CRO-002 | Cronograma macro reverso + timeline do cliente | 07 Planejamento | E1–E2 (fase 5) | Portal | Agendas, FIC, SOL, alertas | NOVO |
| CRD-001 | Dossiê de credenciamento exigências da feira, prazos, RRT/ART, lista de equipe, seguro, hotéis, kit de credenciais | 08 Credenciamento | E3–E6 (fase 5) | Portal + kit impresso | Montagem | NOVO |
| PRJ-001 | Detalhamento técnico (D01) | 03 Projetos + engenheiro | E4, E7 (fase 5) | PDF | FIC, CRD | EXISTE |
| FIC-NNN | Ficha técnica de produção por setor uma por setor produtivo; IT, desenho, MAT, horas previstas, data de entrega | 11 Planejamento da produção | E8 (fase 5) | Portal / PDF na bancada | SOL, CHK-001, REL-001 | NOVO |
| ATA-002 | Relatório da reunião de produção | 11 Planejamento da produção | E9 (fase 5) | Portal | FIC (ajustes) | NOVO |

### 6 · Compras setor ainda a ditar · proposta

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| SOL-NNN | Solicitação de compra do setor produtivo, a partir da FIC, ou automática pelo estoque mínimo | Setor produtivo | G0/G1 (fase 6) | Portal (celular) | COT, OC | NOVO |
| COT-NNN | Mapa de cotação fornecedores, preço, prazo, condição, escolhido e motivo | Compras | Fase 6 | Portal | OC | NOVO |
| OC-NNN | Ordem de compra de material detalhe na seção 05 | Compras | Fase 6 | Portal → PDF por e-mail | REC, Financeiro, REL-002 | NOVO |
| OS-NNN | Ordem de serviço a terceiros frete, locação, impressão, montador freelancer; mesmo ciclo da OC | Compras | Fases 6–7 | Portal → PDF por e-mail | Financeiro, REL-002 | NOVO |
| REC-NNN | Recebimento conferido quantidade, qualidade, foto, divergência, NF | A definir | Fase 6 | Portal (celular) | OC, Financeiro | NOVO |

### 7 · Produção

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| FIC-NNN | Avanço na própria ficha foto e ok por IT, horas reais | Setores produtivos | G1–G3 (fase 6) | Portal (celular) | Dashboard, REL-001 | NOVO |
| AMO-NNN | Aprovação de amostra fotos, o que foi aprovado, ressalvas, assinatura do cliente e do comercial | 11 Produção | G4 (fase 6) | Portal | FIC, CHK-001 | NOVO |
| CHK-001 | Checklist de qualidade e expedição por IT | 12 Expedição e qualidade | G5 (fase 6) | Portal (celular) | ROM-001 | NOVO |

### 8 · Expedição e evento

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| ROM-001 | Romaneio de carga + etiquetas volume, IT, peso, ordem de carga; base da nota de remessa | 12 Expedição | H1 | Portal + etiqueta impressa | Nota de remessa, montagem | NOVO |
| CHK-002 | Checklist de montagem sequência por IT, foto de ok por etapa, previsto x realizado | 13 Montagem | H2, H3 | Portal (celular) | TER-001, REL-001 | EXISTE checklist do evento |
| TER-001 | Termo de entrega ressalvas, assinatura do cliente, fotos | 13 Montagem | H3 | Word/PDF → Portal | FIN-001 (libera parcela), REL | EXISTE |

### 9 · Pós-evento e fechamento a ditar · proposta

| Código | Documento | Dono | Etapas | Formato | Alimenta | Situação |
|---|---|---|---|---|---|---|
| ROM-002 | Romaneio de retorno o que volta, avarias, descarte, reaproveitamento em estoque | 13 Montagem | H4 | Portal | Estoque, REL-002 | NOVO |
| REL-001 | Previsto x realizado de tempos por etapa e por IT | 07 Planejamento | H3 | Portal | IMG-PAD-004 (tabela de tempos) | NOVO |
| REL-002 | Fechamento do job orçado (ORC) x comprado (OC/OS) x recebido (FIN) → margem real | 05 Financeiro | H4 | Excel restrito | Diretoria, IMG-CAD-004 (custos de referência) | NOVO |
| — | Avaliação de fornecedor e pesquisa de satisfação do cliente | Compras · Comercial | H4 | Portal | IMG-CAD-003, IMG-CAD-002 | NOVO |

## 05 Ordem de compra: ciclo completo

A OC é o documento formal da Imagine para o fornecedor. O mesmo registro passa por aprovação, envio, confirmação, recebimento, nota fiscal e pagamento, e cada passo fica registrado nele. A OS (serviços de terceiros) segue o mesmo ciclo.

%%{init: {'theme':'base','themeVariables':{'primaryColor':'#ffffff','primaryBorderColor':'#1d2124','primaryTextColor':'#1d2124','lineColor':'#5d666b','fontFamily':'IBM Plex Sans, Arial'}}}%%
flowchart TD
F["FIC do setor
ou estoque mínimo"] --> S["SOL · solicitação
IT · MAT · qtd · data necessária"]:::portal
S --> E{"Tem em
estoque?"}:::dec
E -- "sim" --> R0["Reserva no estoque
baixa no job"]
E -- "não" --> C["COT · mapa de cotação
mín. de fornecedores por faixa"]:::portal
C --> O["OC em RASCUNHO
sistema compara com o ORC-001"]:::portal
O --> A{"Dentro do orçado
e da alçada?"}:::dec
A -- "sim" --> AP["OC APROVADA
aprovação da faixa"]
A -- "não" --> AD["Financeiro ou Diretoria
aprova ou devolve"]:::dec
AD -- "devolve" --> C
AD -- "aprova" --> AP
AP --> EN["ENVIADA por e-mail do sistema
PDF com logo"]:::portal
EN --> FC{"Fornecedor confirma
preço e prazo?"}:::dec
FC -- "não / muda" --> O
FC -- "sim" --> CF["CONFIRMADA
prazo entra no CRO-002"]
CF --> RC["REC · recebimento conferido
qtd · qualidade · foto"]:::portal
RC --> DV{"Divergência?"}:::dec
DV -- "sim" --> DF["Devolução ou
recebimento parcial"]
DF --> RC
DV -- "não" --> NF["NF lançada
OC × REC × NF batem?"]:::portal
NF --> PG["Financeiro programa o pagamento
OC PAGA → ENCERRADA"]
classDef portal fill:#fbe9d5,stroke:#e07b12,stroke-width:1.5px,color:#1d2124
classDef dec fill:#ffffff,stroke:#1d2124,stroke-width:1.5px,color:#1d2124

### Campos mínimos da OC

CABEÇALHO

- Nº: [ID-JOB]_OC-NNN ou IMG-OC-NNN (estoque/geral)

- Versão, data de emissão, status

- Comprador responsável

- Job, cartão da demanda, centro de custo

FORNECEDOR

- Código no IMG-CAD-003, razão social, CNPJ

- Contato e e-mail de envio

- Condição de pagamento

- Frete: CIF ou FOB

ITENS

- Código MAT e descrição padronizada

- IT do memorial que a linha atende

- Unidade, quantidade, preço unitário, total

- Especificação: cor, acabamento, tolerância

- Data de entrega por linha

ENTREGA

- Local: fábrica ou direto no pavilhão

- Data-limite (vem do CRO-002)

- Contato para receber

- Exigências: NF com nº da OC, etiqueta

CONTROLE

- Origem: SOL e COT vinculadas

- Orçado (linha do ORC-001) x esta OC, em R$ e %

- Aprovações: quem, quando, faixa

- Aceite do fornecedor com data

FECHAMENTO

- Recebimentos (REC) parciais e saldo

- NF vinculadas

- Pagamentos programados e pagos

- Histórico de versões e motivo

### Status da OC

RASCUNHO → EM APROVAÇÃO → APROVADA → ENVIADA → CONFIRMADA → RECEBIDA PARCIAL → RECEBIDA → FATURADA → PAGA → ENCERRADA · CANCELADA (motivo)

### Faixas de aprovação valores de exemplo, para validar

| Faixa | Condição | Quem aprova |
|---|---|---|
| A | Até R$ 2.000 e dentro do orçado no ORC-001 | Comprador (aprovação automática registrada) |
| B | Até R$ 10.000, ou até 5% acima do orçado | Financeiro |
| C | Acima de R$ 10.000, mais de 5% acima do orçado, ou compra sem linha no ORC | Diretoria |

### Compras recorrentes

OC ABERTA

### Contrato de fornecimento

Para fornecedores frequentes (MDF, ferragens, impressão, frete): preço e validade negociados uma vez, com teto de valor. A aprovação é feita uma vez, na faixa do teto. Cada pedido vira uma chamada ( OC-012/CH-03 ) que só confere preço e saldo, sem nova aprovação.

REPOSIÇÃO

### Estoque mínimo

Embalagens e consumíveis (parafuso, cola, fita) têm estoque mínimo na biblioteca. Quando o estoque chega no mínimo, o sistema abre uma SOL sozinho, sem job, e o custo é rateado nos jobs que consumirem o material.

REPETIR

### Nova OC a partir de uma anterior

"Repetir compra" copia fornecedor e itens de uma OC antiga. Se a cotação estiver vencida, volta para COT antes de aprovar.

- Uma OC aprovada que muda de valor para cima gera nova versão (V02) e volta para aprovação. Mudança só de prazo é registrada sem nova aprovação, e o CRO-002 recebe o aviso.

- Nenhum pagamento sai sem OC/OS aprovada e sem REC conferido (conferência OC × REC × NF).

- O fornecedor recebe a OC por e-mail do sistema e confirma por um link; WhatsApp serve só para avisar.

## 06 Campos mínimos dos outros modelos-chave

Além do carimbo comum da seção 02. Estes são os documentos que mais circulam entre setores.

ENT-001

### Ficha de entrada

- Origem: CRM ou WhatsApp (vendedor que encaminhou)

- Cliente (IMG-CAD-002), evento, local, data do evento

- Prazo pedido pelo cliente, anexos recebidos

- Triagem E20: tempo hábil sim/não e regra usada

- Decisão G2 (se houver), com custo de urgência

- Prazo limite de aceite conferido (E23)

MEM-001

### Lista mestre de itens

- IT, nome, descrição técnica, medidas, quantidade

- Acabamento, cor, material principal (MAT)

- Setor produtivo responsável

- Próprio, terceirizado ou locado

- Sequência de montagem

- ALT que mexeram no item

ALT-NNN

### Pedido de alteração

- Tipo: projeto (E2) ou proposta (E9)

- Origem: item da ata ou pedido do vendedor

- IT afetados e o que muda

- Impacto em prazo (CRO) e em custo (ORC)

- Aprovação G1 quando é proposta; contraproposta

- Documentos que ganharam nova versão

PRP-001

### Proposta comercial

- Escopo por IT, com renders

- Valor total e por bloco, sem custo aberto

- Condições de pagamento dentro da alçada

- Validade de 7 dias e prazo limite de aceite

- O que não está incluso

- Aceite eletrônico

CRO-001 / 002

### Cronograma reverso

- Data do evento como âncora

- Marcos: proposta, aceite, artes, compras, produção, amostras, carga, montagem

- Dono e data de cada marco

- Folga e alerta de vencimento

- Versão para o cliente sem datas internas

FIC-NNN

### Ficha técnica de produção

- Setor, IT atendidos, desenho do PRJ-001

- MAT e quantidades (base da SOL)

- Horas previstas e data de entrega

- Critério de qualidade do item

- Foto e ok por IT, horas reais

CHK-001

### Checklist de qualidade

- IT, medidas conferidas, acabamento, funcionamento

- Conforme a amostra aprovada (AMO)

- Embalagem e etiqueta

- Foto, responsável, data

ROM-001

### Romaneio de carga

- Volume nº de total, IT, descrição, peso, dimensões

- Ordem de carga e de descarga

- Veículo, motorista, horário

- Conferência na saída e na chegada

REL-002

### Fechamento do job

- Por IT: orçado, comprado, horas reais

- OC/OS fora do orçado e motivo

- Recebido x previsto (FIN-001)

- Margem prevista x real

- Lições para a biblioteca de custos

## 07 Quem faz o quê com cada documento

**P** produz **A** aprova ou confere **U** usa para trabalhar **V** só vê vazio: não acessa

| Documento | Vend. | Assist. | Proj. | Custos | Fin. | Dir. | Planej. | Cred. | Compras | Produção | Qualid. | Mont. | Cliente |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| ENT-001 | P | A | V | V | | A | V | | | | | | |
| BRF-001 | A | U | U | | | | | | | | | | P |
| ATA-001 | A | U | U | | | V | | | | | | | V |
| CRO-001 | U | A | U | U | U | V | V | | | | | | |
| MEM-001 | A | U | P | U | V | V | U | U | U | U | U | U | V |
| ALT-NNN | P | U | U | U | A | A | V | | | | | | |
| ORC-001 | | | | P | U | V | | | U | | | | |
| ORC-002 | | | | V | P | A | | | | | | | |
| PRP-001 | A | P | V | | A | A | | | | | | | A |
| CTR / FIN-001 | V | U | | | P | A | U | | | | | | A |
| CRO-002 | U | U | U | | U | A | P | U | U | U | U | U | V |
| CRD-001 | V | | U | | | | V | P | | | | U | |
| PRJ-001 | V | | P | | | | V | U | | U | U | U | |
| FIC-NNN | | | A | | | | V | | U | P | U | | |
| SOL / COT | | | | | V | | | | P | P | | | |
| OC / OS | | | | U | A | A | V | | P | V | | | |
| REC-NNN | | | | | U | | | | P | U | | | |
| AMO-NNN | A | | V | | | | | | | P | U | | A |
| CHK-001 | | | | | | | V | | | U | P | U | |
| ROM-001 | | | | | U | | V | | | | P | U | |
| CHK-002 / TER | U | | | | U | V | V | | | | | P | A |
| REL-002 | | | | U | P | A | V | | | | | | |

Custos (ORC-001), preço (ORC-002) e fechamento (REL-002) seguem a regra do portal: só Financeiro e Diretoria veem valores de custo. Compras vê apenas o valor orçado da linha que está comprando, para comparar com a OC.

## 08 Ordem de implantação

ONDA 1 · BASE

### O que destrava o resto

Sem códigos IT e MAT, nenhum documento conversa com outro.

- IMG-CAD-004 biblioteca com código MAT

- MEM-001 com coluna IT

- ORC-001 ligado ao MEM por IT

- IMG-PAD-005 alçadas

- SOL + OC (com orçado x comprado)

- ENT-001 (entrada e triagem de prazo)

ONDA 2 · FLUXO

### Prazo e produção

Liga o comercial ao chão de fábrica.

- CRO-001 e CRO-002

- ALT, PRP-001 com IT, CTR e FIN-001

- FIC por setor

- COT, REC, OS

- CHK-001 e ROM-001

ONDA 3 · CONTROLE

### Aprender com cada job

Fecha o ciclo e melhora o próximo orçamento.

- AMO, CRD-001

- OC aberta e reposição automática

- REL-001 e REL-002

- ROM-002, avaliação de fornecedor e do cliente

## 09 Validar antes de implantar

- VALIDAR Siglas novas e números IMG-PAD-003 a 006, IMG-CAD-002 a 004 e IMG-MOD-003: confirmar que nenhum já está em uso no Drive.

- VALIDAR Faixas de aprovação da OC (R$ 2.000 / R$ 10.000 / 5%): são exemplos, não foram informados.

- VALIDAR Número mínimo de cotações e a partir de qual valor ele vale.

- VALIDAR Quem confere o recebimento de material (REC) na fábrica e quando a entrega é direto no pavilhão.

- VALIDAR OC aberta: validade e teto padrão dos contratos de fornecimento.

- VALIDAR Compras, logística e pós-feira ainda não foram ditados; os documentos das fases 6 e 9 são proposta de boa prática.

- VALIDAR PRJ-002 para a apresentação de prévia e render, mantendo o PRJ-001 como detalhamento para não renomear arquivos antigos.

- VALIDAR Transição: até o Portal ter as telas, os modelos novos podem nascer em Excel/Word com o carimbo comum; confirmar se é esse o caminho.

Imagine Arquitetura Efêmera · IMG-PAD-003 V01 · 30/10/2026 · proposta a partir do PLANDEM_FLX-001 V03, da entrada via WhatsApp (E17–E27, G2) e da regra de rastreabilidade do IMG-PAD-002 §4.1
