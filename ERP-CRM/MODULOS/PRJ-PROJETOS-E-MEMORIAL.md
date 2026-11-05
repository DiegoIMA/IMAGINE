---
id: ERP-MOD-PRJ
titulo: Módulo Projetos e memorial
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# PRJ · Projetos e memorial

140 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-2** (Aprovação da prévia): Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- **ponto-1** (Início do detalhamento): O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`

## Fluxo macro (5)

- `UNI-00276` `FLX-MACRO` `proposto` Projetos tem cinco fases até a passagem para Custos: briefing, criação, modelagem, render e documentos, com validação do Comercial ao fim das fases 2, 3 e 4; depois do contrato, detalhamento e amostras. _[DOC-008 · §01 Fluxo macro · ITM-00166]_
  - Requisitos separados deste item: `UNI-00276.01`
- `UNI-00276.01` `FLX-MACRO` `proposto` Projetos passa a Custos quando o memorial é gerado e a planilha de custos é aberta (PRJ-E14), com prazo de 3 dias. _[DOC-091 · §2 Fluxo entre setores, item 3 Projetos → Custos · ITM-01590 · parte de UNI-00276]_
- `UNI-00320` `FLX-MACRO` `proposto` Projeto e verificações com o cliente: conceito, modelagem 3D, prévia, render e memorial, com duas reuniões de verificação gravadas e ata em checklist. _[DOC-030 · §02 Fase 3 Projeto · ITM-00689]_
- `UNI-00786` `FLX-MACRO` `confirmado` Antes do contrato são feitos 3D e memorial; depois, detalhamento e fichas. O código único do projeto acompanha o item até a montagem. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00036]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-01649` `FLX-MACRO` `confirmado` Depois do contrato assinado o sistema abre a demanda de detalhamento técnico, gerado pela IA e conferido pelo arquiteto, e dele gera as fichas técnicas de produção. _[DOC-091 · §25 Dois momentos distintos · ITM-02313]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`

## Etapas do fluxo (29)

- `UNI-00362` `FLX-MICRO` `proposto` Planejamento (Setor 07) define o arquiteto de cada projeto e o Portal o notifica. _[DOC-008 · PRJ-E1 · ITM-00169]_
- `UNI-00363` `FLX-MICRO` `proposto` Arquiteto busca no Portal o briefing, os anexos e o pré-escopo do cliente. _[DOC-008 · PRJ-E2 · ITM-00170]_
- `UNI-00364` `FLX-MICRO` `proposto` Arquiteto faz pesquisa, referências e mood board de materiais e inspirações, na aba Referências do projeto. _[DOC-008 · PRJ-E3 · ITM-00171]_
- `UNI-00365` `FLX-MICRO` `proposto` IA gera o storytelling do conceito: justificativa, inspiração e argumento de venda. _[DOC-008 · PRJ-E4 · ITM-00172]_
- `UNI-00366` `FLX-MICRO` `proposto` Arquiteto valida referências e storytelling e envia ao Comercial com notificação ao vendedor do cliente. _[DOC-008 · PRJ-E5 · ITM-00173]_
  - Requisitos separados deste item: `UNI-00366.01`
- `UNI-00366.01` `FLX-MICRO` `proposto` Projetos: envio das referências ao Comercial para validação. _[DOC-091 · §5 Projetos, PRJ-E5 (G1) · ITM-01684 · parte de UNI-00366]_
- `UNI-00367` `FLX-MICRO` `proposto` Modelagem 3D parte da biblioteca de itens, buscando primeiro o que já existe. _[DOC-008 · PRJ-E6 · ITM-00175]_
  - Requisitos separados deste item: `UNI-00367.01`, `UNI-00367.02`
- `UNI-00367.01` `FLX-MICRO` `proposto` Projetos: modelagem 3D partindo da biblioteca e do catálogo de locações. _[DOC-091 · §5 Projetos, PRJ-E6 · ITM-01687 · parte de UNI-00367]_
- `UNI-00367.02` `FLX-MICRO` `proposto` No projeto, o arquiteto monta o 3D com itens da biblioteca, cada um com código. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, item 1 · ITM-02295 · parte de UNI-00367]_
- `UNI-00369` `FLX-MICRO` `proposto` Arquiteto conclui os testes de modelagem e marca a etapa como concluída. _[DOC-008 · PRJ-E8 · ITM-00177]_
  - Requisitos separados deste item: `UNI-00369.01`
- `UNI-00369.01` `FLX-MICRO` `proposto` Projetos: testes concluídos antes da validação da prévia. _[DOC-091 · §5 Projetos, PRJ-E8 (G2) · ITM-01689 · parte de UNI-00369]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-00370` `FLX-MICRO` `proposto` Arquiteto faz os renders e monta a apresentação. _[DOC-008 · PRJ-E9 · ITM-00180]_
- `UNI-00371` `FLX-MICRO` `proposto` Projeto pronto para validação: comando no Portal avisa o Comercial. _[DOC-008 · PRJ-E10 · ITM-00181]_
  - Requisitos separados deste item: `UNI-00371.01`
- `UNI-00371.01` `FLX-MICRO` `proposto` Projetos: o projeto é enviado para validação. _[DOC-091 · §5 Projetos, PRJ-E10 (G3) · ITM-01693 · parte de UNI-00371]_
- `UNI-00372` `FLX-MICRO` `proposto` Portal gera o memorial descritivo (biblioteca, catálogo de locações e 3D); o arquiteto confere e valida. _[DOC-008 · PRJ-E11 · ITM-00183]_
  - Requisitos separados deste item: `UNI-00372.01`
- `UNI-00372.01` `FLX-MICRO` `proposto` O memorial é gerado pelo sistema a partir do projeto, com os mesmos códigos dos itens. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, item 1; §5 Projetos, PRJ-E11 · ITM-02296 · parte de UNI-00372]_
- `UNI-00376` `FLX-MICRO` `confirmado` Detalhamento técnico e fichas (plantas, vistas, cotas, fichas por categoria, tabela de precificação) acontece depois do contrato; o código PRJ-E13 foi mantido, mas a etapa vem depois da PRJ-E14. _[DOC-008 · PRJ-E13, §08 · ITM-00191]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00377` `FLX-MICRO` `vigente` Prancha de amostras, na etapa de amostras da produção, mostra cada material com marca e modelo aplicado no projeto. _[DOC-008 · PRJ-E15, §08 · ITM-00192]_
- `UNI-00499` `FLX-MICRO` `proposto` E3: Projetos executa o ajuste pedido e devolve prévia ou render ajustado. _[DOC-030 · §03 E3 · ITM-00703]_
- `UNI-00515` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1 começa quando Diego envia a prancha (PDF AP02/AP06 ou imagens 3D) e dita o escopo em áudio ou texto. _[DOC-033 · §2.2 P1 gatilho · ITM-00829]_
- `UNI-00516` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1 termina com o .xlsx gerado, conferido por render em PDF, salvo no Drive e informado a Diego, com dúvidas em A CONFIRMAR. _[DOC-033 · §2.2 P1 Fim · ITM-00830]_
- `UNI-00517` `FLX-MICRO` `vigente` `conf:baixa` `rotina-anterior` Memorial P1, passo 1: Diego envia o PDF da prancha e dita o escopo. _[DOC-033 · §2.2 P1 passo 1 · ITM-00832]_
- `UNI-00518` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1, passo 2: o Claude lê o PDF extraindo zoneamento, medidas, renders e quantidades visíveis. _[DOC-033 · §2.2 P1 passo 2 · ITM-00833]_
- `UNI-00522` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Memorial P1, passo 8: informa a Diego o que foi gerado, as premissas adotadas e a lista do que está A CONFIRMAR. _[DOC-033 · §2.2 P1 passo 8 · ITM-00840]_
- `UNI-00524` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Detalhamento P2 começa quando Diego pede "detalhar... no mesmo padrão" depois do memorial, ou junto dele. _[DOC-033 · §2.3 P2 gatilho · ITM-00849]_
- `UNI-00525` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Detalhamento P2 termina com o PDF A3 multi-folha aprovado por Diego ("perfeito") e salvo no Drive. _[DOC-033 · §2.3 P2 Fim · ITM-00850]_
- `UNI-00528` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 5: entrega o PDF a Diego e lista as premissas; exemplos: mureta apoiada no piso, rampa de 6 m, 15 refletores. _[DOC-033 · §2.3 P2 passo 5 · ITM-00856]_
- `UNI-00531` `FLX-MICRO` `vigente` `conf:media` `rotina-anterior` Levantamento P3 começa quando Diego pede planilha de levantamento de materiais por categoria, normalmente após memorial e D01. _[DOC-033 · §2.4 P3 gatilho · ITM-00863]_
- `UNI-00618` `FLX-MICRO` `proposto` `conf:media` Os rafes são feitos em quadro compartilhado (Miro ou FigJam) durante a reunião e o arquivo sobe para o cartão da demanda junto com a gravação. _[DOC-030 · §04 Rafes · ITM-00730]_

## Pontos de decisão (6)

- `UNI-00554` `FLX-DECISAO` `proposto` G1: o Comercial valida as referências em até 1 dia; se não validar, volta à PRJ-E3 para ajuste. _[DOC-008 · G1 · ITM-00174]_
- `UNI-00555` `FLX-DECISAO` `vigente` G3: Comercial aprova o projeto em até 1 dia; se não, aponta alterações no Portal, volta à PRJ-E9 e o ciclo se repete. _[DOC-008 · G3, §08 · ITM-00182]_
- `UNI-00578` `FLX-DECISAO` `proposto` Diretoria valida o conceito criativo; se não validar, o conceito é refeito antes das referências e da modelagem 3D. _[DOC-030 · §02 Fase 3, decisão C2 · ITM-00695]_
- `UNI-00579.01` `FLX-DECISAO` `proposto` Projetos G2: a prévia é aprovada ou o fluxo volta para PRJ-E6. _[DOC-091 · §5 Projetos, PRJ-E8 (G2) · ITM-01690 · parte de UNI-00579]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-00582` `FLX-DECISAO` `proposto` E6: o Comercial decide se ficou item em aberto; se sim, repete E2; se não, a prévia segue para o render e o render segue para Custos. _[DOC-030 · §03 E6 · ITM-00706]_
- `UNI-01105` `FLX-DECISAO` `inferido` `conf:media` Referência reprovada volta para o arquiteto ajustar na PRJ-E3 (inferido). _[DOC-008 · §08, G1 · ITM-00201]_

## Notificações (1)

- `UNI-00604` `FLX-NOTIF` `vigente` Projetos, PLA-E8: ao subir o detalhamento no Portal, o Portal notifica Planejamento e Produção. _[DOC-012 · PLA-E8 · ITM-00303]_

## Módulos e telas (8)

- `UNI-00004` `ESC-MODULO` `vigente` Projetos: 3D e memorial pela IA antes do contrato, validações G1, G2 e G3, biblioteca de itens com código e banco de referências por estilo e segmento. _[DOC-003 · Mapa, cartão 03 Projetos · ITM-00072]_
  - Requisitos separados deste item: `UNI-00004.01`
- `UNI-00004.01` `ESC-MODULO` `proposto` A biblioteca de referências guarda imagens de referência e arquivos de projetos já feitos, para pesquisa dos arquitetos e reaproveitamento de soluções que deram certo. _[DOC-091 · §24 Biblioteca de referências e projetos para o setor de Projetos · ITM-02286 · parte de UNI-00004]_
- `UNI-00016` `ESC-MODULO` `proposto` Componentes no Portal: briefing do cliente, biblioteca de itens, catálogo de locações terceirizadas a importar, banco de projetos e abas do projeto. _[DOC-008 · §03 Composição do setor · ITM-00195]_
  - Requisitos separados deste item: `UNI-00016.01`
- `UNI-00016.01` `ESC-MODULO` `proposto` Módulo Projetos (setor 03): abas do projeto, biblioteca de itens, catálogo de locações, validações G1 a G3 e geração de memorial e apresentação. _[DOC-091 · §3 Módulos do ERP, Projetos · ITM-01604 · parte de UNI-00016]_
- `UNI-00722` `ESC-MODULO` `proposto` `conf:media` Pastas por projeto propostas: 01 Briefing, 02 Referências, 03 Projeto 3D, 04 Renders, 05 Memorial, 06 Detalhamento e fichas, 07 Prancha de amostras, mais pasta de Custos. _[DOC-008 · §06 Pastas de cada projeto · ITM-00199]_
- `UNI-01482` `ESC-MODULO` `vigente` O topo da página do projeto mostra a linha do tempo das 12 etapas (da proposta ao pós-feira) com etapa atual destacada, percentual geral, data de carregamento e dias restantes. _[DOC-091 · §30 Página do projeto, Topo · ITM-02354]_
- `UNI-01483` `ESC-MODULO` `vigente` A página do projeto lista as pendências com responsável, prazo e atrasos em vermelho, e todos os itens por código separados em a produzir, em produção, concluídos e embalados, com ficha e foto. _[DOC-091 · §30 Página do projeto, Pendências e Itens · ITM-02355]_
- `UNI-01484` `ESC-MODULO` `vigente` A página do projeto tem abas de custos (previsto e realizado), documentos, aprovações do cliente, locações, credenciamento e histórico de quem fez o quê. _[DOC-091 · §30 Página do projeto, Abas · ITM-02356]_

## Perfis e responsáveis (7)

- `UNI-00021` `ESC-PERFIL` `proposto` Arquitetos Paulão, Ertal, João, Amanda, Dani, Fran (também vendedora), Jessyka e Rodrigo, mais freelancer nomeado por demanda, têm usuário no Portal. _[DOC-008 · §03 Composição, linha Usuários · ITM-00168]_
  - Requisitos separados deste item: `UNI-00021.01`
- `UNI-00021.01` `ESC-PERFIL` `proposto` Perfil Arquiteto (equipe de arquitetos e freelancers): acesso aos projetos indicados a ele. _[DOC-091 · §8 Perfis de acesso, Arquiteto · ITM-02116 · parte de UNI-00021]_
- `UNI-00030` `ESC-PERFIL` `proposto` Projetos (projetista e diretor de arte) faz conceito, modelagem, prévia, render, apresentação e memorial, ajusta por pedido no sistema e depois detalha tecnicamente. _[DOC-030 · §05 Setores, card 03 · ITM-00677]_
- `UNI-00038` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` A projetista João [PES-00010] entrega as pranchas AP (apresentação, zoneamento e 3D) que originam o escopo ditado por Diego. _[DOC-033 · §1.1 Área · ITM-00814]_
- `UNI-00761` `ESC-PERFIL` `vigente` Fran acumula Comercial e Projetos; respondido também que o Comercial precisa responder e que o atraso prorroga o prazo com o cliente. _[DOC-008 · §08 Respondido em 28/10 · ITM-00200]_
- `UNI-01391` `ESC-PERFIL` `vigente` `conf:media` Arquitetos citados: Paulão, Ertal, João, Amanda, Dani, Fran (também vendedora), Jessyka e Rodrigo. _[DOC-001 · §4 Pessoas e papéis · ITM-00009]_
  - Requisitos separados deste item: `UNI-01391.01`
- `UNI-01408` `ESC-PERFIL` `vigente` `rotina-anterior` João [PES-00010]: projetista (EQP-009), autor das pranchas AP. _[DOC-033 · §5.6.2 EQP-009 · ITM-01035]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

## Documentos gerados (13)

- `UNI-00040` `ESC-DOC` `proposto` Documentos do Portal: mood board, storytelling, projeto 3D, apresentação comercial, memorial, pranchas de detalhamento, fichas técnicas, itens novos, planilha de custos e prancha de amostras. _[DOC-008 · §05 Documentos gerados · ITM-00196]_
- `UNI-00048` `ESC-DOC` `substituido-parcial` Projeto e verificações: PRJ-002 apresentação de prévia e render, MEM-001 memorial como lista mestre e ALT-NNN pedido de alteração. _[DOC-032 · §04 Fase 3 · ITM-00776]_
  - **Continua valendo:** Existem a apresentação de prévia e render (PRJ-002), o memorial como lista mestre e o pedido de alteração.
  - **Mudou:** O pedido de alteração não usa a sigla ALT (item-12).
- `UNI-00054` `ESC-DOC` `vigente` `rotina-anterior` Por projeto, o assistente entrega o memorial descritivo em .xlsx no modelo Imagine, com logo. _[DOC-033 · §1.3 Por projeto 1 · ITM-00819]_
- `UNI-00055` `ESC-DOC` `vigente` `rotina-anterior` Por projeto, o assistente entrega o detalhamento técnico D01 em PDF A3 com várias folhas, carimbo e logo. _[DOC-033 · §1.3 Por projeto 2 · ITM-00820]_
- `UNI-00056` `ESC-DOC` `vigente` `rotina-anterior` Por projeto, o assistente entrega o levantamento de materiais por categoria em .xlsx, com códigos do memorial, fórmulas e matriz de rastreabilidade. _[DOC-033 · §1.3 Por projeto 3 · ITM-00821]_
- `UNI-00249` `ESC-DOC` `vigente` `rotina-anterior` A folha 01 do detalhamento lista todos os códigos do memorial, com descrição curta e medida em cm. _[DOC-033 · §4.3 Folha 01 · ITM-00952]_
- `UNI-00519` `ESC-DOC` `vigente` `rotina-anterior` Memorial P1, passo 5: monta a planilha a partir do modelo com cabeçalho e logo, bloco por ambiente, grupos, itens numerados grupo.item e fechamento com OBSERVAÇÕES e aba HISTÓRICO. _[DOC-033 · §2.2 P1 passo 5 · ITM-00836]_
- `UNI-00619` `ESC-DOC` `vigente` `rotina-anterior` O detalhamento padrão tem de 6 a 7 folhas: planta baixa com isométrica e legenda de todos os códigos, elétrica e iluminação, vistas externas e detalhes por elemento. _[DOC-033 · §2.3 P2 passo 2 · ITM-00853]_
- `UNI-00702` `ESC-DOC` `vigente` `rotina-anterior` O levantamento tem as abas RESUMO (categoria, escopo, linhas, complementares, total e %; categoria vazia é NÃO SE APLICA), MATRIZ (item x categorias, com "todos presentes: SIM") e HISTÓRICO. _[DOC-033 · §2.4 P3 passo 5 · ITM-00871]_
- `UNI-00728` `ESC-DOC` `vigente` `rotina-anterior` O modelo do memorial (V01_MEMORIAL_DESCRITIVO.xlsx, aba única) usa Century Gothic 9 pt, título de bloco 11 pt negrito, bordas finas, quebra de texto e orientação paisagem. _[DOC-033 · §4.2 Origem e formatação · ITM-00945]_
- `UNI-00729` `ESC-DOC` `vigente` `rotina-anterior` Cada ambiente do memorial tem título (verde, 11 pt negrito), linha ÁREA (cinza), cabeçalho de colunas e itens; o GRUPO é célula mesclada na vertical com texto rotacionado. _[DOC-033 · §4.2 Por ambiente · ITM-00947]_
- `UNI-00734` `ESC-DOC` `substituido-parcial` IMG-MOD-004 V02 é o modelo de memorial descritivo com código de item, pronto: o memorial é a lista mestre de itens do job (MEM-001) e o número do ÍTEM é o código IT, nunca renumerado e igual ao das etiquetas do detalhamento; custos, proposta, fichas, compras, qualidade, carga e montagem leem esses códigos. _[DOC-072 · Aba LEIA-ME, L1-L5 · ITM-01433]_
  - **Continua valendo:** O memorial é a lista mestre do job, o número do item nunca é renumerado, e custos, proposta, fichas, compras, qualidade, carga e montagem leem os mesmos códigos.
  - **Mudou:** O código do item segue o item-9; versão fixa ou não está em aberto.
- `UNI-00735` `ESC-DOC` `substituido-parcial` Abas do modelo: LEIA-ME, aba do ambiente (duplicada por ambiente), RESUMO por setor e origem, HISTÓRICO DE VERSÕES (ID, título, local, versão, data, autor, alteração, ALT) e LISTAS de setor, origem e status. _[DOC-072 · Abas 2 a 5 · ITM-01434]_
  - **Continua valendo:** As abas do modelo de memorial continuam.
  - **Mudou:** O histórico fica sem a sigla ALT (item-12).

## Entidades e campos (8)

- `UNI-00648` `ESC-DADOS` `vigente` Materiais principais são texto livre separado por ponto e vírgula, base do levantamento de custos; cód. MAT vem da biblioteca de materiais quando existir; seq. montagem alimenta romaneio e checklist de montagem. _[DOC-072 · Aba LEIA-ME, L27-L29 · ITM-01443]_
- `UNI-00658` `ESC-DADOS` `proposto` Categorias do mood board e da prancha de amostras: piso, parede, móveis, iluminação, expositores, comunicação visual, texturas, vegetação, estofados, cadeiras, mesas, equipamentos, tapetes, neon e fita LED. _[DOC-008 · §05 Categorias do mood board · ITM-00197]_
- `UNI-00699` `ESC-DADOS` `vigente` `rotina-anterior` Entradas do memorial: prancha AP em PDF, áudio ou texto de Diego, modelo V01_MEMORIAL_DESCRITIVO.xlsx, logo IMG-MOD-001 e dados de cliente e evento do áudio ou do card. _[DOC-033 · §2.2 P1 Entradas · ITM-00831]_
- `UNI-00700` `ESC-DADOS` `vigente` `rotina-anterior` O carimbo de cada folha traz logo, título DETALHAMENTO TÉCNICO D01, projeto, feira, medidas, título (até cerca de 30 caracteres), DOC, versão, data, MEDIDAS EM cm, FOLHA nn/NN, ESCALA S/ ESC. e quadro ESPECIFICAÇÃO. _[DOC-033 · §2.3 P2 passo 3 · ITM-00854]_
- `UNI-00701` `ESC-DADOS` `vigente` `rotina-anterior` Cada linha do levantamento copia sem alteração código, nome, descrição, quantidade e dimensões do memorial e acrescenta serviço, unidade, qtd. p/ orçamento, memória de cálculo, fornecedor, custo unit., custo total (fórmula) e obs. _[DOC-033 · §2.4 P3 passo 3 · ITM-00868]_
- `UNI-00713` `ESC-DADOS` `substituido-parcial` Colunas do memorial (IMG-MOD-004 V02): GRUPO, ÍTEM, NOME, DESCRIÇÃO, QUANT e DIMENSÕES (B a G, saem no PDF); H a Q internas: rastreio, setor produtivo, origem, materiais, cód. MAT, seq. montagem, status, ALT, versão e observação; a linha 1 cinza mesclada traz evento, cliente, contato, local, período, referência e DOC/VERSÃO/DATA, com logo em B1; a proposta MEM-001 cita ainda acabamento e cor. _[DOC-072 · Aba ESTANDE EXEMPLO, L4; LEIA-ME L23-L33 · ITM-01435]_
  - **Continua valendo:** As colunas do memorial continuam.
  - **Mudou:** A coluna de alteração fica sem a sigla ALT (item-12); o código do item segue o item-9.
- `UNI-01428` `ESC-DADOS` `proposto` Entidade Projeto: código, cliente, feira, arquiteto, vendedor, abas, status por etapa e cronograma. _[DOC-091 · §4 Entidades, Projeto (PRJ, PLA) · ITM-01622]_
- `UNI-01677` `ESC-DADOS` `vigente` A marcenaria tem duas categorias com modelos de ficha diferentes: marcenaria de móveis (balcões, mesas, expositores, mobiliário) e marcenaria estrutural (paredes, sancas, travessas, colunas, pergolados, fachadas, testeiras, forros, cenografia, molduras de painel de LED). _[DOC-091 · §33 Marcenaria, duas categorias · ITM-02372]_

## Prazos (5)

- `UNI-00080` `REG-PRAZO` `vigente` Projetos, detalhamento técnico e validação de documentos: prazo de 3 dias depois do pedido, no bloco 1. _[DOC-012 · PLA-E7 e E8; §03 Marcos · ITM-00321]_
- `UNI-01102.01` `REG-PRAZO` `proposto` A validação G1 das referências pelo Comercial tem prazo de até 1 dia. _[DOC-091 · §5 Projetos, PRJ-E5 (G1); §7 Prazos · ITM-01686 · parte de UNI-01102]_
- `UNI-01102.02` `REG-PRAZO` `a-conferir` A validação G2 da prévia tem prazo de até 1 dia. _[DOC-091 · §5 Projetos, PRJ-E8 (G2); §7 Prazos · ITM-01691 · parte de UNI-01102]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-01102.03` `REG-PRAZO` `proposto` A validação G3 do projeto tem prazo de até 1 dia. _[DOC-091 · §5 Projetos, PRJ-E10 (G3); §7 Prazos · ITM-01695 · parte de UNI-01102]_
- `UNI-01102.04` `REG-PRAZO` `a-conferir` G1, G2 e G3 têm prazo de 1 dia cada, responsável Comercial. _[DOC-091 · §7 Prazos, G1, G2 e G3 · ITM-02093 · parte de UNI-01102]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`

## Aprovações e alçadas (4)

- `UNI-00101` `REG-APROV` `vigente` Cada validação do Comercial é notificação no Portal e bloqueia a etapa seguinte; se o Comercial atrasar, o prazo assumido com o cliente é prorrogado pelo mesmo tempo. _[DOC-008 · §02 Fluxograma, introdução · ITM-00167]_
  - Requisitos separados deste item: `UNI-00101.01`
- `UNI-00101.01` `REG-APROV` `proposto` Validações G1, G2 e G3: a etapa seguinte de Projetos só é liberada depois da aprovação. _[DOC-091 · §6 Regras de negócio, Validações G1, G2 e G3 · ITM-02081 · parte de UNI-00101]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-00110` `REG-APROV` `substituido-parcial` `conf:media` `rotina-anterior` Responsáveis por lista: validação com cliente por Anderson e Fran, formação de preço por Maite, revisão de custos por Diego e movimentação para produção por Érika após aprovação. _[DOC-033 · §3.3 Quadro Trello · ITM-00917]_
  - **Continua valendo:** A validação com o cliente e a passagem à produção depois da aprovação continuam, como rotina anterior ao ERP.
  - **Mudou:** Custos aprova a planilha, e o preço de venda é aprovado por Maitê e Diego (item-1).
- `UNI-00530` `REG-APROV` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 7: Diego aprova com "perfeito" e o PDF vai para o Drive. _[DOC-033 · §2.3 P2 passo 7 · ITM-00858]_

## Códigos e rastreabilidade (13)

- `UNI-00138` `REG-CODIGO` `substituido-parcial` `rotina-anterior` O arquivo do detalhamento segue o nome [ID-PROJETO]_PRJ-001_DETALHAMENTO-D01_VNN.pdf. _[DOC-033 · §2.3 P2 Saídas · ITM-00851]_
  - **Continua valendo:** O nome do arquivo traz projeto, tipo, descrição e versão.
  - **Mudou:** Detalhamento usa DT no lugar de PRJ-001 (item-12).
- `UNI-00139` `REG-CODIGO` `vigente` `rotina-anterior` O arquivo do levantamento segue o nome [ID-PROJETO]_ORC-001_LEVANTAMENTO-POR-CATEGORIA_VNN.xlsx. _[DOC-033 · §2.4 P3 Saídas · ITM-00865]_
- `UNI-00140` `REG-CODIGO` `vigente` `rotina-anterior` Quando o memorial muda, o levantamento ganha nova versão mantendo os mesmos códigos. _[DOC-033 · §2.4 P3 Decisões · ITM-00877]_
- `UNI-00141` `REG-CODIGO` `vigente` `rotina-anterior` Quando a alteração afeta mais de um entregável, versionam-se todos em cascata; exemplo de um job: D01 V02, MEM V02, D01 V03, MEM V03, ORC V01. _[DOC-033 · §2.6 P5 item 3 · ITM-00890]_
- `UNI-00153` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` O padrão de memorial (PAD-001) exige modelo Imagine em Century Gothic, um bloco por ambiente com título e ÁREA, itens numerados por grupo, medidas não informadas como A CONFIRMAR e nome [CLIENTE]-[FEIRA][AA]_MEM-NNN_MEMORIAL-DESCRITIVO_VNN.xlsx. _[DOC-033 · §5.6.1 IMG-PAD-001 V02 §3 · ITM-01020]_
- `UNI-00154` `REG-CODIGO` `a-conferir` Grupos do IT são numerados em sequência no memorial inteiro, sem repetir entre ambientes; nunca renumerar e item novo recebe o próximo número livre do grupo. _[DOC-072 · Aba LEIA-ME, L15-L16 · ITM-01436]_
  - **Atenção (leitura do Claude):** item 9: Numera os grupos do IT no memorial inteiro. Falta saber como isso se encaixa no número da sessão.
- `UNI-00155` `REG-CODIGO` `vigente` Nome do arquivo do memorial: [CLIENTE]-[FEIRA][AA]_MEM-001_MEMORIAL-DESCRITIVO_V01.xlsx, usando o nome do projeto [PROJETO] quando o cliente é desconhecido; a coluna ÍTEM é texto para que 1.10 não vire 1.1. _[DOC-072 · Aba LEIA-ME, L8; L19 · ITM-01440]_
- `UNI-00224` `REG-CODIGO` `substituido-parcial` Quando o item é alterado no memorial via ALT, a mudança aparece em todos os documentos que usam aquele IT. _[DOC-032 · §01 · ITM-00767]_
  - **Continua valendo:** A alteração de um item aparece em todos os documentos que usam aquele item.
  - **Mudou:** Pedido de alteração sem sigla (item-12); o código do item segue o item-9.
- `UNI-00250` `REG-CODIGO` `vigente` `rotina-anterior` O memorial é a fonte única de códigos: detalhamento e levantamento usam os mesmos códigos e quantidades, com itens extras em lilás NN-Ck e aba MATRIZ comprovando a cobertura de ponta a ponta, por exigência de Diego, descartando levantamento livre. _[DOC-033 · §4.5 Por que esse método · ITM-00963]_
- `UNI-00267` `REG-CODIGO` `substituido-parcial` Nunca apagar item: o retirado fica com STATUS CANCELADO e ALT de origem; o alterado vira STATUS ALTERADO com ALT, nova versão do arquivo e linha no histórico. _[DOC-072 · Aba LEIA-ME, L17-L18 · ITM-01437]_
  - **Continua valendo:** Nunca apagar item: retirado fica cancelado e alterado fica como alterado, com nova versão do arquivo e linha no histórico.
  - **Mudou:** Pedido de alteração sem sigla (item-12).
- `UNI-00523` `REG-CODIGO` `vigente` `rotina-anterior` Memorial P1, passo 9: cada correção de Diego por áudio vira nova versão (V02, V03...) com linha nova no HISTÓRICO; a versão anterior nunca é apagada. _[DOC-033 · §2.2 P1 passo 9 · ITM-00841]_
- `UNI-00529` `REG-CODIGO` `vigente` `rotina-anterior` Detalhamento P2, passo 6: Diego revisa por áudio ou foto/print anotado e cada rodada gera novo V; se a correção muda escopo ou quantidade, o memorial também ganha nova versão. _[DOC-033 · §2.3 P2 passo 6 · ITM-00857]_
- `UNI-01429` `REG-CODIGO` `substituido-parcial` Item do projeto: código formado por projeto + item + subitem (ex.: P0123-015-02), nome, material e quantidade. _[DOC-091 · §4 Entidades, Item do projeto (PRJ-E11) · ITM-01623]_
  - **Continua valendo:** O item do projeto tem nome, material e quantidade.
  - **Mudou:** O formato do código segue o item-9.

## Qualidade (11)

- `UNI-00172` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Norma aplicável é aplicada e citada; exemplo: rampa NBR 9050 com i até 8,33%, comprimento de 6,00 para desnível de 0,50 e corrimão duplo 92/70. _[DOC-033 · §2.3 P2 Decisões · ITM-00862]_
- `UNI-00173` `REG-QUAL` `vigente` `rotina-anterior` O memorial passa por conferência visual do render PDF (texto cortado, altura do grupo, numeração) pelo Claude e validação de conteúdo por Diego; "perfeito" é aprovado e correção gera nova versão. _[DOC-033 · §3.3 Memorial · ITM-00913]_
- `UNI-00174` `REG-QUAL` `vigente` `rotina-anterior` O detalhamento passa por autoconferência de prévia PNG, legenda com todos os códigos do memorial na folha 01 e aprovação de Diego por "perfeito" ou foto anotada. _[DOC-033 · §3.3 Detalhamento · ITM-00914]_
- `UNI-00175` `REG-QUAL` `vigente` `rotina-anterior` O levantamento exige recalc sem erros (total_errors: 0), MATRIZ com 100% dos itens do memorial e assert do número de itens no script, que falha se o memorial mudar. _[DOC-033 · §3.3 Levantamento · ITM-00915]_
- `UNI-00239` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Conflito geométrico é sinalizado na prancha com "ATENÇÃO" e perguntado a Diego; exemplos: placas acima do LED ultrapassam a parede; lona menor que a goleira. _[DOC-033 · §2.3 P2 Decisões · ITM-00861]_
- `UNI-00251` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Dado faltante vira A CONFIRMAR explícito em vez de ser inventado, para Diego validar rápido. _[DOC-033 · §4.5 Por que esse método · ITM-00964]_
- `UNI-00258` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Diego quer memorial sempre no modelo Imagine e igual aos anteriores, detalhamento no mesmo padrão com logo e folhas de planta, elevações, laterais, móveis e elétrica, e folhas específicas quando pedir. _[DOC-033 · §11.2 itens 11-13 · ITM-01141]_
- `UNI-00259` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Diego quer elementos importantes cotados, levantamento por categoria com códigos e quantidades do memorial, medidas no padrão 0,00m, e cores definidas por ele registradas (cadeiras com assento preto). _[DOC-033 · §11.2 itens 14-17 · ITM-01142]_
- `UNI-00527` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 4: gera prévias PNG e autoconfere sobreposições, textos fora do quadro e caracteres não suportados (², ≈ e setas viram "m2", "aprox." e "<-"/"->"). _[DOC-033 · §2.3 P2 passo 4 · ITM-00855]_
- `UNI-00532` `REG-QUAL` `vigente` `rotina-anterior` Levantamento P3 termina com o .xlsx recalculado com 0 erros, MATRIZ confirmando 100% dos itens do memorial e arquivo salvo no Drive. _[DOC-033 · §2.4 P3 Fim · ITM-00864]_
- `UNI-00533` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Levantamento P3, passo 1: lê o memorial e confere o número de itens. _[DOC-033 · §2.4 P3 passo 1 · ITM-00866]_

## Cálculos e critérios (2)

- `UNI-00151` `REG-CALC` `vigente` `rotina-anterior` Os campos do memorial nunca são alterados no levantamento e toda quantidade calculada traz MEMÓRIA DE CÁLCULO explícita. _[DOC-033 · §4.4 Regras gerais · ITM-00958]_
- `UNI-00647` `REG-CALC` `vigente` O RESUMO conta itens por setor produtivo e por origem em cada ambiente, com total, itens válidos (ATIVO mais ALTERADO) e cancelados, como base para fichas de produção e compras. _[DOC-072 · Aba RESUMO, L1-L21 · ITM-01442]_

## Regras operacionais (23)

- `UNI-00150` `REG-OPER` `vigente` `rotina-anterior` Padrões de escrita do memorial: medidas "6,00m x 2,70m", área "18,00m²", altura "h= 2,70m" e itens com três medidas "C x P x A". _[DOC-033 · §4.2 Padrões de escrita · ITM-00948]_
- `UNI-00210` `REG-OPER` `vigente` Produção de evento e Gestão de obra são projetos-mãe que reúnem as demais categorias como subprojetos, com cronograma mestre e fornecedores de terceiros. _[DOC-019 · Introdução, Projetos-mãe · ITM-00578]_
  - Requisitos separados deste item: `UNI-00210.01`, `UNI-00210.02`
- `UNI-00210.01` `REG-OPER` `proposto` Quando a categoria principal é Produção de evento, o projeto vira projeto-mãe, as demais categorias viram subprojetos com seus fluxos normais, e todos entram no cronograma mestre do evento. _[DOC-091 · §41 Categorias de serviço, regras · ITM-02451 · parte de UNI-00210]_
- `UNI-00210.02` `REG-OPER` `proposto` Gestão de obra é categoria própria (ex.: obra de showroom de incorporadora), funciona como projeto-mãe igual à Produção de evento e reúne serviços da Imagine e fornecedores de obra sob os três tipos de fornecedor. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas, Gestão de obra · ITM-02459 · parte de UNI-00210]_
- `UNI-00233` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Quando o áudio diverge da prancha, vale o que Diego ditou e a divergência entra como A CONFIRMAR na linha ÁREA ou em OBSERVAÇÕES; exemplo: carpete 10x15 contra zoneamento 15x20. _[DOC-033 · §2.2 P1 passo 3 · ITM-00834]_
- `UNI-00234` `REG-OPER` `vigente` `rotina-anterior` Item do memorial sem medida informada recebe na coluna DIMENSÕES "-", "conforme projeto/detalhamento" ou "A CONFIRMAR". _[DOC-033 · §2.2 P1 Decisões · ITM-00842]_
- `UNI-00235` `REG-OPER` `vigente` `rotina-anterior` Item fornecido pelo cliente entra no memorial com o texto "FORNECIDO PELO CLIENTE"; exemplos: cachepôs, bebedouros, capas de cadeira. _[DOC-033 · §2.2 P1 Decisões · ITM-00843]_
- `UNI-00236` `REG-OPER` `vigente` `rotina-anterior` Item opcional entra no memorial marcado como opcional; exemplo: púlpito padrão Imagine "previsto caso o cliente solicite". _[DOC-033 · §2.2 P1 Decisões · ITM-00844]_
- `UNI-00237` `REG-OPER` `vigente` `rotina-anterior` Quando cor ou modelo não foi definido, o assistente adota a referência do 3D e marca "a definir"; exemplo: "3D: preto". _[DOC-033 · §2.2 P1 Decisões · ITM-00848]_
- `UNI-00238` `REG-OPER` `vigente` `rotina-anterior` Algo que aparece no 3D mas não no memorial é desenhado como "SUGERIDO / não previsto no memorial" e marcado A CONFIRMAR; exemplos: ponto de house mix, escada do palco. _[DOC-033 · §2.3 P2 Decisões · ITM-00860]_
- `UNI-00241` `REG-OPER` `vigente` `rotina-anterior` Itens complementares necessários mas fora do memorial (quadro, disjuntores, cabos, folga, mão de obra, documentação da feira) entram com código NN-Ck e fundo lilás. _[DOC-033 · §2.4 P3 passo 4 · ITM-00870]_
- `UNI-00242` `REG-OPER` `vigente` `rotina-anterior` Categoria sem itens fica na planilha como "NÃO SE APLICA" e não é apagada, para manter a estrutura comparável entre projetos; exemplo: vidraçaria em um job. _[DOC-033 · §2.4 P3 Decisões · ITM-00874]_
- `UNI-00244` `REG-OPER` `vigente` `rotina-anterior` Quantidade que depende de confirmação fica vazia (amarela) e vai para OBS; exemplos: painel LED e seguro. _[DOC-033 · §2.4 P3 Decisões · ITM-00876]_
- `UNI-00268` `REG-OPER` `vigente` Item cancelado fica oculto no PDF do cliente pelo filtro da coluna STATUS (reaplicar o filtro antes de gerar o PDF); colunas H a Q recolhidas e área de impressão em B:G. _[DOC-072 · Aba LEIA-ME, L2 e L37; versão V02 · ITM-01438]_
- `UNI-00526` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 1: define o sistema de coordenadas em cm; exemplo de um job: X 0 a 1200, Y 0 a 800, com Y=0 na entrada. _[DOC-033 · §2.3 P2 passo 1 · ITM-00852]_
- `UNI-00636` `REG-OPER` `vigente` `conf:media` `rotina-anterior` As categorias fixas do levantamento são tapeçaria, comunicação visual, locação de móveis, marcenaria, vidraçaria, audiovisual, elétrica e documentação da feira, mais a categoria 09 fornecido pelo cliente quando houver. _[DOC-033 · §2.4 P3 passo 2 · ITM-00867]_
- `UNI-00638` `REG-OPER` `vigente` `rotina-anterior` Cores do levantamento: amarelo é a preencher, azul é valor digitado, verde é vínculo com outra aba e lilás é complementar NN-Ck. _[DOC-033 · §4.4 Cores · ITM-00956]_
- `UNI-00646` `REG-OPER` `substituido-parcial` Setor produtivo (Marcenaria, Serralheria, Pintura, Elétrica, Tapeçaria, Comunicação visual, Montagem, Não se aplica) separa os itens nas FIC; origem (próprio, terceirizado, locado, estoque Imagine, por conta do cliente) define se gera OC, OS ou nenhuma compra. _[DOC-072 · Aba LEIA-ME, L25-L26; aba LISTAS · ITM-01441]_
  - **Continua valendo:** O setor produtivo separa os itens nas fichas, e a origem define se gera ordem de compra, ordem de serviço ou nenhuma compra.
  - **Mudou:** FT no lugar de FIC (item-12).
- `UNI-00787` `REG-OPER` `vigente` Cada item tem destino definido (produzir, locar, comprar ou estoque) e ficha impressa com QR e foto. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00037]_
- `UNI-00795` `REG-OPER` `vigente` `rotina-anterior` D14: categorias fixas do levantamento (tapeçaria, comunicação visual, locação de móveis, marcenaria, vidraçaria, audiovisual, elétrica, documentação) mais 09 fornecido pelo cliente quando houver, lista ditada por Diego. _[DOC-033 · §6 D14 · ITM-01058]_
- `UNI-01642` `REG-OPER` `vigente` O briefing só é liberado para o Planejamento com os campos obrigatórios do formulário de entrada preenchidos. _[DOC-091 · §20 Formulário completo de entrada do cliente · ITM-02256]_
- `UNI-01650` `REG-OPER` `vigente` Nenhum detalhamento ou ficha técnica é gerado antes da formalização do contrato. _[DOC-091 · §25 Dois momentos distintos · ITM-02314]_
- `UNI-01666` `REG-OPER` `vigente` Ao gerar cada ficha técnica, a IA consulta obrigatoriamente a biblioteca de padrões construtivos (incluindo os captados por vídeo), e a ficha indica o padrão usado (código e versão). _[DOC-091 · §35 Regra para a geração das fichas técnicas · ITM-02393]_

## Pendências (4)

- `UNI-00579` `PEND` `decisao-diego` Aprovação da prévia: no G2 do fluxo de Projetos (DOC-008, 28/10) Comercial e vendedor aprovam em até 1 dia e, se não aprovarem, volta à PRJ-E6; no C6 do fluxo geral (DOC-030, 30/10) Diretoria e comercial aprovam e, se não, volta para ajustar a modelagem 3D, e se sim segue para a verificação 1 com o cliente. _[DOC-030 · §02 Fase 3, decisão C6 · ITM-00696]_
  - **Decisão (Decidido por Diego):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
  - Requisitos separados deste item: `UNI-00579.01`
- `UNI-00580` `PEND` `decisao-diego` `conf:media` Aprovação do projeto pela feira: no E5 do fluxo geral (DOC-030, 30/10), com ressalvas ou reprovação o engenheiro refaz detalhamento, cargas e pontos aéreos, e aprovado seguem RRTs, equipe, hotéis, nota de remessa e kit de credenciais; no CRD-E15 (DOC-013, 29/10, fluxo marcado como inferido), se a feira não aprovou, ajusta-se a exigência, passa pela Maitê e publica de novo. _[DOC-030 · §02 Fase 5, decisão E5 · ITM-00697]_
  - **Decisão (Decidido por Diego):** O engenheiro refaz detalhamento, cargas e pontos aéreos. Registro: `REGISTROS/decisao__20261104-1043-feira-nao-aprovou-7hjq.md`
  - Requisitos separados deste item: `UNI-00580.01`
- `UNI-00983` `PEND` `pendente` `conf:media` `rotina-anterior` Em 21/10, indicadores formais (KPIs) não estão definidos; usam-se de fato número de itens do memorial, erros de fórmula 0, cobertura da MATRIZ 100%, versões por entregável e itens A CONFIRMAR em aberto. _[DOC-033 · §3.3 Indicadores · ITM-00918]_
- `UNI-01102` `PEND` `a-conferir` `conf:media` O prazo de 1 dia para a prévia (G2) é aplicado por analogia com G1 e G3 (inferido). _[DOC-008 · §08, G2 · ITM-00179]_
  - **Atenção (leitura do Claude):** item 2: Liga-se ao ponto em aberto. O prazo de 1 dia da prévia foi inferido, e a Especificação (ITM-01691) repete esse prazo.
  - Requisitos separados deste item: `UNI-01102.01`, `UNI-01102.02`, `UNI-01102.03`, `UNI-01102.04`

## Ideias sem compromisso (1)

- `UNI-00851` `IDEIA` `proposto` `conf:media` `rotina-anterior` Melhoria sugerida: guardar os scripts geradores no Drive (pacote IMG-MOD-002) e criar lista de checagem pré-V01 do detalhamento com elementos do 3D a confirmar. _[DOC-033 · §7.3 itens 4-5 · ITM-01107]_

