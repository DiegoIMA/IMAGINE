---
conv_id: CONV-039
origem: documento interno (PLANDEM_FLX-001_FLUXO-IMAGINE_V03.html)
tamanho_origem_bytes: 30666
data_origem: 2026-10-30
convertido_em: 2026-11-04
metodo: programa conv\passo1.ps1 (extracao de texto)
limites: texto, titulos e tabelas; estilos, scripts e layout nao entram
---

# PLANDEM_FLX-001_FLUXO-IMAGINE_V03.html

Fluxo Imagine — Planejamento de Demandas

# Organograma e fluxo de atividades da Imagine

Visão futura ditada pelo Diego: da prospecção na planta da feira até a montagem no evento, com o Portal da Imagine conectando cliente, comercial, projetos, custos, financeiro, planejamento e produção.

**Doc**PLANDEM_FLX-001

**Versão**V03

**Data**30/10/2026

**Base**PLANDEM_SET-001 V18

## 01 Organograma por área

Setores agrupados em áreas para leitura. Os nomes dos setores vêm dos ditados; o agrupamento em áreas é uma proposta para você validar.

Setor ditado
Setor citado, ainda não ditado

%%{init: {'theme':'base','themeVariables':{'primaryColor':'#ffffff','primaryBorderColor':'#1d2124','primaryTextColor':'#1d2124','lineColor':'#5d666b','fontFamily':'IBM Plex Sans, Arial'}}}%%
flowchart TB
DIR["DIRETORIA
CEO Diego · CFO Maitê
validações e aprovações"]:::top
DIR --> COM["ÁREA COMERCIAL"]:::area
DIR --> PRJ["ÁREA DE PROJETOS"]:::area
DIR --> FIN["ÁREA FINANCEIRA"]:::area
DIR --> PLA["ÁREA DE PLANEJAMENTO"]:::area
DIR --> PRD["ÁREA DE PRODUÇÃO"]:::area
DIR --> OPE["ÁREA DE OPERAÇÃO NO EVENTO"]:::area

COM --> S01["01 Prospecção ativa"]
COM --> S02["02 Comercial
representantes"]
COM --> S06["06 Assistente comercial
propostas e contratos"]

PRJ --> S03["03 Projetos
conceito, modelagem, render, memorial"]
PRJ --> ENG["Engenheiro e arquiteto
cálculo de cargas, RRTs"]

FIN --> S04["04 Custos
acesso restrito"]
FIN --> S05["05 Financeiro / Jurídico
preço de venda, contratos, recebimentos"]
FIN --> CMP["Compras"]:::pend

PLA --> S07["07 Planejamento
entrada de demandas, cronograma reverso"]
PLA --> S08["08 Credenciamento
e documentação"]

PRD --> S11["11 Planejamento e cronogramas
da produção · dashboard"]
S11 --> PROD["Setores produtivos
Pintura · Serralheria · Elétrica
Marcenaria · Tapeçaria · Comunicação visual"]
S11 --> S12["12 Expedição e
controle de qualidade"]

OPE --> LOG["Logística / transporte"]:::pend
OPE --> S13["13 Montagem
montador responsável"]
OPE --> POS["Pós-feira / feedback"]:::pend

classDef top fill:#1d2124,color:#ffffff,stroke:#1d2124,stroke-width:2px
classDef area fill:#fbe9d5,stroke:#e07b12,stroke-width:1.5px,color:#1d2124
classDef pend fill:#ffffff,stroke:#8a6d9c,stroke-dasharray:5 4,color:#6b4f7d

## 02 Fluxograma de atividades

Fluxo de ponta a ponta, em sete fases. Losangos são decisões; o tracejado marca o que ainda não foi ditado. Os códigos E1–E16 e G1 são do controle de alterações da demanda e da proposta, detalhado na seção 03.

Atividade
Ação no Portal da Imagine
Decisão / aprovação
A ditar

%%{init: {'theme':'base','themeVariables':{'primaryColor':'#ffffff','primaryBorderColor':'#1d2124','primaryTextColor':'#1d2124','lineColor':'#5d666b','clusterBkg':'#f3f4f2','clusterBorder':'#b9bfbb','fontFamily':'IBM Plex Sans, Arial'}}}%%
flowchart TD
subgraph F1["1 · CAPTAÇÃO"]
A1["Planta / mapa da feira"] --> A2["01 Prospecção: pesquisa expositor
e decisores, contato por telefone,
tráfego pago e representantes"]
A2 --> A3["Lead aberto no CRM
daqui em diante, tudo pelo sistema"]:::portal
A3 --> A4["Filtro de categorização
porte, verba, tipo de cliente e demanda"]
A4 --> A5["02 Representante atende
e envia material"]
end

subgraph F2["2 · BRIEFING E ABERTURA DA DEMANDA"]
B1["Cliente recebe login e senha"]:::portal --> B2["Preenche o briefing
12 blocos + anexos"]:::portal
B2 --> B3["Seleciona itens na biblioteca
pré-escopo e lista de materiais"]:::portal
B3 --> B4{"Comercial valida:
informação completa?"}:::dec
B4 -- "não" --> B2
B4 -- "sim" --> B5["Reunião online de briefing
gravada pelo assistente de reunião
+ quadro de rafes compartilhado"]
B5 --> B6["E1 · IA abre o cartão da demanda
cerca de 1 min após a reunião:
dados do evento, ata, prints de
imagens e rafes, briefing"]:::portal
B6 --> B7["E12 · Vendedor da reunião
confere e valida o cartão"]
B7 --> B8["E13 · IA abre as demandas dos setores
+ cronograma reverso até o envio da proposta
3D → memorial → custo → preço → proposta
nas agendas de Projetos, Custos e Comercial"]:::portal
end

subgraph F3["3 · PROJETO E VERIFICAÇÕES COM O CLIENTE"]
C1["03 Conceito criativo"] --> C2{"Diretoria valida
o conceito?"}:::dec
C2 -- "não" --> C1
C2 -- "sim" --> C3["Referências e esquema criativo
cartão: briefing + ata + rafes + escopo"]
C3 --> C4["Modelagem 3D"] --> C5["Apresentação prévia"]
C5 --> C6{"Diretoria + comercial
aprovam a prévia?"}:::dec
C6 -- "não, ajustar" --> C4
C6 -- "sim" --> V1["E4 · Verificação 1 com o cliente: prévia
reunião online gravada"]
V1 --> V2["E5 · Ata atualizada em checklist
ok riscado · aberto fica aberto"]:::portal
V2 --> V3{"E6 · Ficou item
em aberto?"}:::dec
V3 -- "sim" --> V4["E2 · Comercial pede o ajuste no sistema
→ Projetos + Comercial · E3 ajuste"]:::portal
V4 --> C4
V3 -- "não" --> C7["Render + apresentação padrão Imagine
+ memorial descritivo Excel"]:::portal
C7 --> W1["E4 · Verificação 2 com o cliente: render
reunião online gravada"]
W1 --> W2["E5 · Ata atualizada em checklist"]:::portal
W2 --> W3{"E6 · Ficou item
em aberto?"}:::dec
W3 -- "sim" --> W4["E2 · Comercial pede o ajuste no sistema
→ Projetos + Comercial · E3 ajuste"]:::portal
W4 --> C7
end

subgraph F4["4 · ORÇAMENTO, PROPOSTA E CONTRATO"]
D1["04 Custos: lista de custos por item
+ sugestões de redução · área restrita"]:::portal
D1 --> D2["05 Financeiro: mão de obra, logística,
hospedagem, alimentação → preço de venda"]:::portal
D2 --> D3["E7 · Assistente comercial elabora a proposta
no sistema e valida com o vendedor"]:::portal
D3 --> P1{"E8 · Vendedor quer mudar
as condições?"}:::dec
P1 -- "sim" --> P2["E9 · Vendedor pede a alteração no sistema
pagamento, valor, prazos, itens adicionais,
prazo de fechamento"]:::portal
P2 --> P3["E10 · Aviso a Financeiro e Diretoria
resposta em até 3 dias"]:::portal
P3 --> P4{"G1 · Financeiro ou Diretoria
aprova? basta um"}:::dec
P4 -- "não" --> P5["Contraproposta: quem recusou
indica as condições possíveis"]
P4 -- "sim" --> P6["E11 · Sistema atualiza a proposta
e devolve ao vendedor"]:::portal
P5 --> P6
P6 --> P1
P1 -- "não" --> P7["E14 · Sistema envia por e-mail
com assinatura eletrônica de aceite
nunca por WhatsApp"]:::portal
P7 --> D4{"E15 · Resposta
do cliente"}:::dec
D4 -- "sem resposta" --> D5["Lembrete a cada 7 dias · 3º aviso expira
prazo final: 30 dias antes do evento"]
D5 --> D4
D4 -- "pede ajuste" --> P8["Assistente comercial ajusta
e o sistema reenvia"]:::portal
P8 --> P7
D4 -- "recusa" --> P9{"E16 · Vendedor:
renegociar?"}:::dec
P9 -- "sim" --> P2
P9 -- "não" --> P10["Cartão encerrado
cliente não fechou"]:::fim
D4 -- "aceita = pré-contrato" --> D6["Financeiro / Jurídico valida
pagamento e cláusulas"]
D6 --> D7["Contrato assinado
+ datas de recebimento"]
D7 --> D8["Entrada em
Demandas aprovadas"]:::portal
end

subgraph F5["5 · PLANEJAMENTO E DOCUMENTAÇÃO"]
E1["07 Cronograma macro reverso
data do evento → hoje"] --> E2["Timeline para o cliente
artes, compras, produção,
amostras, carregamento, montagem"]:::portal
E1 --> E3["08 Credenciamento: acesso ao portal
da feira e datas-limite do evento"]
E3 --> E4["Engenheiro: detalhamento,
cargas e pontos aéreos"]
E4 --> E5{"Evento aprova
o projeto?"}:::dec
E5 -- "com ressalvas / não" --> E4
E5 -- "sim" --> E6["RRTs + equipe + hotéis
+ alimentação + nota de remessa
→ kit impresso de credenciais"]
E1 --> E7["Projetos: detalhamento técnico
no prazo do cronograma"]
E7 --> E8["11 Fichas técnicas por setor
+ checklist do memorial"]
E8 --> E9["Reunião de produção presencial
produção + montagem → relatório"]
end

subgraph F6["6 · PRODUÇÃO"]
G0["Compras"]:::pend
G1["Setores produtivos: analisa,
pede material, produz pela ficha"]
G0 --> G1
G1 --> G2["Foto + ok da peça"]:::portal
G2 --> G3["11 Produção confere
dashboard de status"]:::portal
G3 --> G4{"Cliente + comercial
aprovam a amostra?"}:::dec
G4 -- "não" --> G1
G4 -- "sim" --> G5["12 Qualidade confere, embala,
etiqueta e fotografa"]:::portal
end

subgraph F7["7 · EVENTO"]
H1["Logística / transporte
carregamento"]:::pend
H1 --> H2["13 Montagem na sequência
foto e ok por etapa"]:::portal
H2 --> H3["Previsto x realizado
alimenta o histórico"]:::portal
H3 --> H4["Pós-feira / feedback"]:::pend
end

A5 --> B1
B8 --> C1
B6 -. "referências e rafes" .-> C3
W3 -- "não" --> D1
D8 --> E1
E9 --> G1
E6 -.-> H2
G5 --> H1

classDef portal fill:#fbe9d5,stroke:#e07b12,stroke-width:1.5px,color:#1d2124
classDef dec fill:#ffffff,stroke:#1d2124,stroke-width:1.5px,color:#1d2124
classDef pend fill:#ffffff,stroke:#8a6d9c,stroke-dasharray:5 4,color:#6b4f7d
classDef fim fill:#1d2124,stroke:#1d2124,color:#ffffff

A validação de amostras (fase 6) segue as datas marcadas no cronograma: as fotos sobem no portal e cliente e comercial são notificados. Todo prazo vencido gera alerta no dia seguinte para os outros setores.

## 03 Controle de alterações da demanda e da proposta

Toda alteração, no projeto ou na proposta, passa pelo sistema, com registro e aprovação. O objetivo é não desviar o processo no dia a dia, que no fim vira uma bola de neve. Vale desde a abertura do lead no CRM.

### Versão macro

%%{init: {'theme':'base','themeVariables':{'primaryColor':'#ffffff','primaryBorderColor':'#1d2124','primaryTextColor':'#1d2124','lineColor':'#5d666b','fontFamily':'IBM Plex Sans, Arial'}}}%%
flowchart LR
M0(["Início
lead no CRM"]):::fim --> M1["Reunião de briefing
gravação · ata · rafes "]
M1 --> M2["Abertura da demanda
E1 · E12 · E13
cartão validado ·
cronograma reverso "]
M2 --> M3["Projeto e verificações
E2 – E6
ata em checklist
na prévia e no render "]
M3 --> M4["Proposta
E7 – E11 · G1
proposta validada
pelo vendedor "]
M4 --> M5["Envio e aceite
E14 – E16
aceite eletrônico "]
M5 --> M6(["Fim
pré-contrato ou
cartão encerrado"]):::fim
classDef fim fill:#1d2124,stroke:#1d2124,color:#ffffff

### Etapas detalhadas

| Código | Etapa | Responsável | Entrada | Saída / lógica | Marca |
|---|---|---|---|---|---|
| E1 | IA abre o cartão da demanda, cerca de 1 min após a reunião de briefing | IA / sistema | Gravação da reunião, briefing enviado ou salvo pelo cliente | Cartão de cliente novo: dados do evento, ata, prints de imagens e rafes, briefing | DOCUMENTO |
| E12 | Vendedor confere e valida o cartão | Vendedor que participou da reunião | Cartão gerado pela IA | Cartão validado | CONFERÊNCIA |
| E13 | IA abre as demandas dos setores e monta o cronograma reverso até o envio da proposta | IA / sistema | Cartão validado + prazo combinado com o cliente | Datas de 3D → memorial e projeto para custos → custo → preço de venda → montagem → envio da proposta, nas agendas de Projetos, Custos e Comercial | DOCUMENTO |
| E2 | Comercial pede o ajuste no sistema | Comercial | Item em aberto da ata | Pedido direto para Projetos e para o comercial que está atuando, sem aprovação prévia | ENVIO |
| E3 | Ajuste do projeto | Projetos | Pedido de ajuste | Prévia ou render ajustado | RETRABALHO |
| E4 | Reunião de verificação com o cliente: 1ª na prévia, 2ª no render | Comercial + cliente; assistente de reunião grava | Prévia ou render | Gravação e transcrição | DOCUMENTO |
| E5 | Ata atualizada em formato de checklist | Assistente de reunião | Gravação + ata anterior | Itens ok riscados; itens em aberto continuam abertos | DOCUMENTO · CONFERÊNCIA |
| E6 | Ficou item em aberto? | Comercial | Ata em checklist | Se sim, E2. Se não: da prévia segue para o render; do render segue para Custos | DECISÃO |
| E7 | Assistente comercial elabora a proposta e valida com o vendedor | Assistente comercial + vendedor | Preço de venda + memorial | Proposta pronta no sistema | CONFERÊNCIA |
| E8 | Vendedor quer mudar as condições? | Vendedor | Proposta pronta | Se sim, E9. Se não, E14 | DECISÃO |
| E9 | Pedido de alteração da proposta | Vendedor | Condições desejadas: pagamento, valor, prazos, itens adicionais, prazo de fechamento | Pedido registrado no sistema | DOCUMENTO |
| E10 | Aviso ao Financeiro e à Diretoria | Sistema | Pedido de alteração | Notificação; resposta em até 3 dias | ENVIO · ESPERA |
| G1 | Aprovação da alteração | Financeiro ou Diretoria (basta um) | Pedido + padrões de desconto máximo, parcelamento, prazo mínimo e prazo de fechamento | Se aprovado, E11. Se recusado, quem recusou faz contraproposta com as condições possíveis e segue para E11 | APROVAÇÃO |
| E11 | Proposta atualizada | Sistema | Decisão da G1 | Proposta atualizada de volta ao vendedor (volta a E8) | DOCUMENTO |
| E14 | Envio ao cliente | Sistema | Proposta validada pelo vendedor | E-mail com assinatura eletrônica de aceite; nunca por WhatsApp ou canal sem aceite oficial | ENVIO |
| E15 | Resposta do cliente | Cliente | Proposta enviada | Aceita: pré-contrato. Pede ajuste: assistente ajusta e o sistema reenvia. Sem resposta: régua de 7 dias com 3 avisos. Recusa: E16 | DECISÃO · ESPERA |
| E16 | Renegociar ou encerrar | Vendedor | Recusa do cliente | Renegociação: volta a E9. Cancelamento: cartão encerrado como "cliente não fechou" | DECISÃO |

### Prazos

- A produção começa no máximo **20 dias antes do evento**. Com cerca de 10 dias de formalização, a proposta precisa estar fechada até **30 dias antes do evento**, e o sistema alerta esse prazo final.

- A proposta tem validade de 7 dias, com lembrete a cada 7 dias e expiração no 3º aviso.

- Financeiro ou Diretoria respondem um pedido de alteração (G1) em no máximo **3 dias**.

- O cronograma reverso da E13 parte do prazo combinado com o cliente e distribui as datas nas agendas de cada setor.

### Validar antes de implantar

- VALIDAR Valores dos padrões da G1: desconto máximo, parcelamento e prazo mínimo (não informados).

- VALIDAR Quando a régua de 7 dias e o limite de 30 dias antes do evento se cruzam, vale o que vencer primeiro (inferido).

- VALIDAR Na E12, se o vendedor encontrar erro no cartão, ele mesmo corrige antes de validar (inferido).

- VALIDAR Na E11, a proposta é atualizada pelo sistema; não foi dito se o assistente comercial revisa antes (não informado).

- VALIDAR Ferramenta do assistente de reunião ainda a definir.

## 04 Assistente de reunião

Nas reuniões online com o cliente entra um assistente de reunião com IA (ferramenta externa, também chamada de “notetaker”). Ele entra na chamada, grava áudio e tela, transcreve em português e entrega o resumo. Atua três vezes: na reunião de briefing (gera a ata e alimenta o cartão da E1) e nas verificações da prévia e do render (atualiza a mesma ata em checklist, E5).

GRAVA

### Reunião inteira

Áudio, vídeo e tela compartilhada. Os rafes e referências que aparecem na tela ficam no vídeo, com o minuto marcado.

EXTRAI

### Tópicos e bullet points

O que foi discutido, por assunto, com os próximos passos e quem ficou responsável.

DESTACA

### Pontos críticos

Verba, prazo, medidas, restrições da feira e “não pode faltar”: o que o comercial não pode esquecer.

CAPTA

### Referências e rafes

Marcas, estandes e materiais citados pelo cliente, e os rafes feitos no quadro compartilhado. Vão para o Conceito criativo (03).

| Opção | Ponto forte | Atenção |
|---|---|---|
| tl;dv | Grava vídeo e tela em Meet, Zoom e Teams; dá para marcar momentos durante a reunião; resumo em português. | Plano gratuito limita os resumos com IA. |
| Fathom | Grava vídeo e tela, resumo e destaques; plano gratuito generoso. | Integração com CRM e portal só nos planos pagos. |
| Fireflies.ai | Transcrição forte, tópicos, busca por assunto e integrações (CRM, Drive, API). | Foco em áudio e texto; o vídeo da tela pesa menos. |
| Nativo do Meet ou Teams | Gemini no Google Meet ou Copilot no Teams: grava e resume sem ferramenta extra. | Exige o plano Workspace ou Microsoft 365 com IA. |

- **Rafes:** durante a reunião, rascunhos em um quadro compartilhado (Miro ou FigJam), não só no papel. O quadro vira um arquivo que sobe para o cartão junto com a gravação.

- **Consentimento:** o cliente é avisado no convite e no início da chamada que a reunião será gravada e transcrita (LGPD).

- **Destino:** gravação, ata e rafes ficam no cartão da demanda e alimentam as Referências e o esquema criativo (fase 3).

Ferramenta a definir. Para escolher, testar duas opções em uma reunião real: em português, qual resumo sai melhor e qual delas manda o resumo e a gravação para o portal ou o CRM.

## 05 Setores e o que entregam

01

### Prospecção ativa

Planta da feira → decisores → contato → lead no CRM.
2 pessoas + representantes

02

### Comercial

Atende o lead, libera o portal, valida o briefing, conduz as reuniões gravadas, valida o cartão da demanda, pede ajustes e alterações pelo sistema.
Representantes

03

### Projetos

Conceito, modelagem, prévia, render, apresentação e memorial; ajustes pedidos pelo sistema; depois o detalhamento técnico.
Projetista, diretor de arte

04

### Custos

Lista de custos por item e sugestões de redução. Só Financeiro e diretoria veem.
A confirmar

05

### Financeiro / Jurídico

Custo completo, preço de venda, aprovação de alterações na proposta (G1), validação do contrato e fluxo de recebimentos.
CFO

06

### Assistente comercial

Elabora a proposta, valida com o vendedor, ajusta e reenvia pelo sistema; régua de 7 dias, contrato e entrada da demanda aprovada.
A confirmar

07

### Planejamento

Cronograma macro reverso e timeline do cliente; prazos para Projetos, Produção e Credenciamento.
A confirmar

08

### Credenciamento

Portal da feira, aprovação do projeto pelo evento, RRTs, equipe, hotéis, frete e kit de credenciais.
A confirmar + engenheiro e arquiteto

11

### Planejamento da produção

Fichas técnicas por setor, checklist, reunião de produção, conferência e dashboard.
A confirmar

09–10

### Setores produtivos

Pintura, Serralheria, Elétrica, Marcenaria, Tapeçaria e Comunicação visual, no mesmo ciclo com foto e ok.
A confirmar

12

### Expedição e qualidade

Confere, embala, etiqueta e fotografa; controla o estoque de embalagens.
A confirmar

13

### Montagem

Carrega, descarrega e monta na sequência com foto por etapa; previsto x realizado.
Montador responsável

—

### Compras

Recebe pedidos de material dos setores e reposição de embalagens. A ditar.

—

### Logística / transporte

Carregamento e frete até o evento. A ditar.

—

### Pós-feira / feedback

Desmontagem, retorno e lições aprendidas. A ditar.

## 06 Regras que valem para todo o portal

- Desde o lead no CRM, todo pedido de ajuste ou alteração é feito pelo sistema, nunca por fora.

- Proposta só sai por e-mail pelo sistema, com assinatura eletrônica de aceite; nunca por WhatsApp.

- Cada setor vê só os itens do seu setor; a área de Custos só é visível para Financeiro e diretoria.

- Todo ok de etapa vem com foto pelo celular: setor produtivo, produção, qualidade e montagem.

- Todo prazo tem data; se vencer, o sistema alerta os outros setores no dia seguinte.

- A timeline macro reversa é a referência única de datas para o cliente e para todos os setores.

- O previsto x realizado de cada etapa alimenta o histórico e o estudo de tempos e movimentos.

- Toda reunião com cliente é gravada com aviso prévio; gravação e ata ficam no cartão da demanda.

Imagine Arquitetura Efêmera · PLANDEM_FLX-001 V03 · V01 gerada a partir dos ditados de 22/10/2026; V02 incluiu o assistente de reunião; V03 (30/10/2026) incluiu o controle de alterações da demanda e da proposta (E1–E16, G1) · numeração de setores conforme PLANDEM_SET-001
