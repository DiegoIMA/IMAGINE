---
origem: documento interno (IMG-MOD-004_MODELO-MEMORIAL-DESCRITIVO-COM-IT_V02.xlsx)
tamanho_origem_bytes: 45142
data_origem: 2026-10-30
convertido_em: 2026-11-04
metodo: leitura do XML do xlsx, valores salvos no arquivo (o Excel travou neste arquivo)
limites: numeros e datas em valor bruto, sem formatacao; formulas viram valor; imagens nao entram
---

# IMG-MOD-004_MODELO-MEMORIAL-DESCRITIVO-COM-IT_V02.xlsx

## Aba 1: LEIA-ME

celulas preenchidas: 37 | formulas: 0 | linhas ocultas: 0

| Lin | B |
|---:|---|
| 1 | MODELO DE MEMORIAL DESCRITIVO COM CÓDIGO DE ITEM (IT) |
| 2 | IMG-MOD-004 · V02 · 30/10/2026 · item cancelado fica oculto no PDF do cliente (filtro na coluna STATUS) · base: V01_MEMORIAL_DESCRITIVO (IMG-PAD-002 §4.2) e catálogo de modelos IMG-PAD-003 |
| 4 | PARA QUE SERVE |
| 5 | O memorial é a lista mestre de itens do job. O número do ÍTEM (1.1, 2.3…) é o código IT: o mesmo número das etiquetas do detalhamento (PRJ-001). Custos, proposta, fichas de produção, compras, qualidade, romaneio e montagem se referem ao item por ele. |
| 7 | COMO USAR |
| 8 | 1. Salve uma cópia como [CLIENTE]-[FEIRA][AA]_MEM-001_MEMORIAL-DESCRITIVO_V01.xlsx. |
| 9 | 2. Na aba HISTÓRICO DE VERSÕES, preencha as células amarelas: ID (B1), título e local. |
| 10 | 3. Na aba do ambiente, preencha a linha 1 (evento, cliente, contato, local, período, DOC, versão, data), o nome do ambiente (linha 2) e a área (linha 3). Para cada ambiente, duplique a aba. |
| 11 | 4. Apague as linhas de exemplo e escreva os itens. Para incluir um item, insira uma linha no meio da tabela copiando uma linha existente: fórmula, listas, riscado de cancelado e área de impressão acompanham. |
| 12 | 5. Na aba RESUMO, ao duplicar um ambiente, insira uma coluna antes de TOTAL com a mesma fórmula apontando para a nova aba. |
| 14 | REGRAS DO CÓDIGO IT |
| 15 | • Os grupos são numerados em sequência no memorial inteiro, sem repetir número entre ambientes (ambiente 1 com grupos 1 a 4; o ambiente 2 começa no grupo 5). |
| 16 | • Nunca renumere. Item novo recebe o próximo número livre do grupo (ex.: 2.4), mesmo que fique fora da ordem visual. |
| 17 | • Nunca apague. Item retirado fica com STATUS = CANCELADO e com a ALT de origem: sai do RESUMO e fica oculto pelo filtro da coluna STATUS, então não aparece no PDF do cliente. Para ver os cancelados, limpe o filtro da coluna STATUS (eles aparecem riscados). |
| 18 | • Item alterado: STATUS = ALTERADO, ALT de origem preenchida, nova versão do arquivo (_V02) e uma linha na aba HISTÓRICO DE VERSÕES. |
| 19 | • A coluna ÍTEM é texto, para 1.10 não virar 1.1. Digite normalmente. |
| 20 | • O código de rastreio (coluna H) é automático: ID do job + / + IT (ex.: EXEMPLO-FEIRA26/2.1). É o código que vai na OC, na ficha de produção, na etiqueta do volume e no checklist. |
| 22 | COLUNAS |
| 23 | B a G · versão do cliente: GRUPO, ÍTEM, NOME, DESCRIÇÃO, QUANT, DIMENSÕES. É o que sai no PDF (área de impressão B:G). Padrões de escrita: 6,00m x 2,70m · 18,00m² · h= 2,70m · C x P x A. |
| 24 | H · CÓDIGO DE RASTREIO: fórmula, não editar. |
| 25 | I · SETOR PRODUTIVO (lista): quem produz. Separa os itens nas fichas de produção (FIC) de cada setor. |
| 26 | J · ORIGEM (lista): próprio, terceirizado, locado, estoque Imagine ou por conta do cliente. Define se o item gera OC de material, OS de serviço ou nenhuma compra. |
| 27 | K · MATERIAIS PRINCIPAIS: texto livre separado por ponto e vírgula. Base do levantamento de custos (ORC-001) e da solicitação de compra. |
| 28 | L · CÓD. MAT: códigos da biblioteca de materiais (IMG-CAD-004), quando ela existir. Por enquanto pode ficar vazio. |
| 29 | M · SEQ. MONTAGEM: ordem de montagem no evento. Alimenta o romaneio (ordem de carga) e o checklist de montagem. |
| 30 | N · STATUS (lista): ATIVO, ALTERADO ou CANCELADO. |
| 31 | O · ALT DE ORIGEM: número do pedido de alteração que mudou o item (ALT-001…). |
| 32 | P · ENTROU NA VERSÃO: versão do memorial em que o item apareceu (V01, V02…). |
| 33 | Q · OBSERVAÇÃO INTERNA: não vai para o cliente. |
| 35 | CORES E IMPRESSÃO |
| 36 | Amarelo = preencher. Cinza = cabeçalho do documento e área. Verde = título do ambiente. Laranja-claro = controle interno. |
| 37 | As colunas H a Q estão agrupadas: clique no sinal de menos acima delas para recolher antes de mostrar ao cliente. A área de impressão já está em B:G, paisagem, uma página de largura. ANTES DE GERAR O PDF: reaplique o filtro (Dados > Reaplicar, ou Ctrl+Alt+L) para esconder os itens cancelados há pouco. |
| 38 | O logo vai no canto da linha 1. Se o arquivo for gerado por script (openpyxl), o logo precisa ser reinserido. |
| 39 | As linhas de exemplo mostram um item alterado (2.1), um cancelado (2.3, oculto pelo filtro) e um incluído na V02 (3.1). |
| 41 | VERSÕES DESTE MODELO |
| 42 | V01 · 30/10/2026 · criação: colunas internas H a Q, código de rastreio, listas, RESUMO e HISTÓRICO DE VERSÕES. |
| 43 | V02 · 30/10/2026 · item cancelado oculto no PDF do cliente (filtro na coluna STATUS), a pedido do Diego. |

## Aba 2: ESTANDE EXEMPLO

celulas preenchidas: 98 | formulas: 296 | linhas ocultas: 1

| Lin | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q |
|---:|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | [EVENTO] - [CLIENTE] / CONTATO: [NOME - TELEFONE] \| LOCAL: [CIDADE/UF] \| PERÍODO: [dd a dd/mm/aaaa] \| REF. PROJETO: [AP] / DOC: [CLIENTE]-[FEIRA][AA]_MEM-001 \| VERSÃO: V01 \| DATA: dd/mm/aaaa |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 2 | ESTANDE (EXEMPLO) |  |  |  |  |  | CONTROLE INTERNO · colunas H a Q / não saem no PDF do cliente (área de impressão B:G) |  |  |  |  |  |  |  |  |  |
| 3 | ÁREA / 6,00m x 5,00m = 30,00m² |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| 4 | GRUPO | ÍTEM | NOME | DESCRIÇÃO | QUANT | DIMENSÕES | CÓDIGO DE RASTREIO | SETOR PRODUTIVO | ORIGEM | MATERIAIS PRINCIPAIS | CÓD. MAT | SEQ. MONTAGEM | STATUS | ALT DE ORIGEM | ENTROU NA VERSÃO | OBSERVAÇÃO INTERNA |
| 5 | PISO | 1.1 | TABLADO | Tablado em marcenaria h= 0,10m, com rampa de acesso frontal | 1 | 6,00m x 5,00m = 30,00m² | EXEMPLO-FEIRA26/1.1 | Marcenaria | Próprio | MDF 18mm; pinus 5x10cm |  | 1 | ATIVO |  | V01 |  |
| 6 |  | 1.2 | CARPETE | Carpete grafite aplicado sobre o tablado, colado com fita dupla face | 1 | 30,00m² | EXEMPLO-FEIRA26/1.2 | Tapeçaria | Próprio | Carpete grafite; fita dupla face |  | 2 | ATIVO |  | V01 |  |
| 7 | MOBILIÁRIO | 2.1 | BALCÃO DE ATENDIMENTO | Balcão em marcenaria MDF 18mm branco TX, com fita LED 4000K embutida sob o tampo h= 1,10m | 1 | 2,00m x 0,60m x 1,10m | EXEMPLO-FEIRA26/2.1 | Marcenaria | Próprio | MDF 18mm branco TX; fita LED 4000K; fonte 12V |  | 4 | ALTERADO | ALT-001 | V01 | LED incluído na V02 a pedido do cliente (ata da prévia) |
| 8 |  | 2.2 | BANQUETAS | Banqueta alta com assento branco | 4 | h= 0,75m | EXEMPLO-FEIRA26/2.2 | Não se aplica | Locado |  |  | 5 | ATIVO |  | V01 |  |
| 9 |  | 2.3 | MESA BISTRÔ | Mesa bistrô redonda com tampo branco | 1 | Ø 0,60m x 1,10m | EXEMPLO-FEIRA26/2.3 | Não se aplica | Locado |  |  |  | CANCELADO | ALT-001 | V01 | Retirada pelo cliente na verificação da prévia |
| 10 | COM. VISUAL | 3.1 | LOGO TESTEIRA | Logo em letra caixa com iluminação interna, fixado na testeira | 1 | 3,00m x 0,40m | EXEMPLO-FEIRA26/3.1 | Comunicação visual | Terceirizado | ACM; módulo LED |  | 3 | ATIVO | ALT-001 | V02 | Incluído na V02 |

## Aba 3: RESUMO

celulas preenchidas: 53 | formulas: 43 | linhas ocultas: 0

| Lin | A | B | C |
|---:|---|---|---|
| 1 | RESUMO POR SETOR E ORIGEM · base para as fichas de produção (FIC) e para compras (SOL/OC) |  |  |
| 3 | SETOR PRODUTIVO | ESTANDE EXEMPLO | TOTAL |
| 4 | Marcenaria | 2 | 2 |
| 5 | Serralheria | 0 | 0 |
| 6 | Pintura | 0 | 0 |
| 7 | Elétrica | 0 | 0 |
| 8 | Tapeçaria | 1 | 1 |
| 9 | Comunicação visual | 1 | 1 |
| 10 | Montagem (no evento) | 0 | 0 |
| 11 | Não se aplica | 1 | 1 |
| 13 | ORIGEM | ESTANDE EXEMPLO | TOTAL |
| 14 | Próprio | 3 | 3 |
| 15 | Terceirizado | 1 | 1 |
| 16 | Locado | 1 | 1 |
| 17 | Estoque Imagine | 0 | 0 |
| 18 | Por conta do cliente | 0 | 0 |
| 20 | ITENS VÁLIDOS (ATIVO + ALTERADO) | 5 | 5 |
| 21 | ITENS CANCELADOS | 1 | 1 |
| 23 | Ao duplicar a aba de um ambiente, insira uma coluna antes de TOTAL, copie a coluna B e troque o nome da aba nas fórmulas. |  |  |

## Aba 4: HISTÓRICO DE VERSÕES

celulas preenchidas: 20 | formulas: 0 | linhas ocultas: 0

| Lin | A | B | C | D | E |
|---:|---|---|---|---|---|
| 1 | ID | EXEMPLO-FEIRA26_MEM-001 |  |  |  |
| 2 | TÍTULO | Memorial descritivo - [ambiente] - [cliente] - [evento] |  |  |  |
| 3 | LOCAL | PASTA PRINCIPAL IMAGINE/[CLIENTE] - [EVENTO]/ |  |  |  |
| 5 | VERSÃO | DATA | AUTOR | ALTERAÇÃO | ALT DE ORIGEM |
| 6 | V01 | 30/10/2026 | [autor] | Criação do memorial a partir do briefing e da prévia. |  |
| 7 | V02 | dd/mm/aaaa | [autor] | Exemplo: LED incluído no balcão (2.1), mesa bistrô cancelada (2.3), logo da testeira incluído (3.1). | ALT-001 |

## Aba 5: LISTAS

celulas preenchidas: 19 | formulas: 0 | linhas ocultas: 0

| Lin | A | B | C |
|---:|---|---|---|
| 1 | SETOR PRODUTIVO | ORIGEM | STATUS |
| 2 | Marcenaria | Próprio | ATIVO |
| 3 | Serralheria | Terceirizado | ALTERADO |
| 4 | Pintura | Locado | CANCELADO |
| 5 | Elétrica | Estoque Imagine |  |
| 6 | Tapeçaria | Por conta do cliente |  |
| 7 | Comunicação visual |  |  |
| 8 | Montagem (no evento) |  |  |
| 9 | Não se aplica |  |  |

