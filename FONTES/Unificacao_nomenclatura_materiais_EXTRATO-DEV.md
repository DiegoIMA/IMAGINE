# Unificação de nomenclatura de materiais: extrato para desenvolvimento

Extrato feito em 04/11/2026 para dar origem aos itens DOC-074. Traz as regras de nome e a estrutura do cadastro mestre. As listas de materiais e os de-para ficam fora, porque são base de treinamento.

## Aba 1: Leia-me

Faixa B2 : C33 | celulas preenchidas: 47 | formulas: 7 | imagens e formas: 0 | linhas ocultas: 0 | colunas ocultas: 0

| Lin | B | C |
|---:|---|---|
| 2 | Unificação da nomenclatura de materiais |  |
| 3 | Fontes: Lista base materiais (Mapa de Compras) e Custo [job] (Comanda de Materiais) — pasta 'projeto Claude' no Drive, lidas em 19/10/2026. |  |
| 5 | RESUMO |  |
| 6 | Linhas de material na lista base | 257 |
| 7 | Linhas de material na planilha de custos | 161 |
| 8 | Nomes padrão no cadastro mestre proposto | 296 |
| 9 | ...com código já existente | 191 |
| 10 | ...sem código (cadastrar) | 105 |
| 11 | Nomes padrão com mais de uma grafia hoje | 31 |
| 12 | Pendências para decidir | 63 |
| 14 | REGRAS DO NOME PADRÃO |  |
| 15 | 1. Maiúsculas, sem acento e sem Ç | Evita que a IA trate 'ABRAÇADEIRA' e 'ABRACADEIRA' como itens diferentes. |
| 16 | 2. Ordem fixa: MATERIAL + TIPO/ACABAMENTO + COR + MEDIDA | MDF CRU 15MM · MDF ULTRA 15MM · MDF MELAMINA BRANCO 15MM · METALON QUADRADO 40X40X1,20MM |
| 17 | 3. Medida colada na unidade, dimensões com X, decimal com vírgula | 15MM · 6M · 2,00X1,00 · 3,5X25MM |
| 18 | 4. Embalagem/formato fica na coluna Unidade de compra, não no nome | 'Chapa de 2,75 X 1,83', 'rolo com 50 mt', 'C/100un' saem do nome |
| 19 | 5. Sem parênteses e sem campo em branco | Cada cor/variação é um item próprio com código. '[COR]' marca onde falta definir. |
| 20 | 6. Nada de nome genérico na planilha de custos | 'pintura', 'metalon', 'fita dupla face' sempre com o item exato. |
| 21 | 7. Medida da peça, uso e fornecedor vão na descrição | 'adesivo 1,50x1,50' = ADESIVO VINIL IMPRESSO, quantidade 2,25 m². |
| 22 | 8. Código único por item | Item novo só entra no custo depois de ganhar código no cadastro mestre. |
| 24 | COMO USAR AS ABAS |  |
| 25 | Cadastro mestre | Lista única de nomes padrão (lista base + itens novos vindos dos custos). É a proposta da nova lista base. |
| 26 | De-para Lista base | Cada linha da lista base do Osmar → nome padrão, com o problema encontrado. |
| 27 | De-para Custos | Cada linha da planilha da Carol → nome padrão e código. Peças produzidas, serviços e itens do cliente aparecem separados. |
| 28 | Pendencias | Dúvidas que só a equipe resolve. Preencha a coluna amarela 'Decisão'. |
| 30 | Legenda de cores |  |
| 31 |  | Item sem código — precisa ser cadastrado |
| 32 |  | Precisa de confirmação (ver Pendencias) |
| 33 |  | Célula para a equipe preencher |

## Aba 2: Cadastro mestre

Faixa A1 : G297 | celulas preenchidas: 2079 | formulas: 0 | imagens e formas: 0 | linhas ocultas: 0 | colunas ocultas: 0

| Lin | A | B | C | D | E | F | G |
|---:|---|---|---|---|---|---|---|
| 1 | Código | Grupo | Nome padrão | Unidade de compra | Aparece em | Nº de grafias hoje | Grafias encontradas |
| 2 | NOVO | BAGUM E FORRACAO | BAGUM AMADEIRADO BRANCO | ROLO 50M | Lista base | 1 | bagum amadeirado branco |