---
id: ERP-MOD-PRD
titulo: Módulo Produção e app dos setores
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# PRD · Produção e app dos setores

77 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (6)

- `UNI-00292` `FLX-MACRO` `substituido-parcial` Setores produtivos, fase 1 Entrada: líder é notificado, há reunião obrigatória de apresentação das fichas e o líder solicita os materiais. _[DOC-014 · §01 Fase 1 (PRD-E1 a E3) · ITM-00390]_
  - **Continua valendo:** O líder é notificado e há reunião obrigatória de apresentação das fichas.
  - **Mudou:** O líder não solicita materiais: confere e ajusta a pré-comanda automática (item-21).
  - Requisitos separados deste item: `UNI-00292.01`
- `UNI-00292.01` `FLX-MACRO` `a-conferir` A ficha publicada (PLA-E15) entra no app do setor produtivo (PRD-E1); comandas e compras passam pelo Financeiro (FIN-E3 a E8). _[DOC-091 · §2 Fluxo entre setores, item 8 Planejamento → Produção · ITM-01595 · parte de UNI-00292]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`
- `UNI-00293` `FLX-MACRO` `a-conferir` Setores produtivos, fase 2 Materiais: solicitação comparada com comanda e custo até o material ficar formalizado e o pedido gerado por Compras. _[DOC-014 · §01 Fase 2 (PRD-E4 a E6) · ITM-00391]_
  - **Atenção (leitura do Claude):** item 21: Compara a solicitação do setor com a comanda. Pode ainda valer para os ajustes.
- `UNI-00294` `FLX-MACRO` `vigente` Setores produtivos, fase 3 Etapas próprias: Comunicação visual e Audiovisual têm etapas com o cliente antes da produção, até arquivos e conteúdos aptos. _[DOC-014 · §01 Fase 3 (CVI, AUD) · ITM-00392]_
- `UNI-00295` `FLX-MACRO` `vigente` Setores produtivos, fase 4 Produção: programação no app, produção da ficha com foto e ok e envio ao controle de qualidade e à Expedição. _[DOC-014 · §01 Fase 4 (PRD-E7 a E10) · ITM-00393]_
- `UNI-00323` `FLX-MACRO` `proposto` Produção: setores produtivos pedem material, produzem pela ficha, registram foto e ok, produção confere no dashboard, cliente e comercial aprovam a amostra e a qualidade embala. _[DOC-030 · §02 Fase 6 Produção · ITM-00692]_

## Etapas do fluxo (10)

- `UNI-00429` `FLX-MICRO` `vigente` Setores produtivos, PRD-E1: o Portal notifica o setor da demanda; o líder recebe no app, com o código do projeto e de cada item. _[DOC-014 · PRD-E1 · ITM-00394]_
- `UNI-00430` `FLX-MICRO` `vigente` Setores produtivos, PRD-E2: reunião obrigatória de apresentação das fichas técnicas e do projeto ao setor, registrada no Portal. _[DOC-014 · PRD-E2 · ITM-00395]_
- `UNI-00432` `FLX-MICRO` `a-conferir` `conf:media` O Portal compara a solicitação de materiais do setor com a comanda e o custo, previsto versus pedido, item a item, cruzando as comandas com a planilha de custos (FIN-E5). _[DOC-014 · PRD-E4 · ITM-00397]_
  - **Atenção (leitura do Claude):** item 21: Compara a solicitação do setor com a comanda. Pode ainda valer para os ajustes.
- `UNI-00443` `FLX-MICRO` `vigente` Setores produtivos, PRD-E7: programação do setor no app, com data de chegada de cada material e data de cada ficha, já definidas pelo Planejamento. _[DOC-014 · PRD-E7 · ITM-00418]_
- `UNI-00444` `FLX-MICRO` `vigente` Com a ficha pronta, o líder do setor registra no app da produção, lendo o QR code, a conclusão com foto e qualidade ok ou com erro; no dashboard de produção a pizza fica verde a cada ficha concluída. _[DOC-014 · PRD-E8 · ITM-00419]_
  - Requisitos separados deste item: `UNI-00444.01`, `UNI-00444.02`
- `UNI-00444.01` `FLX-MICRO` `proposto` A ficha é impressa em papel para cada setor (pintura, marcenaria, serralheria e demais), com o código e um QR code. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, da ficha técnica à baixa, ficha impressa · ITM-02316 · parte de UNI-00444]_
- `UNI-00444.02` `FLX-MICRO` `proposto` Ao concluir a etapa, o operador fotografa o item pronto junto com a ficha; o sistema lê o QR code e o código na foto e vincula a foto à ficha e ao item. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, da ficha técnica à baixa, foto e identificação · ITM-02317 · parte de UNI-00444]_
- `UNI-00445` `FLX-MICRO` `vigente` Setores produtivos, PRD-E10: ficha concluída segue para o controle de qualidade e a Expedição com foto e ok de qualidade (EXP-E1 a E3). _[DOC-014 · PRD-E10 · ITM-00421]_
- `UNI-00605.01` `FLX-MICRO` `proposto` `conf:media` O operador dá o ok no app, a etapa do setor fica concluída e a ficha segue para o próximo setor da cadência. _[DOC-091 · §25 Integração automática do projeto, da ficha técnica à baixa na produção, passo 4; §5 Planejamento, PLA-E19 · ITM-02319 · parte de UNI-00605]_
- `UNI-01557` `FLX-MICRO` `decisao-diego` Os setores produtivos só conferem e ajustam a pré-comanda, o que substitui a listagem manual do FIN-E3. _[DOC-091 · §25 Conferência dos setores · ITM-02301]_
  - **Decisão (Decidido por Diego):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`

## Pontos de decisão (4)

- `UNI-00566` `FLX-DECISAO` `vigente` Setores produtivos, PRD-E5: se a solicitação está dentro do previsto segue; se não, a quantidade é ajustada com o líder e o que passar do previsto vai para aprovação. _[DOC-014 · PRD-E5 · ITM-00398]_
  - Requisitos separados deste item: `UNI-00566.01`
- `UNI-00571` `FLX-DECISAO` `vigente` Se a ficha não está no prazo, o setor informa o novo prazo no Portal e Planejamento (Eduardo e Marília) e Érika são notificados; o Portal também repassa o novo prazo ao próximo setor. _[DOC-014 · PRD-E9 · ITM-00420]_
- `UNI-00581` `FLX-DECISAO` `proposto` `conf:media` Cliente e comercial aprovam a amostra; se não, o setor produtivo refaz; se sim, a qualidade confere, embala, etiqueta e fotografa. _[DOC-030 · §02 Fase 6, decisão G4 · ITM-00698]_
  - Requisitos separados deste item: `UNI-00581.01`, `UNI-00581.02`
- `UNI-01561` `FLX-DECISAO` `vigente` Se o sistema não reconhecer o QR code ou o código na foto da ficha, pede a confirmação do código. _[DOC-091 · §25 Da ficha técnica à baixa, Foto e identificação · ITM-02318]_

## Notificações (2)

- `UNI-00605` `FLX-NOTIF` `vigente` Planejamento, PLA-E19: o Portal dá baixa na ficha e avisa produção, planejamento e o próximo setor da cadência, com status em tempo real. _[DOC-012 · PLA-E19 · ITM-00314]_
  - Requisitos separados deste item: `UNI-00605.01`
- `UNI-01630` `FLX-NOTIF` `vigente` A mensagem de congelamento explica que não cabe nova alteração: não há tempo para recompra, planejamento do item, nova ficha técnica e ajuste de peça concluída. _[DOC-091 · §12 Congelamento do projeto · ITM-02181]_

## Módulos e telas (5)

- `UNI-00018` `ESC-MODULO` `vigente` Setores produtivos: marcenaria, marcenaria de estruturas, serralheria, elétrica, comunicação visual, pintura, tapeçaria, almoxarifado, logística interna de produção e audiovisual; todos seguem o fluxo comum, com fases próprias para comunicação visual e audiovisual. _[DOC-014 · §03 Setores · ITM-00422]_
- `UNI-00664` `ESC-MODULO` `vigente` App e dashboard da produção registram: foto da peça, leitura do QR, concluído (data, hora, líder, setor), qualidade, prazo (no prazo, antecipado, atrasado em dias), novo prazo, pizza por projeto e setor, alerta vermelho e relatórios. _[DOC-012 · §06 App da produção e dashboard · ITM-00338]_
  - Requisitos separados deste item: `UNI-00664.01`
- `UNI-00668` `ESC-MODULO` `vigente` App do setor mostra fichas técnicas com código, materiais pedidos e aprovados, datas das fichas definidas pelo Planejamento, checklist com foto e ok, e alertas de material atrasado, ficha perto do prazo e pendência do cliente. _[DOC-014 · §03 App do setor · ITM-00424]_
  - Requisitos separados deste item: `UNI-00668.01`
- `UNI-00668.01` `ESC-MODULO` `proposto` App da produção (setor 09): fichas por setor, pedido de material, foto e ok, e alertas. _[DOC-091 · §3 Módulos do ERP, App da produção · ITM-01610 · parte de UNI-00668]_
- `UNI-01653` `ESC-MODULO` `vigente` Cada TV mostra só o seu setor e unidade, com projetos ordenados pela data de carregamento mais próxima e totais no topo de peças que faltam, concluídas e embaladas por projeto. _[DOC-091 · §26 Modo TV para o setor · ITM-02333]_

## Perfis e responsáveis (11)

- `UNI-00920.02` `ESC-PERFIL` `vigente` Etiqueta simples da produção: é impressa e colada no primeiro setor pelo assistente da Marília no Rio Grande do Sul e pelo assistente do Rômulo em São Paulo. _[DOC-091 · Respostas do Diego, Etiqueta simples da produção · ITM-02038 · parte de UNI-00920]_
- `UNI-00920.03` `ESC-PERFIL` `vigente` Etiqueta em duas etapas: a etiqueta simples do primeiro setor é impressa e colada pelo assistente da Marília (RS) e pelo assistente do Rômulo (SP). _[DOC-091 · Respostas do Diego, Etiqueta simples da produção; §11 Pendências · ITM-02150 · parte de UNI-00920]_
- `UNI-01393` `ESC-PERFIL` `vigente` Produção tem Eduardo e Marília como responsáveis no RS e Rômulo e Samanta em São Paulo; Marília gera as fichas técnicas e, com Eduardo, decide refazer peças com erro; Suellen cuida do controle de qualidade e Osmar de Compras. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00015]_
- `UNI-01397` `ESC-PERFIL` `vigente` Marcenaria e validadores: Marco, Wagner, Leonardo e Henrique no RS e Rômulo em SP. Elétrica: Alexandre no RS e equipe terceirizada em SP, validada por Alexandre. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00019]_
  - Requisitos separados deste item: `UNI-01397.01`, `UNI-01397.02`
- `UNI-01397.01` `ESC-PERFIL` `proposto` O responsável pela validação dos padrões de elétrica no Rio Grande do Sul é Alexandre, que enquanto não houver responsável em SP valida os padrões das duas unidades, que são os mesmos. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED, passo 2 · ITM-02381 · parte de UNI-01397]_
- `UNI-01589` `ESC-PERFIL` `pendente` `conf:media` Perfil Líder de setor produtivo: pessoa a definir; acesso ao app do setor. _[DOC-091 · §8 Perfis de acesso · ITM-02122]_
- `UNI-01620` `ESC-PERFIL` `vigente` Em São Paulo, pintura, elétrica, marcenaria e serralheria são equipes terceirizadas que não usam o app. _[DOC-091 · §Respostas Equipe de São Paulo · ITM-02060]_
- `UNI-01621` `ESC-PERFIL` `vigente` Um assistente do Rômulo, a contratar, faz leitura do QR code, foto e baixa das peças no app, e cuida também da Expedição e do controle de qualidade. _[DOC-091 · §Respostas Equipe de São Paulo · ITM-02061]_
- `UNI-01626` `ESC-PERFIL` `vigente` `conf:media` Equipes terceirizadas: Eduardo (RS) e Samanta (SP) selecionam e escalam a equipe de cada projeto da sua unidade, com o mesmo processo; elas recebem toda semana. _[DOC-091 · §Respostas Escala e pagamento das equipes terceirizadas · ITM-02067]_
- `UNI-01651` `ESC-PERFIL` `vigente` Em São Paulo, onde os setores são terceirizados sem acesso ao app, a foto e a baixa são feitas pelo assistente do Rômulo. _[DOC-091 · §25 Da ficha técnica à baixa · ITM-02321]_
- `UNI-01671` `ESC-PERFIL` `vigente` `conf:media` Totens e estruturas ficam com a marcenaria e a elétrica, telas e equipamentos com o Audiovisual (Christian), e internet e energia entram no credenciamento. _[DOC-091 · §39 Tecnologia, Integração com os outros setores · ITM-02425]_

## Documentos gerados (1)

- `UNI-00920.01` `ESC-DOC` `vigente` `conf:media` Etiquetas em duas etapas: uma etiqueta simples com QR code, colada no primeiro setor da cadência para a baixa no app em cada setor. _[DOC-091 · Respostas do Diego, Etiquetas · ITM-02036 · parte de UNI-00920]_

## Entidades e campos (2)

- `UNI-01486` `ESC-DADOS` `vigente` O bloco de pintura da ficha técnica traz substrato, preparação (fundo ou selador), tipo de tinta, cor (código do fabricante ou Pantone), acabamento (fosco, acetinado, brilho) e número de demãos. _[DOC-091 · §32 Pintura, Especificação por peça · ITM-02367]_
- `UNI-01487` `ESC-DADOS` `vigente` A ficha de marcenaria estrutural tem estrutura interna (bitola e espaçamento do sarrafo), chapeamento, acabamento, fita de borda, fixação e travamento, divisão em partes para transporte e montagem, e vista explodida com medidas. _[DOC-091 · §33 Marcenaria, ficha estrutural · ITM-02374]_

## Requisitos técnicos (1)

- `UNI-01477` `TEC` `vigente` Os dados do modo TV se atualizam sozinhos a cada poucos segundos, com letras grandes e cores por situação: vermelho falta fazer, amarelo em produção, verde concluído, azul embalado. _[DOC-091 · §26 Modo TV para o setor · ITM-02332]_

## Aprovações e alçadas (1)

- `UNI-00566.01` `REG-APROV` `a-conferir` `conf:media` Pedido de material acima do previsto (PRD-E5): passa por filtro e aprovação. _[DOC-091 · §5 Setores produtivos, PRD-E5 · ITM-01927 · parte de UNI-00566]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`

## Acesso e visibilidade (1)

- `UNI-01480` `REG-ACESSO` `vigente` `conf:media` Diego, Maitê e coordenadores veem a fila de cada pessoa e de cada setor, com gargalos e atrasos. _[DOC-091 · §29 Visão de gestor · ITM-02351]_

## Códigos e rastreabilidade (1)

- `UNI-00135` `REG-CODIGO` `vigente` Arquivos de vídeo seguem o padrão SETOR_ITEM_ETAPA_DATA; enviado pelo app com o tipo de item, o sistema nomeia sozinho. _[DOC-021 · §5 Nome dos arquivos · ITM-00589]_

## Qualidade (7)

- `UNI-00164` `REG-QUAL` `vigente` App da produção: qualidade é registrada como ok ou com erro, com observação, e o erro entra no relatório de erros. _[DOC-012 · §06 Qualidade · ITM-00340]_
- `UNI-00167` `REG-QUAL` `vigente` Baixa do setor exige foto do item pronto junto da ficha (o app lê o QR e vincula a foto), setor, responsável, data e hora e ok no app. _[DOC-020 · Seção 05 Baixa do setor · ITM-00583]_
  - Requisitos separados deste item: `UNI-00167.01`, `UNI-00167.02`
- `UNI-00167.01` `REG-QUAL` `proposto` Foto e ok são obrigatórios na produção, na expedição, na montagem e na desmontagem. _[DOC-091 · §6 Regras de negócio, Foto e ok · ITM-02088 · parte de UNI-00167]_
- `UNI-00167.02` `REG-QUAL` `proposto` A ficha técnica de produção tem campo obrigatório de foto do item produzido, e a ficha só fecha com o ok do líder. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, destino de cada item codificado, item a produzir · ITM-02307 · parte de UNI-00167]_
- `UNI-00168` `REG-QUAL` `vigente` `conf:media` Regras de filmagem: celular na horizontal com boa luz, um vídeo de 1 a 3 minutos por etapa, dois enquadramentos, trena e materiais à mostra e sem ruído de máquinas durante a fala. _[DOC-021 · §3 Como filmar · ITM-00587]_
- `UNI-00169` `REG-QUAL` `vigente` `conf:media` Em cada vídeo falar item e etapa, medidas, materiais, estrutura interna, encaixes, fixação, acabamento, divisão para transporte e erros comuns, e encerrar com Fim da etapa. _[DOC-021 · §4 O que falar · ITM-00588]_
- `UNI-00170` `REG-QUAL` `vigente` `conf:media` Checklist antes do envio: nome e etapa ditos, medidas na trena e faladas, materiais mostrados, encaixes de perto, áudio compreensível e tipo de item correto. _[DOC-021 · §6 Checklist antes de enviar · ITM-00590]_

## Cálculos e critérios (11)

- `UNI-00195` `REG-CALC` `vigente` Pintura: tipo de tinta, demãos e litros são calculados por peça e a compra é feita por projeto. _[DOC-002 · §35 a 42 Pintura · ITM-00040]_
  - Requisitos separados deste item: `UNI-00195.01`, `UNI-00195.02`
- `UNI-00195.01` `REG-CALC` `proposto` A IA calcula a área a pintar de cada peça pelo 3D e detalhamento, multiplica pelas demãos, divide pelo rendimento do produto e aplica percentual de perda, resultando em litros de tinta, selador e diluente na ficha. _[DOC-091 · §32 Pintura especificada e calculada na ficha técnica · ITM-02368 · parte de UNI-00195]_
- `UNI-00195.02` `REG-CALC` `proposto` A soma das peças gera a lista de compra de tintas por tipo e cor, descontando o estoque, na base de compras da unidade. _[DOC-091 · §32 Pintura especificada e calculada na ficha técnica · ITM-02370 · parte de UNI-00195]_
- `UNI-00196.02` `REG-CALC` `proposto` `conf:media` Na moldura de painel de LED, a IA usa a especificação do painel (gabinetes, quantidade, montagem), respeita a margem de instalação em volta do painel e depois aplica a moldura, com margem padrão configurável. _[DOC-091 · §33 Marcenaria, duas categorias e padrões construtivos, moldura de LED · ITM-02375 · parte de UNI-00196]_
- `UNI-00197` `REG-CALC` `vigente` Elétrica tem catálogo e calcula fita LED, neon, fontes, cabos e carga total do estande. _[DOC-002 · §35 a 42 Elétrica · ITM-00042]_
  - Requisitos separados deste item: `UNI-00197.01`, `UNI-00197.02`, `UNI-00197.03`
- `UNI-00197.01` `REG-CALC` `proposto` Para item com iluminação, a IA calcula o neon flex ou LED de contorno pelo perímetro, a fita em face ou sanca pelas linhas e espaçamento ou pelo comprimento, e módulos pela área e densidade recomendada. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED · ITM-02383 · parte de UNI-00197]_
- `UNI-00197.02` `REG-CALC` `proposto` A IA arredonda pelo tamanho mínimo de corte, soma margem de perda, dimensiona a fonte pela potência total com folga de segurança configurável e calcula o cabeamento até o ponto de energia. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED · ITM-02384 · parte de UNI-00197]_
- `UNI-00197.03` `REG-CALC` `proposto` A soma de metros de fita e neon, fontes e cabos vira a lista de compra da elétrica e a carga elétrica total do estande, que alimenta a planta elétrica, a RRT e o credenciamento. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED · ITM-02385 · parte de UNI-00197]_
- `UNI-00900.02` `REG-CALC` `proposto` `conf:media` O rendimento de cada produto e marca e o percentual de perda ficam cadastrados no sistema, ajustáveis pelo setor de pintura. _[DOC-091 · §32 Pintura especificada e calculada na ficha técnica, passo 3 · ITM-02369 · parte de UNI-00900]_
- `UNI-01664` `REG-CALC` `vigente` O setor de pintura registra o consumo real e a IA compara com o previsto e ajusta os cálculos. _[DOC-091 · §32 Pintura, Aprendizado · ITM-02371]_
- `UNI-01665` `REG-CALC` `vigente` A elétrica registra o consumo real, que é comparado com o previsto. _[DOC-091 · §34 Elétrica, Aprendizado · ITM-02386]_

## Regras operacionais (6)

- `UNI-00196` `REG-OPER` `vigente` Marcenaria cobre móveis e estrutural, com uma ficha por item, padrões construtivos e moldura de LED com margem de instalação. _[DOC-002 · §35 a 42 Marcenaria · ITM-00041]_
  - Requisitos separados deste item: `UNI-00196.01`, `UNI-00196.02`
- `UNI-00196.01` `REG-OPER` `proposto` A IA gera uma ficha para cada item com código próprio (5 travessas de medidas diferentes são 5 fichas), e itens idênticos podem ficar numa ficha com quantidade. _[DOC-091 · §33 Marcenaria, duas categorias e padrões construtivos · ITM-02373 · parte de UNI-00196]_
- `UNI-00207` `REG-OPER` `vigente` Nenhuma ficha começa sem material formalizado, e nenhum arquivo ou conteúdo do cliente segue sem estar apto. _[DOC-014 · §02 intro · ITM-00400]_
- `UNI-00628` `REG-OPER` `vigente` `conf:media` Ordem de gravação: marcenaria estrutural (parede, testeira, sanca, coluna, forro, fachada, piso elevado e outros), móveis, elétrica (fita LED, letra caixa, neon) e pintura e acabamentos. _[DOC-021 · §2 O que gravar primeiro · ITM-00586]_
  - Requisitos separados deste item: `UNI-00628.01`
- `UNI-00628.01` `REG-OPER` `proposto` `conf:media` A lista de gravação é viva, fica no sistema sob gestão da Marília e cresce com item novo sem padrão, padrão com erro, peça reprovada ou retrabalho, e material ou técnica nova (guia PLANDEM_PRD-VID-001). _[DOC-091 · §35 Padrões construtivos por vídeo, regra para a geração das fichas · ITM-02395 · parte de UNI-00628]_
- `UNI-01614` `REG-OPER` `proposto` Produção: a reunião de apresentação das fichas é obrigatória (PRD-E2). _[DOC-091 · §5 09 Setores produtivos, PRD-E2 · ITM-01924]_

## Pendências (7)

- `UNI-00920` `PEND` `pendente` Etiqueta com QR code: não foi informado quem imprime e cola a etiqueta em cada peça e em que momento (início da produção ou primeiro setor da cadência). _[DOC-012 · §09 Validar antes de implantar · ITM-00345]_
  - Requisitos separados deste item: `UNI-00920.01`, `UNI-00920.02`, `UNI-00920.03`
- `UNI-00929` `PEND` `pendente` Elétrica (planta e RRT para o Credenciamento), Almoxarifado (recebe e entrega materiais) e Logística interna (movimenta peças até a Expedição) têm papéis ainda a confirmar. _[DOC-014 · §03 Setores · ITM-00423]_
- `UNI-00930` `PEND` `pendente` PRD-E2: não foi informado quem apresenta as fichas na reunião (Eduardo e Marília?) nem em quanto tempo ela acontece depois da notificação. _[DOC-014 · §07 item 2 (PRD-E2) · ITM-00429]_
- `UNI-00931` `PEND` `pendente` Documentos ou movimentos pré-evento próprios dos outros setores (ex.: Elétrica com planta e RRT para o Credenciamento) ainda precisam ser listados setor a setor. _[DOC-014 · §07 item 4 · ITM-00431]_
- `UNI-01110` `PEND` `inferido` Numeração: os setores produtivos ficam como setor 09, com um documento para todos; marcado como inferido. _[DOC-014 · §07 item 1 · ITM-00428]_
- `UNI-01111` `PEND` `inferido` PRD-E5: quando o pedido passa do previsto, a aprovação seria de Maitê e Diego (Financeiro, 1 dia, como no FIN-E5); marcado como inferido. _[DOC-014 · §07 item 3 (PRD-E5) · ITM-00430]_
- `UNI-01397.02` `PEND` `pendente` O nome do responsável de elétrica em São Paulo (equipe terceirizada) está a definir. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED, passo 2 · ITM-02382 · parte de UNI-01397]_

## Não usar: substituídos ou desatualizados (1)

- `UNI-00431` `FLX-MICRO` `substituido` Setores produtivos, PRD-E3: o líder avalia e solicita os materiais por ficha técnica e por código de item. _[DOC-014 · PRD-E3 · ITM-00396]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`

