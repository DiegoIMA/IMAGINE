---
id: ERP-MOD-BIB
titulo: Módulo Biblioteca de itens e locações
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# BIB · Biblioteca de itens e locações

47 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (13)

- `UNI-00368` `FLX-MICRO` `proposto` Itens novos ou alterados são marcados e cadastrados no projeto; o Portal alerta e eles são usados normalmente no 3D. _[DOC-008 · PRJ-E7 · ITM-00176]_
- `UNI-00375` `FLX-MICRO` `vigente` Ao fim do projeto, itens novos vão ao Diego, que valida em 1 dia; os aprovados entram na biblioteca para os próximos projetos. _[DOC-008 · PRJ-E16 · ITM-00188]_
- `UNI-00485` `FLX-MICRO` `vigente` `conf:media` Gravação de padrões: o profissional grava vídeos curtos por etapa, Marília envia pelo app, a IA transcreve e monta rascunho, o validador do setor aprova e o padrão entra na biblioteca. _[DOC-021 · §1 Como funciona · ITM-00584]_
  - Requisitos separados deste item: `UNI-00485.01`, `UNI-00485.02`, `UNI-00485.03`, `UNI-00485.04`
- `UNI-00485.01` `FLX-MICRO` `proposto` `conf:media` O arquiteto confere as fichas geradas e a marcenaria valida os padrões, que são refinados a cada projeto. _[DOC-091 · §33 Marcenaria, biblioteca de padrões construtivos · ITM-02377 · parte de UNI-00485]_
- `UNI-00485.02` `FLX-MICRO` `proposto` O profissional do setor grava a produção de cada item em vídeos curtos por etapa, narrando materiais, medidas, encaixes e fixação com a trena na câmera, e os envia pelo app ligados ao tipo de item. _[DOC-091 · §35 Padrões construtivos por vídeo, passos 1 e 2 · ITM-02388 · parte de UNI-00485]_
- `UNI-00485.03` `FLX-MICRO` `proposto` A IA transcreve a narração, separa as imagens de cada etapa e gera um rascunho do padrão construtivo com passo a passo, materiais, medidas citadas e foto de cada etapa. _[DOC-091 · §35 Padrões construtivos por vídeo, passo 3 · ITM-02389 · parte de UNI-00485]_
- `UNI-00485.04` `FLX-MICRO` `proposto` O rascunho do padrão vai para os validadores (marcenaria: Marco, Wagner, Leonardo, Henrique, Rômulo; elétrica: Alexandre) e só depois do ok entra na biblioteca de padrões e é usado pela IA nas fichas. _[DOC-091 · §35 Padrões construtivos por vídeo, passo 4 · ITM-02390 · parte de UNI-00485]_
- `UNI-00486` `FLX-MICRO` `vigente` `conf:media` Depois do envio, o padrão aprovado entra na biblioteca com código e versão e a IA o usa nas fichas indicando o código; item sem padrão gera aviso à Marília para a lista de gravação. _[DOC-021 · §7 Depois do envio · ITM-00591]_
  - Requisitos separados deste item: `UNI-00486.01`
- `UNI-00624` `FLX-MICRO` `proposto` Ciclo da biblioteca: buscar o item, usar no 3D, cadastrar se alterado ou criado com código e imagem, Diego valida em 1 dia e a IA atualiza a biblioteca evitando duplicar. _[DOC-008 · §04 Ciclo da biblioteca · ITM-00193]_
- `UNI-00785.03` `FLX-MICRO` `proposto` `conf:media` A IA sugere as etiquetas de cada foto do banco de imagens e o Marketing confere. _[DOC-091 · §23 Banco de imagens para as apresentações, passo 3 · ITM-02282 · parte de UNI-00785]_
- `UNI-00790.01` `FLX-MICRO` `proposto` Abre-se uma demanda para cadastrar os padrões de produção de cada tipo de item (parede, testeira, sanca, moldura de LED), com desenhos e regras, que a IA usa para gerar as fichas. _[DOC-091 · §33 Marcenaria, biblioteca de padrões construtivos · ITM-02376 · parte de UNI-00790]_
- `UNI-01395.02` `FLX-MICRO` `proposto` `conf:media` O sistema compila os itens de locação do projeto e gera a solicitação de locação: móveis e demais itens para a Érika (RS) ou a Samanta (SP), e equipamentos de audiovisual para o Christian. _[DOC-091 · §25 Integração automática do projeto, destino de cada item codificado, item a locar · ITM-02308 · parte de UNI-01395]_
- `UNI-01554` `FLX-MICRO` `vigente` Quando o vendedor abre um projeto, a IA cruza segmento, feira, tipo e porte e deixa na aba do projeto projetos anteriores parecidos, expositores e peças que deram certo (código BIB e custo realizado) e referências de estilo e materiais. _[DOC-091 · §24 Biblioteca de referências, Uso automático pela IA · ITM-02289]_

## Notificações (2)

- `UNI-00486.01` `FLX-NOTIF` `proposto` Se não existir padrão para o tipo de item, a IA sinaliza na ficha e avisa o validador do setor e a Marília, para o item entrar na lista de gravação. _[DOC-091 · §35 Padrões construtivos por vídeo, regra para a geração das fichas · ITM-02394 · parte de UNI-00486]_
- `UNI-00785.05` `FLX-NOTIF` `a-conferir` `conf:media` Itens parados na fila de aprovação da biblioteca geram lembrete para a Érika. _[DOC-091 · §24 Biblioteca de referências e projetos para o setor de Projetos · ITM-02293 · parte de UNI-00785]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`

## Módulos e telas (6)

- `UNI-00785` `ESC-MODULO` `vigente` Bancos de imagens e biblioteca de referências de Projetos funcionam com fila de aprovação. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00035]_
  - Requisitos separados deste item: `UNI-00785.01`, `UNI-00785.02`, `UNI-00785.03`, `UNI-00785.04`, `UNI-00785.05`
- `UNI-00785.01` `ESC-MODULO` `proposto` `conf:media` O banco de imagens é uma área no ERP e no app para salvar e organizar fotos, usada pela IA para montar as apresentações personalizadas. _[DOC-091 · §23 Banco de imagens para as apresentações · ITM-02279 · parte de UNI-00785]_
- `UNI-00785.02` `ESC-MODULO` `proposto` `conf:media` As fotos do banco de imagens são enviadas pelo app ou pelo ERP, ligadas ao projeto pelo código e integradas ao acervo do Marketing (MKT-E8). _[DOC-091 · §23 Banco de imagens para as apresentações, passo 1 · ITM-02280 · parte de UNI-00785]_
- `UNI-00790` `ESC-MODULO` `vigente` `conf:media` Vídeos de padrões são gravados pela Marília; a IA os transforma em padrão, a ficha sempre consulta a biblioteca e a lista de gravação é viva. _[DOC-002 · §35 a 42 Vídeos · ITM-00043]_
  - Requisitos separados deste item: `UNI-00790.01`, `UNI-00790.02`, `UNI-00790.03`
- `UNI-01467` `ESC-MODULO` `proposto` Catálogo de collabs na biblioteca de itens macro, com marca parceira, foto, descrição, personalização possível e prazo de produção. _[DOC-091 · §14 Projeto Collabs, Como entra no sistema · ITM-02201]_
- `UNI-01489` `ESC-MODULO` `vigente` `conf:media` Os padrões de elétrica registram como a Imagine instala LED em letra caixa, sanca, testeira, nicho, prateleira e painel, com regras de emenda, alimentação e passagem de cabos, no mesmo modelo da biblioteca da marcenaria. _[DOC-091 · §34 Elétrica, Padrões construtivos · ITM-02380]_

## Perfis e responsáveis (2)

- `UNI-01395` `ESC-PERFIL` `vigente` Locações de móveis e demais itens são de Érika no RS e Samanta em SP; locações de audiovisual são de Christian nas duas unidades. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00017]_
  - Requisitos separados deste item: `UNI-01395.01`, `UNI-01395.02`
- `UNI-01395.01` `ESC-PERFIL` `proposto` `conf:media` Locações é setor próprio, no mesmo modelo de Compras; responsáveis Érika no RS e Samanta em SP. _[DOC-091 · §18 Locações · ITM-02226 · parte de UNI-01395]_

## Entidades e campos (8)

- `UNI-00657` `ESC-DADOS` `a-conferir` Cada item da biblioteca tem código, nome, tipo, medidas, imagem e arquivo 3D. _[DOC-008 · §03 Composição, Biblioteca de itens · ITM-00194]_
  - **Atenção (leitura do Claude):** item 9: A Especificação (ITM-01624) usa BIB-, que está em aberto.
  - Requisitos separados deste item: `UNI-00657.01`
- `UNI-00657.01` `ESC-DADOS` `a-conferir` Item da biblioteca: código BIB-CATEGORIA-NNNN, nome, tipo, medidas, imagem e arquivo 3D. _[DOC-091 · §4 Entidades e dados principais, Item da biblioteca · ITM-01624 · parte de UNI-00657]_
  - **Decisão (Ver decisão do item 9):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- `UNI-00659.01` `ESC-DADOS` `a-conferir` Item de locação do catálogo de locações: código LOC-CATEGORIA-NNNN. _[DOC-091 · §4 Entidades e dados principais, Item de locação · ITM-01625 · parte de UNI-00659]_
  - **Decisão (Ver decisão do item 9):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- `UNI-01350` `ESC-DADOS` `vigente` `conf:media` `rotina-anterior` No glossário, padrão Imagine são peças do estoque da empresa (balcão 1,00x1,00x0,50 com 2 portas com chave, púlpito, totens MDF branco 0,80x1,60); padrão locadora é mobiliário alugado sem modelo definido. _[DOC-033 · §10.2 Padrão Imagine · ITM-01133]_
- `UNI-01353` `ESC-DADOS` `proposto` `conf:media` Cadastro mestre proposto como nova lista base, com 296 nomes padrão; colunas: Código, Grupo, Nome padrão, Unidade de compra, Aparece em, Nº de grafias hoje e Grafias encontradas; itens novos marcados NOVO. _[DOC-074 · Aba Cadastro mestre, L1-L297 · ITM-01457]_
- `UNI-01474` `ESC-DADOS` `vigente` A biblioteca de referências filtra por segmento, feira, tipo de estande (fechado, aberto, outdoor, só estrutura aérea), porte por faixa de m², estilo, material predominante e expositores específicos. _[DOC-091 · §24 Biblioteca de referências, Categorias · ITM-02287]_
- `UNI-01475` `ESC-DADOS` `vigente` Cada item da biblioteca de referências guarda imagens de referência, renders, fotos do estande montado, arquivos 3D, pranchas, memorial, custos realizados e avaliação do cliente no pós-feira. _[DOC-091 · §24 Biblioteca de referências, Categorias · ITM-02288]_
- `UNI-01488` `ESC-DADOS` `vigente` `conf:media` O catálogo de materiais elétricos cobre fitas LED (tensão, potência por metro, temperatura de cor, proteção, corte mínimo), neon flex, módulos, fontes, cabos, conectores, interruptores, tomadas, quadros e disjuntores, com fornecedor e custo. _[DOC-091 · §34 Elétrica, Catálogo de materiais · ITM-02379]_

## Integrações (1)

- `UNI-01476` `ESC-INTEG` `vigente` A biblioteca de referências é integrada à biblioteca de itens (PRJ-E7) e à base histórica de custos, para acelerar o projeto e reduzir custos reaproveitando o que foi validado. _[DOC-091 · §24 Biblioteca de referências e projetos · ITM-02290]_

## Aprovações e alçadas (2)

- `UNI-00102` `REG-APROV` `vigente` Item novo na biblioteca: Diego valida em 1 dia, só depois da conclusão do projeto. _[DOC-008 · §03 Validações, §08 · ITM-00189]_
- `UNI-00785.04` `REG-APROV` `a-conferir` `conf:media` Só depois do ok da Érika, responsável pela curadoria, o material do projeto concluído entra na biblioteca de referências. _[DOC-091 · §24 Biblioteca de referências e projetos para o setor de Projetos · ITM-02292 · parte de UNI-00785]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`

## Códigos e rastreabilidade (8)

- `UNI-00156` `REG-CODIGO` `proposto` Regra de nome padrão 1: maiúsculas, sem acento e sem Ç, para a IA não tratar ABRAÇADEIRA e ABRACADEIRA como itens diferentes. _[DOC-074 · Aba Leia-me, L15 · ITM-01461]_
- `UNI-00157` `REG-CODIGO` `proposto` Regra de nome padrão 2: ordem fixa MATERIAL + TIPO/ACABAMENTO + COR + MEDIDA (ex.: MDF MELAMINA BRANCO 15MM; METALON QUADRADO 40X40X1,20MM). _[DOC-074 · Aba Leia-me, L16 · ITM-01462]_
- `UNI-00158` `REG-CODIGO` `proposto` Regra de nome padrão 3: medida colada na unidade, dimensões com X e decimal com vírgula (15MM, 6M, 2,00X1,00, 3,5X25MM). _[DOC-074 · Aba Leia-me, L17 · ITM-01463]_
- `UNI-00159` `REG-CODIGO` `proposto` Regra de nome padrão 4: embalagem e formato ficam na coluna Unidade de compra, não no nome (chapa de 2,75 X 1,83, rolo com 50 mt, C/100un). _[DOC-074 · Aba Leia-me, L18 · ITM-01464]_
- `UNI-00160` `REG-CODIGO` `proposto` Regra de nome padrão 5: sem parênteses e sem campo em branco; cada cor ou variação é um item próprio com código, e [COR] marca o que falta definir. _[DOC-074 · Aba Leia-me, L19 · ITM-01465]_
- `UNI-00161` `REG-CODIGO` `proposto` Regra de nome padrão 6: nada de nome genérico na planilha de custos; pintura, metalon e fita dupla face devem trazer sempre o item exato. _[DOC-074 · Aba Leia-me, L20 · ITM-01466]_
- `UNI-00162` `REG-CODIGO` `proposto` Regra de nome padrão 7: medida da peça, uso e fornecedor vão na descrição (ex.: adesivo 1,50x1,50 vira ADESIVO VINIL IMPRESSO, 2,25 m²). _[DOC-074 · Aba Leia-me, L21 · ITM-01467]_
- `UNI-00163` `REG-CODIGO` `proposto` Regra de nome padrão 8: código único por item; item novo só entra no custo depois de ganhar código no cadastro mestre. _[DOC-074 · Aba Leia-me, L22 · ITM-01468]_

## Regras operacionais (3)

- `UNI-00211` `REG-OPER` `vigente` `conf:media` Os vídeos ficam guardados como material de treinamento para novos colaboradores. _[DOC-021 · §7 Depois do envio · ITM-00592]_
- `UNI-00790.02` `REG-OPER` `proposto` `conf:media` O processamento dos vídeos é feito a partir de vídeos gravados, não em tempo real, e as medidas exatas dependem da narração e da trena aparecendo no vídeo. _[DOC-091 · §35 Padrões construtivos por vídeo, observação · ITM-02392 · parte de UNI-00790]_
- `UNI-00790.03` `REG-OPER` `proposto` `conf:media` Os itens de decoração entram na biblioteca de itens e no banco de referências, e os padrões de produção podem ser ensinados por vídeo (lista de gravação da Marília). _[DOC-091 · §37 Setor de Decoração, passo 6 · ITM-02414 · parte de UNI-00790]_

## Pendências (2)

- `UNI-00902` `PEND` `pendente` `conf:baixa` As primeiras gravações de padrões (Marília) ainda não foram feitas. _[DOC-002 · §45 Pendências · ITM-00066]_
- `UNI-01104` `PEND` `inferido` Item não aprovado pelo Diego fica só naquele projeto e não entra na biblioteca (inferido). _[DOC-008 · §08, PRJ-E16 · ITM-00190]_

