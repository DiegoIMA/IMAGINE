---
id: ERP-MOD-TRP
titulo: Módulo Transversal
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# TRP · Transversal

120 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-22** (Ordem dos setores): A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. _(Decidido em parte)_ Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`
- **item-9** (Codigo do item): Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- **item-12** (Códigos de documentos): Detalhamento técnico usa DT, ficha técnica usa FT e prévia e render usam PRJ-002. Mood board e storytelling ficam sem sigla, e mudanças não têm abreviação. **Em aberto:** Significados de G1 e G2. _(Decidido em parte)_ Registro: `REGISTROS/decisao__20261104-1043-codigos-documentos-qukm.md`
- **item-13** (Nome da empresa): O nome usado é só "IMAGINE". **Em aberto:** Contratos usam a razão social? Registro: `REGISTROS/decisao__20261104-1043-nome-empresa-cgwj.md`
- **item-14** (Area de Custos): Diretoria e Custos veem a área. Compras só sabe o valor do item que foi comprado. **Em aberto:** Acesso do Financeiro. Registro: `REGISTROS/decisao__20261104-1043-area-custos-hokw.md`
- **item-16** (Lista de pessoas): Diego vai corrigir a lista na planilha IMAGINE_PESSOAS-PARA-CONFERIR_V01. **Em aberto:** Qual cadastro de equipe vale e quais nomes são a mesma pessoa. _(Aguarda Diego)_
- **item-17** (Índice de documentos): Índice novo criado: 00_PLANDEM_INDICE-E-CONTROLE_V02.md. O índice antigo não foi alterado. **Em aberto:** Copiar ou não SET02, SET14 e SET13 V03 para a pasta 07 PLANEJAMENTO IMAGINE. _(Documento corrigido)_ Registro: `FONTES/00_PLANDEM_INDICE-E-CONTROLE_V02.md`
- **item-18** (Responsáveis do fluxo): Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. _(Decidido em parte)_ Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- **ponto-5** (Sigla dos adicionais): Os adicionais ficam sem abreviação, como as mudanças. A sigla ADI deixa de ser usada. **Em aberto:** Como os adicionais serão identificados nos documentos e nos nomes de arquivo. Registro: `REGISTROS/decisao__20261104-1855-adicionais-sem-abreviacao-85vf.md`

## Fluxo macro (7)

- `UNI-00269` `FLX-MACRO` `a-conferir` Fluxo do projeto entre setores: Prospecção (01), Comercial (02), Projetos (03), Custos (04), Assistente comercial (06), aceite e contrato no Financeiro (05), Planejamento (07). _[DOC-001 · §3 Fluxo do projeto entre setores · ITM-00003]_
  - **Atenção (leitura do Claude):** item 8: Coloca aceite e contrato antes do Planejamento. A decisão é a partir do aceite.
  - Requisitos separados deste item: `UNI-00269.01`
- `UNI-00269.01` `FLX-MACRO` `proposto` Comercial passa a Projetos depois do atendimento e da reunião, com o briefing registrado no Portal (COM-E13); o Planejamento define o arquiteto (PRJ-E1). _[DOC-091 · §2 Fluxo entre setores, item 2 Comercial → Projetos (COM-E13, PRJ-E1) · ITM-01589 · parte de UNI-00269]_
- `UNI-00270` `FLX-MACRO` `substituido-parcial` Fluxo do projeto após o contrato: Planejamento (07), Credenciamento (08, em paralelo), Setores produtivos (09), Expedição (12), Montagem (13), Pós-feira (14), Marketing (15) e próxima feira. _[DOC-001 · §3 Fluxo do projeto entre setores · ITM-00004]_
  - **Continua valendo:** Planejamento, Credenciamento em paralelo, Setores produtivos, Marketing e a próxima feira continuam no fluxo.
  - **Mudou:** A parte final segue Controle de qualidade, Expedição, Logística, Montagem e Pós-feira (item-22). O projeto entra no Planejamento a partir do aceite (item-8) e o detalhamento só começa depois do contrato (ponto-1).
- `UNI-00272` `FLX-MACRO` `vigente` Fluxo do código único do item: 3D, memorial, custos, previsão, base de compras, ficha técnica, produção com foto, etiqueta QR, carregamento, montagem e termo de entrega. _[DOC-003 · Mapa, centro · ITM-00069]_
- `UNI-00324` `FLX-MACRO` `proposto` Evento: logística e carregamento, montagem na sequência com foto e ok por etapa, previsto x realizado alimenta o histórico e fecha com pós-feira/feedback. _[DOC-030 · §02 Fase 7 Evento · ITM-00693]_
- `UNI-00331` `FLX-MACRO` `vigente` `conf:media` `rotina-anterior` O macroprocesso segue as listas do quadro Trello Imagine: projetos, padrões, planejamento de MKT, entrada, criação, validação criativa, alterações, memorial para custos, custos, preço e proposta, validação com cliente, aprovado, detalhamento, produção e feedbacks de pós-feira. _[DOC-033 · §2.1 itens 1-18 · ITM-00825]_
- `UNI-01495` `FLX-MACRO` `proposto` Cada passagem entre setores é um evento do sistema: a etapa que termina libera a seguinte e notifica o próximo responsável. _[DOC-091 · §2 Fluxo entre setores · ITM-01587]_

## Etapas do fluxo (1)

- `UNI-00487` `FLX-MICRO` `proposto` Implantação: notebooks e celulares corporativos, números de WhatsApp Business, integração ao ERP e termo de ciência assinado por cada colaborador. _[DOC-022 · §9 Checklist de implantação · ITM-00606]_

## Notificações (3)

- `UNI-00613` `FLX-NOTIF` `proposto` Os alertas do agente de IA vão para Maitê e Diego, que avaliam cada caso. _[DOC-022 · §5 Monitoramento, item 3 · ITM-00600]_
- `UNI-01446` `FLX-NOTIF` `vigente` Definida a unidade, o sistema manda notificações, fichas, alertas e acessos para a equipe dela. _[DOC-091 · §Respostas Unidade de produção · ITM-02055]_
- `UNI-01562` `FLX-NOTIF` `vigente` Nova tarefa ou prazo próximo gera aviso no celular, e o que é urgente também vai pelo WhatsApp corporativo. _[DOC-091 · §29 Notificações · ITM-02349]_

## Módulos e telas (11)

- `UNI-00001` `ESC-MODULO` `proposto` Portal Imagine reúne ERP no computador e App no celular sobre uma única base de dados, com IA em todas as etapas, notificações e prazos, unidades RS e SP e sem controle paralelo. _[DOC-003 · Mapa, centro · ITM-00068]_
  - Requisitos separados deste item: `UNI-00001.01`
- `UNI-00001.01` `ESC-MODULO` `proposto` `conf:media` O escritório acessa pelo ERP no computador, e a fábrica e a feira acessam pelo app, com fichas, QR code e câmera. _[DOC-091 · §29 Tela inicial de cada usuário, item 4 Acesso · ITM-02350 · parte de UNI-00001]_
- `UNI-00781` `ESC-MODULO` `vigente` `conf:media` Governança do Portal: Índice de Desempenho do Setor, política de dispositivos e rastreamento de arquivos. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00030]_
  - Requisitos separados deste item: `UNI-00781.01`
- `UNI-00789` `ESC-MODULO` `vigente` `conf:media` Embalagem entra na ficha; cada usuário tem tela inicial própria; há página do projeto, volume de carga e controle de itens entregues pelo fornecedor. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00039]_
  - Requisitos separados deste item: `UNI-00789.01`, `UNI-00789.02`, `UNI-00789.03`, `UNI-00789.04`, `UNI-00789.05`, `UNI-00789.06`, `UNI-00789.07`
- `UNI-00789.03` `ESC-MODULO` `proposto` Cada usuário tem uma tela inicial própria, montada pelo seu papel e setor. _[DOC-091 · §29 Tela inicial de cada usuário · ITM-02346 · parte de UNI-00789]_
- `UNI-00789.04` `ESC-MODULO` `proposto` Qualquer usuário com permissão acompanha um projeto numa página única, que tem busca por cliente, projeto, feira ou código e lista todos os projetos do cliente com a feira de cada um. _[DOC-091 · §30 Página do projeto, visão completa · ITM-02353 · parte de UNI-00789]_
- `UNI-01421` `ESC-MODULO` `proposto` A especificação junta os 13 fluxos de setor e o Programa de Incentivo numa base única para desenvolver o ERP (Portal Imagine), com etapas, responsáveis, prazos, bloqueios, notificações e dados. _[DOC-091 · Abertura · ITM-01582]_
- `UNI-01453` `ESC-MODULO` `proposto` `conf:media` App mobile com leitor de QR code e câmera. _[DOC-091 · §9 Integrações · ITM-02136]_
- `UNI-01478` `ESC-MODULO` `vigente` A fila do dia mostra só as demandas da pessoa (tarefas de hoje, próximos vencimentos e atrasos em verde, amarelo e vermelho), com projeto e prazo de cada uma. _[DOC-091 · §29 Minha fila do dia · ITM-02347]_
- `UNI-01479` `ESC-MODULO` `vigente` A tela inicial traz a fila de itens que dependem do ok da pessoa, com aprovar ou devolver na própria tela. _[DOC-091 · §29 Aprovações · ITM-02348]_
- `UNI-01485` `ESC-MODULO` `vigente` O usuário pergunta à IA como está um projeto e ela responde com etapa atual, principais pendências e riscos de atraso. _[DOC-091 · §30 Página do projeto, Resumo pela IA · ITM-02358]_

## Perfis e responsáveis (13)

- `UNI-00027` `ESC-PERFIL` `proposto` A Diretoria (CEO Diego e CFO Maitê) faz as validações e aprovações e responde por seis áreas: Comercial, Projetos, Financeira, Planejamento, Produção e Operação no evento. _[DOC-030 · §01 Organograma · ITM-00673]_
- `UNI-00747` `ESC-PERFIL` `substituido-parcial` Setores compartilhados entre unidades: Projetos, Credenciamento (Alexandra), Marketing e bancos de imagens (Érika), Custos (Carol), Financeiro e Jurídico (Maitê), Assistente comercial (Anderson) e Audiovisual (Christian). Pós-feira está sem responsável. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00023]_
  - **Continua valendo:** Os setores compartilhados entre as unidades continuam.
  - **Mudou:** Diego define Marketing depois; Pós-feira segue sem responsável (item-18).
  - Requisitos separados deste item: `UNI-00747.01`, `UNI-00747.02`, `UNI-00747.03`
- `UNI-01388` `ESC-PERFIL` `vigente` Diego é da diretoria (comercial, planejamento e operação) e aprova peças, preço de venda e itens novos da biblioteca; no cadastro de 21/10 consta como CEO e dono das pastas. _[DOC-001 · §4 Pessoas e papéis · ITM-00005]_
  - Requisitos separados deste item: `UNI-01388.01`
- `UNI-01388.01` `ESC-PERFIL` `proposto` Perfil Diretoria comercial e operação (Diego): acesso a tudo; aprova peças, vendedores, preço e itens novos. _[DOC-091 · §8 Perfis de acesso, Diretoria comercial e operação · ITM-02112 · parte de UNI-01388]_
- `UNI-01389` `ESC-PERFIL` `vigente` Maitê é da diretoria (jurídico e financeiro) e cuida de contratos, comandas e validação do credenciamento; no cadastro de 21/10 consta como CFO e [PES-00103]. _[DOC-001 · §4 Pessoas e papéis · ITM-00006]_
  - Requisitos separados deste item: `UNI-01389.01`
- `UNI-01389.01` `ESC-PERFIL` `proposto` Perfil Diretoria jurídica e financeira (Maitê): contratos, preço, comandas, credenciamento e incentivo. _[DOC-091 · §8 Perfis de acesso, Diretoria jurídica e financeira · ITM-02113 · parte de UNI-01389]_
- `UNI-01394` `ESC-PERFIL` `vigente` Logística é de Eduardo no RS e de Samanta em SP; Compras é de Osmar no RS e de Samanta em SP. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00016]_
  - Requisitos separados deste item: `UNI-01394.01`, `UNI-01394.02`, `UNI-01394.03`
- `UNI-01398` `ESC-PERFIL` `vigente` Impressão 3D é do Pedro (só RS); decoração é do André; tecnologia e experiências é do Bruno; vídeos de padrões são da Marília. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00020]_
- `UNI-01409` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` Júlia [PES-00011]: operações (EQP-010). _[DOC-033 · §5.6.2 EQP-010 · ITM-01036]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01414` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` Alessandra: assistente operacional (EQP-016), com dados incompletos. _[DOC-033 · §5.6.2 EQP-016 · ITM-01042]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01415` `ESC-PERFIL` `vigente` `rotina-anterior` Pedro [PES-00015]: admin master com acesso total (EQP-017). _[DOC-033 · §5.6.2 EQP-017 · ITM-01043]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01588` `ESC-PERFIL` `substituido-parcial` Responsáveis: Credenciamento = Alexandra; Expedição = Suellen; Marketing = Érika (também Planejamento); Assistente comercial = Anderson (confirmado). _[DOC-091 · §Respostas Responsáveis · ITM-02034]_
  - **Continua valendo:** Os responsáveis citados de Credenciamento, Expedição e Assistente comercial continuam.
  - **Mudou:** Diego define Marketing depois (item-18).
- `UNI-01624` `ESC-PERFIL` `vigente` Projetos, Credenciamento, Marketing, Custos e Financeiro são compartilhados entre a equipe de São Paulo e a do Rio Grande do Sul. _[DOC-091 · §Respostas Equipe de São Paulo · ITM-02064]_

## Documentos gerados (9)

- `UNI-00045` `ESC-DOC` `substituido-parcial` Mantém as siglas existentes (CAD, PAD, MOD, MEM, ORC, PRJ, ATA) e propõe novas: ENT, BRF, CRO, ALT, PRP, CTR, FIN, CRD, FIC, SOL, COT, OC, OS, REC, AMO, CHK, ROM, TER e REL; PRJ-001 segue como detalhamento técnico. _[DOC-032 · §03 Siglas · ITM-00773]_
  - **Continua valendo:** As siglas não citadas nas decisões continuam, como propostas.
  - **Mudou:** Detalhamento técnico usa DT no lugar de PRJ-001; ficha técnica usa FT no lugar de FIC; pedido de alteração fica sem sigla (item-12).
- `UNI-00046` `ESC-DOC` `proposto` Documentos gerais: cadastros de equipe, clientes, fornecedores e biblioteca de itens e materiais (IMG-CAD-001 a 004), tabela de tempos, de alçadas e de composição de preço (IMG-PAD-004 a 006). _[DOC-032 · §04 Base da empresa · ITM-00774]_
- `UNI-00047` `ESC-DOC` `proposto` `conf:media` Captação e entrada: registro do lead no CRM, ENT-001 ficha de entrada, BRF-001 briefing, ATA-001 ata versionada por reunião e CRO-001 micro cronograma reverso. _[DOC-032 · §04 Fases 1 e 2 · ITM-00775]_
- `UNI-00725` `ESC-DOC` `proposto` Termo de ciência: o colaborador declara ter lido a política e saber que equipamentos e contas da empresa são monitorados, com nome, setor, data e assinatura. _[DOC-022 · §8 Termo de ciência · ITM-00604]_
  - Requisitos separados deste item: `UNI-00725.01`
- `UNI-00725.01` `ESC-DOC` `proposto` Cada usuário assina o termo da política antes de receber os equipamentos. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo, ciência · ITM-02222 · parte de UNI-00725]_
- `UNI-00727` `ESC-DOC` `proposto` Cabeçalho igual em todos os modelos: logo IMG-MOD-001, código, versão, data, status, cliente e evento, cartão da demanda, etapa do fluxo (E-código) e elaborado por. _[DOC-032 · §02 Carimbo · ITM-00769]_
- `UNI-00846` `ESC-DOC` `substituido-parcial` `conf:media` Onda 1 de implantação: biblioteca com código MAT, MEM-001 com coluna IT, ORC-001 ligado ao MEM, alçadas IMG-PAD-005, SOL e OC com orçado x comprado e ENT-001. _[DOC-032 · §08 Onda 1 Base · ITM-00803]_
  - **Continua valendo:** Serve como sugestão de ordem de implantação, ainda sem decisão de Diego.
  - **Mudou:** O comprador não vê o orçado (ponto-2); no lugar das alçadas vale o alerta de preço (item-5).
- `UNI-00847` `ESC-DOC` `substituido-parcial` `conf:media` Onda 2: CRO-001 e 002, ALT, PRP-001 com IT, CTR e FIN-001, FIC por setor, COT, REC, OS, CHK-001 e ROM-001. _[DOC-032 · §08 Onda 2 Fluxo · ITM-00804]_
  - **Continua valendo:** Serve como sugestão de ordem de implantação, ainda sem decisão de Diego.
  - **Mudou:** FT no lugar de FIC e pedido de alteração sem sigla (item-12).
- `UNI-00848` `ESC-DOC` `proposto` `conf:media` Onda 3: AMO, CRD-001, OC aberta e reposição automática, REL-001 e REL-002, ROM-002 e avaliação de fornecedor e de cliente. _[DOC-032 · §08 Onda 3 Controle · ITM-00805]_

## Entidades e campos (4)

- `UNI-00118.01` `ESC-DADOS` `proposto` Usuário: setor, categoria, feiras em que está escalado e validade do acesso. _[DOC-091 · §4 Entidades e dados principais, Usuário · ITM-01643 · parte de UNI-00118]_
- `UNI-00705` `ESC-DADOS` `vigente` `rotina-anterior` O cadastro de equipe tem os campos ID (EQP-NNN), nome, cargo, contatos pessoal e profissional separados, Trello, projetos com acesso e status (ATIVO/INATIVO); não registra senhas. _[DOC-033 · §5.6.2 IMG-CAD-001 V08 Tabela · ITM-01023]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-00789.02` `ESC-DADOS` `proposto` `conf:media` A ficha técnica mostra à Expedição como embalar cada item. _[DOC-091 · §28 Embalagem calculada na ficha técnica, passo 3 · ITM-02343 · parte de UNI-00789]_
- `UNI-01447` `ESC-DADOS` `vigente` No ERP, cada unidade tem a sua equipe cadastrada por papel, e cada projeto leva o campo "unidade de produção". _[DOC-091 · §Respostas Unidade de produção · ITM-02056]_

## Integrações (2)

- `UNI-00213` `ESC-INTEG` `proposto` Cada colaborador recebe notebook, celular e número de WhatsApp Business corporativos, de propriedade da empresa e integrados ao ERP (WhatsApp e rastreamento de arquivos). _[DOC-022 · §3 Equipamentos e contas · ITM-00595]_
- `UNI-01481` `ESC-INTEG` `vigente` A mesma informação da tela inicial alimenta o modo TV dos setores e o Índice de Desempenho do Setor. _[DOC-091 · §29 Integração · ITM-02352]_

## Dashboards e indicadores (2)

- `UNI-00014` `ESC-INDIC` `vigente` Dashboards: comercial semanal e mensal, custos previsto x realizado, produção e comunicação visual em tempo real e painel de telas do Planejamento. _[DOC-003 · Mapa, rodapé Dashboards · ITM-00083]_
  - Requisitos separados deste item: `UNI-00014.01`, `UNI-00014.02`, `UNI-00014.03`
- `UNI-01673` `ESC-INDIC` `vigente` Relatórios, metas e indicadores podem ser filtrados por categoria de serviço. _[DOC-091 · §41 Regras das categorias · ITM-02452]_

## Requisitos técnicos (4)

- `UNI-00783` `TEC` `vigente` Checklist de aquisição: notebooks, celulares e números corporativos; TVs por setor e painel de telas do Planejamento; mini PC ou TV box, suportes, rede e login de exibição. _[DOC-002 · §2 a 22 Checklist de aquisição · ITM-00033]_
  - Requisitos separados deste item: `UNI-00783.01`, `UNI-00783.02`, `UNI-00783.03`
- `UNI-00783.01` `TEC` `proposto` Modo TV, incluído em 01/11: telas do ERP exibidas em TVs de cada setor produtivo nas duas unidades (RS e SP), com login de exibição somente leitura. _[DOC-091 · §17 Política de uso de dispositivos, telas do modo TV (incluído em 01/11) · ITM-02224 · parte de UNI-00783]_
- `UNI-00783.02` `TEC` `proposto` Requisitos do modo TV: painel na sala do Planejamento com cronograma geral e uma tela por setor, mini PC ou TV box para TV não smart, suportes e rede ou Wi-Fi. _[DOC-091 · §17 Política de uso de dispositivos, telas do modo TV (incluído em 01/11) · ITM-02225 · parte de UNI-00783]_
- `UNI-00951.01` `TEC` `pendente` `conf:media` Checklist de aquisição: notebooks e celulares corporativos para Comercial, Compras e Operação, WhatsApp Business por usuário, integração ao ERP, termo assinado e validação jurídica da Maitê. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo, checklist de aquisição · ITM-02223 · parte de UNI-00951]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`

## Prazos (2)

- `UNI-00098` `REG-PRAZO` `proposto` Todo prazo tem data; se vencer, o sistema alerta os outros setores no dia seguinte. _[DOC-030 · §06 Regras do portal · ITM-00725]_
- `UNI-00753` `REG-PRAZO` `vigente` `conf:baixa` Almoxarifado, logística, frota, produção, expedição, credenciamento e audiovisual tiveram prazos e alertas definidos nas decisões de 31/10. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00029]_

## Aprovações e alçadas (2)

- `UNI-00106` `REG-APROV` `proposto` Todo documento traz bloco de aprovação com quem aprovou, quando, em qual alçada e com qual comentário, registrado no Portal e carimbado no PDF. _[DOC-032 · §02 Aprovação · ITM-00771]_
- `UNI-00109` `REG-APROV` `substituido-parcial` Aprovações na matriz: ENT-001 assistente e Diretoria; ALT Financeiro e Diretoria; ORC-002 Diretoria; PRP vendedor, Financeiro, Diretoria e cliente; OC/OS Financeiro e Diretoria; AMO vendedor e cliente. _[DOC-032 · §07 Matriz · ITM-00802]_
  - **Continua valendo:** A matriz segue como proposta para os documentos que nenhuma decisão alterou.
  - **Mudou:** Pedido de alteração sem sigla (item-12); custos e preço seguem o item-1; compras seguem o alerta de preço (item-5 e ponto-2).

## Acesso e visibilidade (2)

- `UNI-00118` `REG-ACESSO` `vigente` Acesso por categoria de usuário (encarregado, responsável, produtor, coordenador de montagem, plantonista, coordenador de produção, comercial e cliente); cada pessoa é nomeada e escalada por feira e pode acumular categorias. _[DOC-016 · §03 Usuários e categorias · ITM-00493]_
  - Requisitos separados deste item: `UNI-00118.01`, `UNI-00118.02`
- `UNI-00783.03` `REG-ACESSO` `proposto` O aparelho do modo TV usa um login de exibição, só leitura, sem permitir alterações. _[DOC-091 · §17 Política de uso de dispositivos, telas do modo TV; §26 Comunicação visual, modo TV · ITM-02331 · parte de UNI-00783]_

## Códigos e rastreabilidade (14)

- `UNI-00128` `REG-CODIGO` `substituido-parcial` Codificação proposta: documentos CLIENTE-FEIRAAA_TIPO-NNN_DESCRICAO_VNN; itens BIB-CATEGORIA-NNNN; locações LOC-CATEGORIA-NNNN; tipos REF, STO, PRJ, APR, MEM, DET, FT, ORC, AMO. _[DOC-008 · §06 Codificação e pastas · ITM-00198]_
  - **Continua valendo:** Padrão de nome de documento segue como proposta, com os tipos que nenhuma decisão retirou.
  - **Mudou:** Mood board e storytelling ficam sem sigla; detalhamento usa DT, ficha técnica usa FT e prévia e render usam PRJ-002 (item-12); BIB- e LOC- estão em aberto (item-9).
- `UNI-00130` `REG-CODIGO` `vigente` Código único do item: nasce no memorial descritivo de Projetos, um para cada item, e acompanha o item pela custos, comanda, compras, ficha, app, relatório, expedição e montagem. _[DOC-012 · §04 Código único · ITM-00330]_
- `UNI-00131` `REG-CODIGO` `vigente` Código único: o Portal não aceita item sem código em nenhuma planilha, comanda, ordem de compra, ficha ou cronograma. _[DOC-012 · §04 Bloqueio na entrada · ITM-00331]_
- `UNI-00132` `REG-CODIGO` `vigente` Código único: nenhuma baixa no app, conferência de qualidade, carregamento ou montagem é validada sem código. _[DOC-012 · §04 Bloqueio na validação · ITM-00332]_
- `UNI-00133` `REG-CODIGO` `vigente` Cada peça leva uma etiqueta com QR code do código; o líder lê no app para dar baixa e a expedição confere no carregamento. _[DOC-012 · §04 Etiqueta · ITM-00335]_
  - Requisitos separados deste item: `UNI-00133.01`
- `UNI-00133.01` `REG-CODIGO` `proposto` O código do item é o mesmo da ficha, da etiqueta com QR code, do carregamento e da montagem. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, fim da seção de destino dos itens · ITM-02311 · parte de UNI-00133]_
- `UNI-00136` `REG-CODIGO` `proposto` Nome de arquivo de job: [CLIENTE]-[FEIRA][AA]_[TIPO]-NNN_[NOME]_VNN; documento geral: IMG-[TIPO]-NNN; sem acento, sem espaço, versão com 2 dígitos. _[DOC-032 · §02 Arquivo e código · ITM-00768]_
- `UNI-00137` `REG-CODIGO` `substituido-parcial` Todo documento cita sua origem (OC cita SOL, COT e ORC; FIC cita MEM e PRJ; PRP cita ORC-002) e versão nova nunca sobrescreve a anterior, com histórico de versão, data, autor, alteração e ALT. _[DOC-032 · §02 Vínculo e Histórico · ITM-00772]_
  - **Continua valendo:** Todo documento cita sua origem; versão nova nunca sobrescreve a anterior; há histórico com versão, data, autor e alteração.
  - **Mudou:** FT no lugar de FIC, DT no lugar de PRJ-001 e pedido de alteração sem sigla (item-12); a ordem de compra nasce da comanda (item-21).
  - Requisitos separados deste item: `UNI-00137.01`
- `UNI-00143` `REG-CODIGO` `vigente` `rotina-anterior` Sempre se lê a versão de maior número. _[DOC-033 · §2.6 P5 item 5 · ITM-00892]_
- `UNI-00145` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` Novo registro de equipe usa ID EQP-NNN sequencial, nunca reutilizado; pessoa desligada vira INATIVO e nunca é apagada. _[DOC-033 · §2.7 P6 passo 2 · ITM-00895]_
- `UNI-00146` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` As siglas de tipo são CAD cadastro, PAD padrão, MOD modelo, MEM memorial descritivo, ATA ata de reunião, ORC orçamento/custos e PRJ projeto/3D. _[DOC-033 · §4.1 item 2 · ITM-00939]_
- `UNI-00148` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` O histórico é uma tabela VERSÃO / DATA / AUTOR / ALTERAÇÃO no fim do arquivo ou em aba própria. _[DOC-033 · §4.1 item 4 · ITM-00941]_
- `UNI-00765` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` Por mandato de Diego, em 20/10 foi adotada a REGRA FIXA de rastreabilidade (nome, ID, cabeçalho, histórico e nova versão sem apagar), descartando nomes livres e sobrescrita, e criada a estrutura do Drive (PASTA PRINCIPAL IMAGINE, IMAGINE e pastas de projeto) com padrões e cadastros em .md. _[DOC-033 · §6 D01 · ITM-01045]_
- `UNI-01107` `REG-CODIGO` `a-conferir` `conf:media` Código único não muda do memorial até a montagem; um item novo ou adicional recebe código novo no mesmo padrão (marcado como inferido no documento). _[DOC-012 · §04 Sem mudança · ITM-00333]_
  - **Atenção (leitura do Claude):** item 9: Diz que o código não muda até a montagem. A decisão põe a versão no código, e está em aberto se ela é fixa.

## Qualidade (1)

- `UNI-00171` `REG-QUAL` `proposto` Régua de status única: RASCUNHO, EM APROVAÇÃO, APROVADO, SUBSTITUÍDO ou CANCELADO (com motivo); só a versão APROVADA vale para o setor seguinte. _[DOC-032 · §02 Status · ITM-00770]_

## Legal e fiscal (6)

- `UNI-00178` `REG-LEGAL` `proposto` Toda solução que coleta dados, grava vídeo ou publica em rede social exige consentimento claro na tela e regras validadas pela Maitê. _[DOC-004 · Regras gerais, item 1 · ITM-00099]_
  - Requisitos separados deste item: `UNI-00178.01`, `UNI-00178.02`, `UNI-00178.03`
- `UNI-00182` `REG-LEGAL` `proposto` `conf:media` A política vale para Comercial, Compras e Operação (Planejamento, Produção, Logística, Expedição, Almoxarifado e Montagem), no RS e em SP. _[DOC-022 · §2 A quem se aplica · ITM-00594]_
- `UNI-00183` `REG-LEGAL` `proposto` A empresa monitora o WhatsApp corporativo e os arquivos dos computadores corporativos, e um agente de IA aponta sinais de risco como pagamento por fora, valores divergentes, fornecedor sem cadastro e combinações fora do sistema. _[DOC-022 · §5 Monitoramento · ITM-00599]_
- `UNI-00184` `REG-LEGAL` `proposto` Aparelhos, números e contas pessoais não são monitorados em nenhuma hipótese. _[DOC-022 · §5 Monitoramento, item 4 · ITM-00601]_
- `UNI-00185` `REG-LEGAL` `proposto` O monitoramento se limita a equipamentos e contas da empresa; só Diego e Maitê acessam os dados, guardados pelo prazo definido pelo jurídico; o colaborador é informado antes, por escrito. _[DOC-022 · §6 Privacidade e LGPD · ITM-00602]_
- `UNI-00186` `REG-LEGAL` `proposto` Uso de número ou aparelho pessoal em negociações, ou pagamento combinado fora do sistema, é tratado conforme regulamento interno e legislação trabalhista, após apuração. _[DOC-022 · §7 Descumprimento · ITM-00603]_

## Cálculos e critérios (1)

- `UNI-00789.01` `REG-CALC` `proposto` `conf:media` O sistema soma a embalagem de todos os itens e gera a lista total de compra de embalagem do projeto na base de compras da unidade, com o estoque do almoxarifado descontado. _[DOC-091 · §28 Embalagem calculada na ficha técnica, passo 2 · ITM-02342 · parte de UNI-00789]_

## Regras operacionais (10)

- `UNI-00149` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Todo documento leva o logotipo IMG-MOD-001: planilha no canto superior esquerdo de todas as abas, PDF no carimbo à esquerda do título em todas as folhas, sem distorcer, recolorir nem recortar; pedido de Diego registrado no PAD-001 V02 item 1.6. _[DOC-033 · §4.1 item 8 · ITM-00944]_
- `UNI-00202` `REG-OPER` `proposto` Regras gerais: nada em conta pessoal, todo andamento no ERP, prazo considera aprovações de plataformas como WhatsApp, e senhas no cofre com acessos removidos ao fim do projeto. _[DOC-004 · Regras gerais, itens 2 a 5 · ITM-00100]_
- `UNI-00212` `REG-OPER` `proposto` Toda comunicação de trabalho com clientes e fornecedores deve ficar registrada nos sistemas da empresa, para dar transparência, proteger empresa e colaboradores e evitar pagamentos fora do sistema. _[DOC-022 · §1 Objetivo · ITM-00593]_
- `UNI-00214` `REG-OPER` `proposto` Todo contato de trabalho é feito só por número e equipamentos corporativos; é proibido negociar valores, enviar cotações ou receber pedido de pagamento por número ou aparelho pessoal. _[DOC-022 · §4 Regras de uso, itens 1 e 2 · ITM-00596]_
  - Requisitos separados deste item: `UNI-00214.01`, `UNI-00214.02`
- `UNI-00214.01` `REG-OPER` `proposto` Todo contato de trabalho com clientes e fornecedores passa por notebook e WhatsApp Business da Imagine, monitorados pelo sistema; política completa em PLANDEM_POL-001, a validar com a Maitê. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo · ITM-02219 · parte de UNI-00214]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-00214.02` `REG-OPER` `vigente` É proibido negociar com clientes ou fornecedores por número ou aparelho pessoal, e aparelhos e contas pessoais nunca são monitorados. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo, Proibido · ITM-02221 · parte de UNI-00214]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-00215` `REG-OPER` `proposto` Arquivos de trabalho ficam nos computadores corporativos, rastreados pelo sistema, sem versões paralelas fora do ERP. _[DOC-022 · §4 Regras de uso, item 3 · ITM-00597]_
  - Requisitos separados deste item: `UNI-00215.01`
- `UNI-00215.01` `REG-OPER` `proposto` `conf:media` Todos os arquivos salvos nos computadores corporativos do Comercial, de Compras e do Planejamento são rastreados pelo sistema, para evitar versões paralelas fora do ERP (31/10). _[DOC-091 · §9 Integrações, rastreamento de arquivos (31/10) · ITM-02128 · parte de UNI-00215]_
- `UNI-00754` `REG-OPER` `vigente` `conf:baixa` Também decididos em 31/10: indicação, collabs, inovação, locações, prospecção pelo app e evento náutico. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00032]_
  - Requisitos separados deste item: `UNI-00754.01`
- `UNI-00754.01` `REG-OPER` `proposto` `conf:media` Collabs têm duas formas de oferta: item adicional vendido ao cliente ou benefício do programa de upgrade por indicação. _[DOC-091 · §14 Projeto Collabs com marcas parceiras, como entra no sistema · ITM-02202 · parte de UNI-00754]_

## Pendências (25)

- `UNI-00134` `PEND` `decisao-diego` Divergência no formato do código do item: DOC-012 diz projeto + item + subitem (P0123-015-02); DOC-020 diz projeto-setor-número (P0123-CV-012), igual do projeto à montagem; DOC-032, DOC-072 e o índice DOC-039 dizem que o IT é o número do ÍTEM do memorial e o rastreio é o ID do job, uma barra e o IT (ex.: [JOB]/2.1). _[DOC-020 · Cabeçalho e rodapé · ITM-00581]_
  - **Decisão (Decidido por Diego):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- `UNI-00878` `PEND` `decisao-diego` Código único do item: IMG-PAD-003 e IMG-MOD-004 usam job mais IT; SET07 e SET12 usam P0123-015-02; a ficha PRD-FT-CV usa P0123-CV-012; o SET03 usa BIB-MOB-0042 e LOC-ILU-0007 na biblioteca. _[DOC-090 · §3 item 2 · ITM-01562]_
  - **Decisão (Decidido por Diego):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- `UNI-00885` `PEND` `decisao-diego` O fluxo geral V03 está desatualizado ao marcar Compras, Logística e Pós-feira como "a ditar": o ERP-001 já define responsáveis de Compras e Logística, o SET14 existe e Marketing não aparece no organograma. _[DOC-090 · §3 item 12 · ITM-01569]_
  - **Decisão (Decidido em parte):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-00886` `PEND` `decisao-diego` Códigos de documentos: o IMG-PAD-003 usa PRJ-001 (detalhamento), FIC e ALT; o SET03 usa DET e FT; o SET04 usa ADI; e G1 tem dois significados (fluxo V03 e SET03). _[DOC-090 · §3 item 13 · ITM-01570]_
  - **Decisão (Decidido em parte):** Detalhamento técnico usa DT, ficha técnica usa FT e prévia e render usam PRJ-002. Mood board e storytelling ficam sem sigla, e mudanças não têm abreviação. **Em aberto:** Significados de G1 e G2. Registro: `REGISTROS/decisao__20261104-1043-codigos-documentos-qukm.md`
- `UNI-00887` `PEND` `decisao-diego` `conf:media` Nome da empresa: "Imagine Arquitetura Efêmera" nos setores e na política, e "Imagine Espaços Criativos" no ERP e nos modelos. _[DOC-090 · §3 item 14 · ITM-01571]_
  - **Decisão (Decidido por Diego):** O nome usado é só "IMAGINE". **Em aberto:** Contratos usam a razão social? Registro: `REGISTROS/decisao__20261104-1043-nome-empresa-cgwj.md`
- `UNI-00888` `PEND` `pendente` `conf:media` Cadastro de equipe: o IMG-CAD-001 V08 (21/10) não tem pessoas com função no ERP-001, como Eduardo, Osmar, Suellen, Samanta e Rômulo, e as funções também mudaram. _[DOC-090 · §3 item 15 · ITM-01572]_
  - **Decisão (Aguarda Diego):** Diego vai corrigir a lista na planilha IMAGINE_PESSOAS-PARA-CONFERIR_V01. **Em aberto:** Qual cadastro de equipe vale e quais nomes são a mesma pessoa.
- `UNI-00889` `PEND` `pendente` `conf:media` Setores 02 (Comercial), 10, 11 e 14 (Pós-feira) constam como não recebidos no índice; 02 e 14 são citados em outros fluxos (COM-E10, COM-E15, POS-E8). _[DOC-001 · §2 Setores mapeados, linhas 02, 10, 11 e 14 · ITM-00010]_
  - Requisitos separados deste item: `UNI-00889.01`
- `UNI-00889.01` `PEND` `a-conferir` `conf:media` Os setores 10 Expedição e 11 Logística não têm documento e estão a mapear; hoje fazem parte do SET12. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento; Respostas do Diego, Setores · ITM-01585 · parte de UNI-00889]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`
- `UNI-00890` `PEND` `pendente` `conf:media` Documentos de referência citados e ainda não recebidos: PLANDEM_FLX-001 (fluxo geral) e PLANDEM_SET-001 (lista e numeração dos setores). _[DOC-001 · §2 Setores mapeados, nota abaixo da tabela · ITM-00011]_
  - Requisitos separados deste item: `UNI-00890.01`
- `UNI-00890.01` `PEND` `pendente` Documentos-mestres PLANDEM_FLX-001 e PLANDEM_SET-001 não estão na pasta, e o índice ainda marca os setores 02 e 14 como não recebidos. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02146 · parte de UNI-00890]_
- `UNI-00894` `PEND` `pendente` Responsáveis a definir: comunicação visual SP, elétrica SP e módulos de Produção de evento e Gestão de obra. _[DOC-002 · §45 Pendências · ITM-00058]_
- `UNI-00898` `PEND` `pendente` Validações pendentes da Maitê: indicação, LGPD e política de dispositivos. _[DOC-002 · §45 Pendências · ITM-00062]_
  - Requisitos separados deste item: `UNI-00898.01`
- `UNI-00921` `PEND` `a-conferir` `conf:media` Ajuste pendente entre documentos: as versões de Projetos (SET03), Custos (SET04) e Financeiro (SET05) devem receber a regra do código único na próxima revisão de cada uma. _[DOC-012 · §09 Validar antes de implantar · ITM-00346]_
  - **Atenção (leitura do Claude):** item 9: Pede para levar a regra do código único aos documentos. Agora a regra é o formato novo.
- `UNI-00928.02` `PEND` `pendente` `conf:media` Prazos não definidos: finalizar a proposta, cadência de cobrança do aceite, devolução de documentos ao Credenciamento, ok da Maitê, data limite de arquivos e conteúdos do cliente, e correção de peça reprovada na expedição. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02152 · parte de UNI-00928]_
- `UNI-00951` `PEND` `pendente` A validação jurídica da política pela Maitê está pendente antes de entrar em vigor. _[DOC-022 · Cabeçalho e §9 Checklist · ITM-00605]_
  - Requisitos separados deste item: `UNI-00951.01`
- `UNI-00967` `PEND` `pendente` O agrupamento dos setores em áreas é proposta de leitura para validação; os nomes dos setores vêm dos ditados. _[DOC-030 · §01 Organograma (lead) · ITM-00674]_
- `UNI-00977` `PEND` `pendente` Compras, logística e pós-feira não foram ditados; os documentos das fases 6 e 9 são proposta de boa prática. _[DOC-032 · §09 Validar · ITM-00809]_
- `UNI-00978` `PEND` `pendencia-parcial` `conf:media` Validar PRJ-002 para apresentação de prévia e render, mantendo PRJ-001 como detalhamento para não renomear arquivos antigos. _[DOC-032 · §09 Validar · ITM-00810]_
  - **Atenção (leitura do Claude):** item 12: A decisão confirma PRJ-002 para prévia e render, mas usa DT para o detalhamento, e não PRJ-001.
- `UNI-00979` `PEND` `pendente` Confirmar a transição: até o Portal ter as telas, os modelos novos nascem em Excel ou Word com o carimbo comum. _[DOC-032 · §09 Validar · ITM-00811]_
- `UNI-00980` `PEND` `pendente` `rotina-anterior` Em 21/10, prazos e SLAs formais entre etapas e SLAs internos (memorial, detalhamento, custo) não estão definidos; só existem datas-limite de eventos. _[DOC-033 · §2 abertura e §2.8 · ITM-00828]_
- `UNI-01106` `PEND` `inferido` `conf:media` Codificação de documentos, biblioteca e locações e estrutura de pastas são propostas a partir do padrão já usado nos arquivos do Drive. _[DOC-008 · §08 Codificação · ITM-00202]_
- `UNI-01153.01` `PEND` `pendente` `conf:media` Faltam os responsáveis de Credenciamento, Expedição, Pós-feira e Marketing, e a confirmação de Anderson como assistente comercial. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02149 · parte de UNI-01153]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-01416` `PEND` `vigente` `conf:media` `rotina-anterior` [PES-00102] [PES-00016] é membro do quadro Trello com cargo não definido; "[PES-00100]" e [PES-00099] aparecem nas listas de produção, com papel a confirmar. _[DOC-033 · §10.5 Pessoas e cargos · ITM-01044]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01420` `PEND` `proposto` A maioria dos 13 fluxos de setor e o Programa de Incentivo ainda está em versão de proposta, sem aprovação final registrada. _[DOC-091 · Abertura · ITM-01581]_
- `UNI-01458` `PEND` `pendente` Faltam os nomes do CRM, do sistema financeiro e da plataforma de assinatura digital. _[DOC-091 · §11 Pendências · ITM-02148]_

## Ideias sem compromisso (1)

- `UNI-00853` `IDEIA` `proposto` `rotina-anterior` Melhoria sugerida: definir SLAs por etapa do quadro, hoje não definidos. _[DOC-033 · §7.3 item 7 · ITM-01109]_

