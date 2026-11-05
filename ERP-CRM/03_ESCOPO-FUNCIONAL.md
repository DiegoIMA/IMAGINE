---
id: ERP-ESCOPO
titulo: Escopo funcional
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Escopo funcional

Lista de consulta: módulos, telas, perfis, documentos, entidades, integrações, indicadores e requisitos técnicos. Ideias ficam ao final e não são compromisso.

## Módulos e telas (91)

### CRM · CRM e prospecção (4)

- `UNI-00002` `ESC-MODULO` `vigente` Prospecção usa 6 canais com kit de divulgação, agente de IA no WhatsApp, app na feira (fotos, cartão, gravação), roteiro de 10 perguntas e próximo contato automático. _[DOC-003 · Mapa, cartão 01 Prospecção · ITM-00070]_
  - Requisitos separados deste item: `UNI-00002.01`, `UNI-00002.02`, `UNI-00002.03`, `UNI-00002.04`, `UNI-00002.05`, `UNI-00002.06`, `UNI-00002.07`, `UNI-00002.08`, `UNI-00002.09`
- `UNI-00002.01` `ESC-MODULO` `proposto` Módulo CRM e prospecção (setores 01 e 02): leads, formulário do contato por IA no WhatsApp, vendas, prazos de recontato e publicação nos 6 canais. _[DOC-091 · §3 Módulos do ERP, CRM e prospecção · ITM-01600 · parte de UNI-00002]_
- `UNI-00002.03` `ESC-MODULO` `proposto` A seção de prospecção em feira do app é usada pelo vendedor ao visitar uma feira, com registro de cada estande visitado. _[DOC-091 · §19 Prospecção na feira pelo app · ITM-02235 · parte de UNI-00002]_
- `UNI-01468` `ESC-MODULO` `vigente` `conf:media` Área do app para fotografar partes do estande e marcar em cada foto o ponto da conversa, com categoria (crítica, objeção, desejo de melhoria, ponto positivo) e comentário por texto ou áudio. _[DOC-091 · §19 Fotos com pontos da conversa · ITM-02244]_

### PLC · Planejamento comercial (2)

- `UNI-00015` `ESC-MODULO` `proposto` Módulos do Comercial no Portal: planejamento comercial, área de organização de clientes, distribuição com aprovação, usuário por vendedor, Termômetro da Reunião e dashboard semanal. _[DOC-007 · §06 O que construir no Portal · ITM-00161]_
  - Requisitos separados deste item: `UNI-00015.01`, `UNI-00015.02`
- `UNI-00015.01` `ESC-MODULO` `proposto` Módulo Planejamento comercial (setor 02): calendário de 12 meses, perfil de feira, vendedor por feira, listas A/B/C/Pacote e metas. _[DOC-091 · §3 Módulos do ERP, Planejamento comercial · ITM-01601 · parte de UNI-00015]_

### DIS · Distribuição de clientes (1)

- `UNI-00015.02` `ESC-MODULO` `proposto` Módulo Distribuição de clientes (setor 02): classificação automática, sugestão de vendedor e aprovação do Diego. _[DOC-091 · §3 Módulos do ERP, Distribuição de clientes · ITM-01602 · parte de UNI-00015]_

### REU · Reuniões com IA (1)

- `UNI-00061.01` `ESC-MODULO` `proposto` Módulo Reuniões com IA (setores 01, 02 e 07): gravação, transcrição, checklist, Termômetro da Reunião e ata da reunião de produção. _[DOC-091 · §3 Módulos do ERP, Reuniões com IA · ITM-01603 · parte de UNI-00061]_

### PRJ · Projetos e memorial (8)

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

### BIB · Biblioteca de itens e locações (6)

- `UNI-00785` `ESC-MODULO` `vigente` Bancos de imagens e biblioteca de referências de Projetos funcionam com fila de aprovação. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00035]_
  - Requisitos separados deste item: `UNI-00785.01`, `UNI-00785.02`, `UNI-00785.03`, `UNI-00785.04`, `UNI-00785.05`
- `UNI-00785.01` `ESC-MODULO` `proposto` `conf:media` O banco de imagens é uma área no ERP e no app para salvar e organizar fotos, usada pela IA para montar as apresentações personalizadas. _[DOC-091 · §23 Banco de imagens para as apresentações · ITM-02279 · parte de UNI-00785]_
- `UNI-00785.02` `ESC-MODULO` `proposto` `conf:media` As fotos do banco de imagens são enviadas pelo app ou pelo ERP, ligadas ao projeto pelo código e integradas ao acervo do Marketing (MKT-E8). _[DOC-091 · §23 Banco de imagens para as apresentações, passo 1 · ITM-02280 · parte de UNI-00785]_
- `UNI-00790` `ESC-MODULO` `vigente` `conf:media` Vídeos de padrões são gravados pela Marília; a IA os transforma em padrão, a ficha sempre consulta a biblioteca e a lista de gravação é viva. _[DOC-002 · §35 a 42 Vídeos · ITM-00043]_
  - Requisitos separados deste item: `UNI-00790.01`, `UNI-00790.02`, `UNI-00790.03`
- `UNI-01467` `ESC-MODULO` `proposto` Catálogo de collabs na biblioteca de itens macro, com marca parceira, foto, descrição, personalização possível e prazo de produção. _[DOC-091 · §14 Projeto Collabs, Como entra no sistema · ITM-02201]_
- `UNI-01489` `ESC-MODULO` `vigente` `conf:media` Os padrões de elétrica registram como a Imagine instala LED em letra caixa, sanca, testeira, nicho, prateleira e painel, com regras de emenda, alimentação e passagem de cabos, no mesmo modelo da biblioteca da marcenaria. _[DOC-091 · §34 Elétrica, Padrões construtivos · ITM-02380]_

### APR · Apresentações por IA (1)

- `UNI-01469` `ESC-MODULO` `vigente` A apresentação institucional da Imagine (roteiro PLANDEM_COM-APR-001) fica disponível no ERP para o vendedor abrir em tela cheia na reunião, e o ERP registra a data no histórico do cliente. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02266]_

### CUS · Custos (1)

- `UNI-01423` `ESC-MODULO` `proposto` Módulo Custos (setor 04): planilha gerada por IA, planilha mãe, preços de mercado, versões e adicionais. _[DOC-091 · §3 Módulos, Custos · ITM-01605]_

### COM · Comercial, proposta e contrato (5)

- `UNI-00003` `ESC-MODULO` `vigente` Comercial usa formulário de entrada em 8 blocos, além de RD Station integrado ao WhatsApp. _[DOC-003 · Mapa, cartão 02 Comercial · ITM-00071]_
  - Requisitos separados deste item: `UNI-00003.01`, `UNI-00003.02`, `UNI-00003.03`, `UNI-00003.04`, `UNI-00003.05`, `UNI-00003.06`, `UNI-00003.07`, `UNI-00003.08`
- `UNI-00017` `ESC-MODULO` `proposto` Painel do assistente no Portal (proposta): propostas a finalizar, aguardando aceite, contratos, e-mails do fluxo comercial e demandas por setor. _[DOC-011 · §04 Painel do assistente · ITM-00280]_
  - Requisitos separados deste item: `UNI-00017.01`
- `UNI-00017.01` `ESC-MODULO` `proposto` Módulo Comercial e contratos (setores 05 e 06): proposta, cobrança do aceite, contrato no modelo padrão, assinatura digital e painel do assistente. _[DOC-091 · §3 Módulos do ERP, Comercial e contratos · ITM-01606 · parte de UNI-00017]_
- `UNI-00687.01` `ESC-MODULO` `proposto` `conf:media` A Gestão de obra tem cronograma físico-financeiro, medições, diário de obra no app com fotos, documentos (ART/RRT, alvarás, regras do condomínio) e taxa de gestão. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas, Gestão de obra · ITM-02460 · parte de UNI-00687]_
- `UNI-00784` `ESC-MODULO` `vigente` `conf:media` Formulário de entrada de demanda adotado no ERP. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00034]_

### FIN · Financeiro (2)

- `UNI-00005` `ESC-MODULO` `vigente` Financeiro e Jurídico têm previsão orçamentária única e fechamento mensal e trimestral. _[DOC-003 · Mapa, cartão 05 Financeiro e Jurídico · ITM-00074]_
  - Requisitos separados deste item: `UNI-00005.01`, `UNI-00005.02`, `UNI-00005.03`
- `UNI-01424` `ESC-MODULO` `proposto` Módulo Financeiro e compras (setor 05): comandas, ordens de compra, centro de custos, notas fiscais, repasses e comissões. _[DOC-091 · §3 Módulos, Financeiro e compras · ITM-01608]_

### PLA · Planejamento de produção (3)

- `UNI-00007` `ESC-MODULO` `vigente` Planejamento e Produção usam cronograma reverso e modo TV por setor. _[DOC-003 · Mapa, cartão 07 Planejamento e Produção · ITM-00076]_
  - Requisitos separados deste item: `UNI-00007.01`, `UNI-00007.02`
- `UNI-00007.01` `ESC-MODULO` `proposto` Módulo Planejamento de produção (setor 07): cronograma reverso, decupagem, fichas, cronograma interno e dashboard. _[DOC-091 · §3 Módulos do ERP, Planejamento de produção · ITM-01607 · parte de UNI-00007]_
- `UNI-00007.02` `ESC-MODULO` `proposto` `conf:media` Cada setor produtivo (marcenaria, serralheria, pintura, elétrica, comunicação visual, tapeçaria e demais) tem sua tela de modo TV nas duas unidades. _[DOC-091 · §17 Política de dispositivos, telas do modo TV · ITM-02334 · parte de UNI-00007]_

### CRD · Credenciamento (3)

- `UNI-00010` `ESC-MODULO` `vigente` Credenciamento tem IA que confere documentos; montagem tem checklist com foto e plantão técnico; termo de entrega com assinatura eletrônica. _[DOC-003 · Mapa, cartão 10 Credenciamento e Montagem · ITM-00079]_
- `UNI-00666` `ESC-MODULO` `proposto` Aba do Credenciamento: pasta do projeto, dados do cliente, acesso ao portal do expositor, checklist, status de cada documento, cronograma compatibilizado e pasta final. _[DOC-013 · §04 Aba do Credenciamento · ITM-00376]_
  - Requisitos separados deste item: `UNI-00666.01`, `UNI-00666.02`
- `UNI-00666.01` `ESC-MODULO` `proposto` Módulo Credenciamento (setor 08): checklist obrigatório, cronograma compatibilizado e pasta final. _[DOC-091 · §3 Módulos do ERP, Credenciamento · ITM-01609 · parte de UNI-00666]_

### PRD · Produção e app dos setores (5)

- `UNI-00018` `ESC-MODULO` `vigente` Setores produtivos: marcenaria, marcenaria de estruturas, serralheria, elétrica, comunicação visual, pintura, tapeçaria, almoxarifado, logística interna de produção e audiovisual; todos seguem o fluxo comum, com fases próprias para comunicação visual e audiovisual. _[DOC-014 · §03 Setores · ITM-00422]_
- `UNI-00664` `ESC-MODULO` `vigente` App e dashboard da produção registram: foto da peça, leitura do QR, concluído (data, hora, líder, setor), qualidade, prazo (no prazo, antecipado, atrasado em dias), novo prazo, pizza por projeto e setor, alerta vermelho e relatórios. _[DOC-012 · §06 App da produção e dashboard · ITM-00338]_
  - Requisitos separados deste item: `UNI-00664.01`
- `UNI-00668` `ESC-MODULO` `vigente` App do setor mostra fichas técnicas com código, materiais pedidos e aprovados, datas das fichas definidas pelo Planejamento, checklist com foto e ok, e alertas de material atrasado, ficha perto do prazo e pendência do cliente. _[DOC-014 · §03 App do setor · ITM-00424]_
  - Requisitos separados deste item: `UNI-00668.01`
- `UNI-00668.01` `ESC-MODULO` `proposto` App da produção (setor 09): fichas por setor, pedido de material, foto e ok, e alertas. _[DOC-091 · §3 Módulos do ERP, App da produção · ITM-01610 · parte de UNI-00668]_
- `UNI-01653` `ESC-MODULO` `vigente` Cada TV mostra só o seu setor e unidade, com projetos ordenados pela data de carregamento mais próxima e totais no topo de peças que faltam, concluídas e embaladas por projeto. _[DOC-091 · §26 Modo TV para o setor · ITM-02333]_

### CVI · Comunicação visual (2)

- `UNI-00008` `ESC-MODULO` `vigente` Comunicação visual segue as etapas CVI-E1 a E7 com ok por etapa, manual e ficha técnica; Christian cuida da demanda e da planilha de audiovisual. _[DOC-003 · Mapa, cartão 08 CV e Audiovisual · ITM-00077]_
- `UNI-00788` `ESC-MODULO` `vigente` Comunicação visual tem ok por etapa, modo TV e ficha técnica própria. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00038]_
  - Requisitos separados deste item: `UNI-00788.01`, `UNI-00788.02`

### DCO · Decoração (1)

- `UNI-00756.01` `ESC-MODULO` `proposto` O setor de Decoração é um novo setor produtivo para itens artesanais e decorativos, principalmente em projetos de Natal e cenografia temática. _[DOC-091 · §37 Setor de Decoração · ITM-02407 · parte de UNI-00756]_

### D3F · Impressão 3D (2)

- `UNI-00684.01` `ESC-MODULO` `proposto` Estúdio 3D Farm oferece peças customizadas com a marca do cliente: logos 3D, displays, troféus, expositores, decoração, peças de showroom e PDV, brindes e miniaturas. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 1 Estúdio 3D Farm, o que oferecer · ITM-02205 · parte de UNI-00684]_
- `UNI-00755.01` `ESC-MODULO` `proposto` O setor de Impressão 3D é um novo setor produtivo com o mesmo fluxo dos demais: código único, ficha técnica, foto, ok e checklist até a expedição e a montagem. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm) · ITM-02396 · parte de UNI-00755]_

### TIN · Tecnologia e experiências interativas (3)

- `UNI-00013` `ESC-MODULO` `vigente` Inovação e Tecnologia inclui Estúdio 3D Farm, leads, contagem de público, mapa de calor e fornecedores em cotação. _[DOC-003 · Mapa, rodapé Inovação e Tecnologia · ITM-00082]_
  - Requisitos separados deste item: `UNI-00013.01`, `UNI-00013.02`, `UNI-00013.03`, `UNI-00013.04`
- `UNI-00013.01` `ESC-MODULO` `proposto` Nova divisão de Inovação e Tecnologia, em duas frentes (Estúdio 3D Farm e tecnologia de performance do estande), oferecida ao cliente que já compra estandes, feiras e eventos. _[DOC-091 · §15 Divisão de Inovação e Tecnologia Imagine · ITM-02204 · parte de UNI-00013]_
- `UNI-00013.02` `ESC-MODULO` `proposto` Frente 2, tecnologia de performance: painel no Portal ao fim da feira com captação de leads por QR code do crachá, contagem de público, mapa de calor com IA e fluxo no pavilhão. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 tecnologia de performance · ITM-02208 · parte de UNI-00013]_

### EXP · Expedição e qualidade (3)

- `UNI-00009` `ESC-MODULO` `vigente` `conf:media` Expedição usa etiqueta final e conferência por QR; logística controla frete, escala, deslocamento, km, manutenção, lavagem e verba de viagem antifraude. _[DOC-003 · Mapa, cartão 09 Expedição, Logística e Frota · ITM-00078]_
  - Requisitos separados deste item: `UNI-00009.01`, `UNI-00009.02`, `UNI-00009.03`, `UNI-00009.04`, `UNI-00009.05`, `UNI-00009.06`, `UNI-00009.07`, `UNI-00009.08`, `UNI-00009.09`, `UNI-00009.10`, `UNI-00009.11`, `UNI-00009.12`, `UNI-00009.13`
- `UNI-00672.01` `ESC-MODULO` `a-conferir` `conf:media` Módulo Expedição e rastreio (setor 12): etiqueta com QR code, leituras e comparação carregado × previsto. _[DOC-091 · §3 Módulos do ERP, Expedição e rastreio (setor 12) · ITM-01612 · parte de UNI-00672]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`
- `UNI-00922.01` `ESC-MODULO` `a-conferir` `conf:baixa` O documento atual do setor 12 Controle de qualidade (PLANDEM_FLX-SET12, prefixo EXP) inclui a Expedição. _[DOC-091 · Respostas do Diego, Setores · ITM-01586 · parte de UNI-00922]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`

### LOG · Logística e frota (1)

- `UNI-01438` `ESC-MODULO` `proposto` Frota: controle de quilometragem e manutenção dos veículos da Imagine, por unidade. _[DOC-091 · §5 Frota · ITM-01784]_

### MON · Montagem (2)

- `UNI-00006` `ESC-MODULO` `vigente` Locações têm devolução conferida com foto. _[DOC-003 · Mapa, cartão 06 Compras e Locações · ITM-00075]_
  - Requisitos separados deste item: `UNI-00006.01`
- `UNI-01425` `ESC-MODULO` `proposto` App da montagem (setor 13): acesso por categoria, documentos, checklist com foto e chamados. _[DOC-091 · §3 Módulos, App da montagem · ITM-01613]_

### POS · Pós-feira (3)

- `UNI-00012` `ESC-MODULO` `vigente` Pós-feira e marketing: pesquisa NPS, plano 5W2H, indicação em 3 níveis, collabs, kits VIP e campanhas mensais no WhatsApp. _[DOC-003 · Mapa, cartão 12 Pós-feira, Marketing · ITM-00081]_
  - Requisitos separados deste item: `UNI-00012.01`, `UNI-00012.02`, `UNI-00012.03`, `UNI-00012.04`, `UNI-00012.05`, `UNI-00012.06`
- `UNI-00012.01` `ESC-MODULO` `proposto` Módulo Pós-feira (setor 14): dossiê, pesquisa NPS/CSAT/CES, painel e plano de ação 5W2H. _[DOC-091 · §3 Módulos do ERP, Pós-feira · ITM-01614 · parte de UNI-00012]_
- `UNI-00019` `ESC-MODULO` `proposto` Gerenciador de pesquisas com IA: envio e lembretes, consolidação, leitura de textos por tema e sentimento, alertas, comparativos, sugestão de ações e histórico do cliente para o vendedor. _[DOC-017 · §05 Gerenciador de pesquisas · ITM-00526]_
  - Requisitos separados deste item: `UNI-00019.01`

### MKT · Marketing e acervo (2)

- `UNI-00120.01` `ESC-MODULO` `proposto` Acervo de marketing (setor 15): pastas por projeto, pedido de acesso, termo de uso e expiração. _[DOC-091 · §3 Módulos do ERP, Acervo de marketing · ITM-01615 · parte de UNI-00120]_
- `UNI-01096` `ESC-MODULO` `inferido` `conf:media` A aba de montagem de peças e a publicação automática fazem parte do Portal em desenvolvimento e estão em proposta. _[DOC-005 · §05, PRO-E4 e PRO-E6 · ITM-00124]_

### CLI · Portal do cliente (11)

- `UNI-00011` `ESC-MODULO` `vigente` Portal do cliente tem linha do tempo, produção em tempo real, cortesias e guia do estande. _[DOC-003 · Mapa, cartão 11 Portal do cliente · ITM-00080]_
  - Requisitos separados deste item: `UNI-00011.01`, `UNI-00011.02`, `UNI-00011.03`, `UNI-00011.04`, `UNI-00011.05`
- `UNI-00011.01` `ESC-MODULO` `vigente` O cliente acompanha o projeto inteiro pelo Portal em seis momentos, todos aprovados pelo Diego. _[DOC-091 · §12 Experiência do cliente no Portal, seis momentos aprovados pelo Diego · ITM-02156 · parte de UNI-00011]_
- `UNI-00011.02` `ESC-MODULO` `vigente` Portal, início: painel de boas-vindas com linha do tempo do briefing à pós-feira e quem é quem (vendedor, arquiteto e assistente, com foto e contato). _[DOC-091 · §12 Experiência do cliente no Portal, momento 1 Início · ITM-02157 · parte de UNI-00011]_
- `UNI-00011.03` `ESC-MODULO` `vigente` Portal, produção: percentual pronto do estande em tempo real e fotos das peças saindo da fábrica, usando as fotos já tiradas no app. _[DOC-091 · §12 Experiência do cliente no Portal, momento 3 Produção · ITM-02159 · parte de UNI-00011]_
- `UNI-00011.04` `ESC-MODULO` `vigente` Portal, na feira: guia do estande com contatos do plantão, horários de montagem e desmontagem e manual de uso dos equipamentos. _[DOC-091 · §12 Experiência do cliente no Portal, momento 5 Na feira · ITM-02161 · parte de UNI-00011]_
- `UNI-00673` `ESC-MODULO` `vigente` Aba do cliente: imagens do stand, checklist de entrega, login, ressalvas, termo de aceite e plantão técnico; liberada só durante a montagem e a feira. _[DOC-016 · §05 Aba do cliente · ITM-00496]_
  - Requisitos separados deste item: `UNI-00673.01`
- `UNI-00673.01` `ESC-MODULO` `proposto` Aba do cliente (setores 09, 13 e 15): arquivos de comunicação visual, conteúdos audiovisuais, checklist de entrega, termo de aceite, plantão técnico e pontos de fidelidade. _[DOC-091 · §3 Módulos do ERP, Aba do cliente · ITM-01611 · parte de UNI-00673]_
- `UNI-00782` `ESC-MODULO` `vigente` `conf:media` Portal do cliente: validação de amostras em 2 dias, formulário pré-evento em 15 dias, congelamento 10 dias antes e termo de entrega eletrônico. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00031]_
  - Requisitos separados deste item: `UNI-00782.01`, `UNI-00782.02`, `UNI-00782.03`, `UNI-00782.04`, `UNI-00782.05`, `UNI-00782.06`, `UNI-00782.07`
- `UNI-01459` `ESC-MODULO` `vigente` Portal, projeto e proposta: o cliente vê renders 3D, comenta cada imagem, compara versões lado a lado e recebe resumo do que está incluso e do que é adicional. _[DOC-091 · §12 Experiência do cliente, Projeto e proposta · ITM-02158]_
- `UNI-01460` `ESC-MODULO` `vigente` Portal, antes da feira: checklist do cliente com prazos em contagem regressiva (artes, vídeos, dados de credenciamento) e lembretes automáticos no WhatsApp. _[DOC-091 · §12 Experiência do cliente, Antes da feira · ITM-02160]_
- `UNI-01461` `ESC-MODULO` `vigente` Portal, depois da feira: relatório final com fotos profissionais, galeria do Marketing e convite para reservar a próxima edição. _[DOC-091 · §12 Experiência do cliente, Depois da feira · ITM-02162]_

### FID · Indicação e fidelidade (4)

- `UNI-00012.02` `ESC-MODULO` `proposto` Programa de indicação: o cliente indica empresas e ganha upgrade no próximo estande, em três níveis com selo. _[DOC-091 · §13 Programa de indicação com recompensa · ITM-02183 · parte de UNI-00012]_
- `UNI-01464` `ESC-MODULO` `vigente` Selo do nível: digital no Portal, plaquinha discreta no estande se o cliente quiser, e nível visível ao vendedor no CRM. _[DOC-091 · §13 Programa de indicação, Selo · ITM-02192]_
- `UNI-01465` `ESC-MODULO` `vigente` Ambiente do programa no Portal: página em formato de apresentação com regulamento, passo a passo, três níveis e selos, nível atual e histórico de indicações do cliente. _[DOC-091 · §13 Programa de indicação, Ambiente · ITM-02193]_
- `UNI-01466` `ESC-MODULO` `vigente` Biblioteca de fidelização: portfólio de itens de upgrade na biblioteca macro, com foto, descrição e nível mínimo; itens ainda a definir. _[DOC-091 · §13 Programa de indicação, Biblioteca de fidelização · ITM-02194]_

### INC · Incentivo e desempenho (1)

- `UNI-00315.01` `ESC-MODULO` `proposto` Módulo Incentivo (PRG): medição dos movimentos, placar, gatilho e pagamento. _[DOC-091 · §3 Módulos do ERP, Incentivo · ITM-01616 · parte de UNI-00315]_

### EVT · Produção de evento (3)

- `UNI-00685.01` `ESC-MODULO` `proposto` O módulo Produção de Evento atende projetos em que o cliente contrata a Imagine para a gestão do evento inteiro, misturando serviços da Imagine e de outras empresas sob gerenciamento da Imagine. _[DOC-091 · §40 Produção de Evento, gestão completa · ITM-02430 · parte de UNI-00685]_
- `UNI-00791` `ESC-MODULO` `vigente` O Portal mostra o cronograma e o status dos fornecedores na produção de evento. _[DOC-002 · §43 Produção de evento · ITM-00051]_
- `UNI-01571` `ESC-MODULO` `vigente` A categoria Produção de evento abre o módulo com cronograma mestre, projetos complementares (elétrico, PPCI, estrutural), documentos e licenças, fornecedores gerenciados e taxa de gestão. _[DOC-091 · §41 Categorias de serviço, Produção de evento · ITM-02449]_

### TRP · Transversal (11)

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

## Perfis e responsáveis (92)

### CRM · CRM e prospecção (3)

- `UNI-00028` `ESC-PERFIL` `proposto` Prospecção ativa parte da planta da feira, identifica decisores, faz contato e abre o lead no CRM; equipe de 2 pessoas mais representantes. _[DOC-030 · §05 Setores, card 01 · ITM-00675]_
- `UNI-01401` `ESC-PERFIL` `vigente` O setor de Prospecção tem 2 pessoas, além dos representantes, que conduzem as etapas PRO-E7 a PRO-E15. _[DOC-006 · §6 Pessoas e responsáveis · ITM-00130]_
- `UNI-01411` `ESC-PERFIL` `vigente` `rotina-anterior` Márcia [PES-00013]: SDR comercial (EQP-013). _[DOC-033 · §5.6.2 EQP-013 · ITM-01039]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

### PLC · Planejamento comercial (1)

- `UNI-00033` `ESC-PERFIL` `proposto` Planejamento faz o cronograma macro reverso e a timeline do cliente, com prazos para Projetos, Produção e Credenciamento; responsável a confirmar. _[DOC-030 · §05 Setores, card 07 · ITM-00681]_

### PRJ · Projetos e memorial (7)

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

### BIB · Biblioteca de itens e locações (2)

- `UNI-01395` `ESC-PERFIL` `vigente` Locações de móveis e demais itens são de Érika no RS e Samanta em SP; locações de audiovisual são de Christian nas duas unidades. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00017]_
  - Requisitos separados deste item: `UNI-01395.01`, `UNI-01395.02`
- `UNI-01395.01` `ESC-PERFIL` `proposto` `conf:media` Locações é setor próprio, no mesmo modelo de Compras; responsáveis Érika no RS e Samanta em SP. _[DOC-091 · §18 Locações · ITM-02226 · parte de UNI-01395]_

### CUS · Custos (2)

- `UNI-00022` `ESC-PERFIL` `proposto` Carol (Custos), Maitê e Diego (preço de venda) e Anderson (proposta) têm usuário no Portal, com só os itens do seu setor. _[DOC-009 · §03 Usuários · ITM-00231]_
  - Requisitos separados deste item: `UNI-00022.01`
- `UNI-00022.01` `ESC-PERFIL` `proposto` Perfil Custos (Carol): área restrita de custos. _[DOC-091 · §8 Perfis de acesso, Custos · ITM-02117 · parte de UNI-00022]_

### COM · Comercial, proposta e contrato (11)

- `UNI-00029` `ESC-PERFIL` `proposto` Comercial (representantes) atende o lead, libera o portal, valida o briefing, conduz reuniões gravadas, valida o cartão da demanda e pede ajustes e alterações pelo sistema. _[DOC-030 · §05 Setores, card 02 · ITM-00676]_
- `UNI-00032` `ESC-PERFIL` `proposto` Assistente comercial elabora a proposta, valida com o vendedor, ajusta e reenvia pelo sistema, mantém a régua de 7 dias, o contrato e a entrada da demanda aprovada. _[DOC-030 · §05 Setores, card 06 · ITM-00680]_
- `UNI-01390` `ESC-PERFIL` `vigente` `conf:media` Anderson (Anderson [PES-00003]) atua como assistente comercial, ainda a confirmar. _[DOC-001 · §4 Pessoas e papéis · ITM-00007]_
  - Requisitos separados deste item: `UNI-01390.01`
- `UNI-01390.01` `ESC-PERFIL` `proposto` Perfil Assistente comercial (Anderson): propostas, aceites, contratos e painel de demandas. _[DOC-091 · §8 Perfis de acesso, Assistente comercial · ITM-02115 · parte de UNI-01390]_
- `UNI-01391.01` `ESC-PERFIL` `vigente` `conf:media` A Fran atende como vendedora (recebe clientes e entra na meta da equipe), é assistente do Diego e também projetista. _[DOC-091 · Respostas do Diego, Fran · ITM-02049 · parte de UNI-01391]_
- `UNI-01402` `ESC-PERFIL` `vigente` Os quatro vendedores, em home office, são Simone, Luca, Rita e Fran. _[DOC-007 · §08 Respondido em 28/10 · ITM-00134]_
  - Requisitos separados deste item: `UNI-01402.01`
- `UNI-01402.01` `ESC-PERFIL` `vigente` O atendimento comercial é feito por Simone, Luca, Rita e Fran (home office); Fran atende como vendedora, com meta e clientes. _[DOC-091 · §5 Comercial, atendimento comercial; Respostas do Diego, Fran · ITM-01678 · parte de UNI-01402]_
- `UNI-01403` `ESC-PERFIL` `proposto` O assistente comercial apoia Diego (comercial, planejamento e operação) e Maitê (jurídico e financeiro) no dia a dia operacional. _[DOC-011 · §03 Papel e notificações · ITM-00264]_
- `UNI-01405` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` Francine [PES-00004]: atendimento (EQP-002). _[DOC-033 · §5.6.2 EQP-002 · ITM-01028]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01407` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` Christian [PES-00009]: atendimento técnico (EQP-008), que divide a caixa compartilhada de atendimento com Anderson. _[DOC-033 · §5.6.2 EQP-008 · ITM-01034]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01623` `ESC-PERFIL` `vigente` O Comercial não é dividido por unidade: Simone, Fran, Luca e Rita vendem para clientes produzidos em qualquer unidade, definida só no PLA-E1. _[DOC-091 · §Respostas Equipe de São Paulo · ITM-02063]_

### FIN · Financeiro (3)

- `UNI-00031` `ESC-PERFIL` `substituido-parcial` Financeiro/Jurídico (CFO) fecha o custo completo e o preço de venda, aprova alterações da proposta (G1), valida o contrato e controla recebimentos. _[DOC-030 · §05 Setores, card 05 · ITM-00679]_
  - **Continua valendo:** Aprova alterações da proposta, valida o contrato e controla recebimentos.
  - **Mudou:** A IA propõe logística e operação e gera o preço depois da validação (item-19); o preço de venda só Maitê e Diego aprovam (item-1).
- `UNI-00077.02` `ESC-PERFIL` `vigente` `conf:media` Modelo de contrato (FIN-E2): criado e revisado pelo jurídico interno, a Maitê. _[DOC-091 · Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-02051 · parte de UNI-00077]_
- `UNI-01604` `ESC-PERFIL` `proposto` Solicitantes de verba de viagem: Eduardo e Leandro no Rio Grande do Sul; Rômulo e o assistente do Rômulo em São Paulo, cada um na sua unidade. _[DOC-091 · §5 Frota, FRT-E6 · ITM-01796]_

### CMP · Compras (3)

- `UNI-01394.01` `ESC-PERFIL` `vigente` Compras é setor próprio, separado do Financeiro, com dois fluxos simultâneos por unidade: Rio Grande do Sul com Osmar e São Paulo com Samanta; a Maitê (Financeiro) atende as duas. _[DOC-091 · §5 Compras (setor próprio); Respostas do Diego, Compras cotação (FIN-E7) · ITM-01750 · parte de UNI-01394]_
- `UNI-01394.02` `ESC-PERFIL` `vigente` Compras vira setor próprio, com Osmar (RS) e Samanta (SP) em fluxos separados, cada um com seu cadastro de fornecedores e suas ordens de compra. _[DOC-091 · Respostas do Diego, Compras cotação (FIN-E7) · ITM-02075 · parte de UNI-01394]_
- `UNI-01394.03` `ESC-PERFIL` `proposto` Perfil Compras (Osmar): ordens de compra e notas. _[DOC-091 · §8 Perfis de acesso, Compras · ITM-02121 · parte de UNI-01394]_

### PLA · Planejamento de produção (7)

- `UNI-00023` `ESC-PERFIL` `vigente` Composição do processo: Érika conduz cronograma e reunião; Eduardo prevê tempos e responde pela produção geral com Marília, que gera fichas por IA; Suellen alimenta o relatório de conformidade. _[DOC-012 · §07 Composição no Portal · ITM-00342]_
  - Requisitos separados deste item: `UNI-00023.01`, `UNI-00023.02`
- `UNI-00023.01` `ESC-PERFIL` `proposto` Perfil Produção geral (Eduardo, Marília): fichas, tempos, erros e refação. _[DOC-091 · §8 Perfis de acesso, Produção geral · ITM-02119 · parte de UNI-00023]_
- `UNI-00035` `ESC-PERFIL` `proposto` Planejamento da produção (11) emite fichas técnicas, checklist, reunião e dashboard; setores produtivos (Pintura, Serralheria, Elétrica, Marcenaria, Tapeçaria, Comunicação visual) seguem o mesmo ciclo com foto e ok. _[DOC-030 · §05 Setores, cards 11 e 09–10 · ITM-00683]_
- `UNI-01392` `ESC-PERFIL` `vigente` Planejamento tem Érika como responsável no RS e Samanta em São Paulo. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00014]_
  - Requisitos separados deste item: `UNI-01392.01`, `UNI-01392.02`
- `UNI-01392.01` `ESC-PERFIL` `vigente` Equipe de São Paulo, 11 pessoas: Planejamento = Samanta; Produção = Rômulo e Samanta; logística de frete e transporte = Samanta; coordenador geral de montagem = Rômulo. _[DOC-091 · Respostas do Diego, Equipe de São Paulo (11 pessoas) · ITM-02059 · parte de UNI-01392]_
- `UNI-01392.02` `ESC-PERFIL` `proposto` Perfil Planejamento (Érika): cronogramas, fichas e acessos da montagem. _[DOC-091 · §8 Perfis de acesso, Planejamento · ITM-02118 · parte de UNI-01392]_
- `UNI-01619` `ESC-PERFIL` `vigente` `conf:media` A Érika cria a planilha de horas planejadas de cada projeto. _[DOC-091 · §Respostas Regras da hora · ITM-02041]_

### CRD · Credenciamento (1)

- `UNI-00034` `ESC-PERFIL` `proposto` Credenciamento cuida do portal da feira, aprovação do projeto pelo evento, RRTs, equipe, hotéis, frete e kit de credenciais, com engenheiro e arquiteto. _[DOC-030 · §05 Setores, card 08 · ITM-00682]_

### PRD · Produção e app dos setores (11)

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

### CVI · Comunicação visual (2)

- `UNI-01396` `ESC-PERFIL` `vigente` Comunicação visual tem Carol e Adair no RS; em SP o responsável está a definir; criação gráfica é do Beto nas duas unidades. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00018]_
  - Requisitos separados deste item: `UNI-01396.01`
- `UNI-01396.01` `ESC-PERFIL` `proposto` No Rio Grande do Sul, Carol solicita e controla o planejamento das peças de comunicação visual e Adair, chefe do setor, executa e dá o ok de cada etapa. _[DOC-091 · §26 Comunicação visual, controle por etapa no ERP, responsáveis · ITM-02323 · parte de UNI-01396]_

### AUD · Audiovisual (2)

- `UNI-00747.01` `ESC-PERFIL` `vigente` Audiovisual técnico e operação: o responsável é o Christian, que planeja os projetos do Rio Grande do Sul e de São Paulo; a montagem de AV é sempre de equipe terceirizada. _[DOC-091 · Respostas do Diego, Audiovisual técnico e operação · ITM-01956 · parte de UNI-00747]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-01412` `ESC-PERFIL` `vigente` `rotina-anterior` Walter [PES-00014]: produtor técnico audiovisual (EQP-014). _[DOC-033 · §5.6.2 EQP-014 · ITM-01040]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

### GRA · Criação gráfica (2)

- `UNI-00756.02` `ESC-PERFIL` `proposto` O responsável pela Criação Gráfica é Beto, que atende as solicitações da Carol (comunicação visual) com o mesmo fluxo dos demais setores. _[DOC-091 · §38 Setor de Criação Gráfica · ITM-02415 · parte de UNI-00756]_
- `UNI-01413` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` Betão: diretor de arte (EQP-015), com dados incompletos. _[DOC-033 · §5.6.2 EQP-015 · ITM-01041]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

### DCO · Decoração (1)

- `UNI-00756` `ESC-PERFIL` `vigente` `conf:media` Decoração é do André (itens artesanais de Natal e temáticos); criação gráfica é do Beto (facas, preparação e correção de arquivos). _[DOC-002 · §35 a 42 Decoração e criação gráfica · ITM-00045]_
  - Requisitos separados deste item: `UNI-00756.01`, `UNI-00756.02`

### D3F · Impressão 3D (2)

- `UNI-00755` `ESC-PERFIL` `vigente` Impressão 3D fica com o Pedro, usa impressoras Bambu Lab e lê o arquivo fatiado. _[DOC-002 · §35 a 42 Impressão 3D · ITM-00044]_
  - Requisitos separados deste item: `UNI-00755.01`, `UNI-00755.02`, `UNI-00755.03`, `UNI-00755.04`
- `UNI-00755.02` `ESC-PERFIL` `proposto` O responsável pelo setor de Impressão 3D é Pedro, e o equipamento são impressoras Bambu Lab com o software Bambu Studio. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm), responsável e equipamento · ITM-02402 · parte de UNI-00755]_

### TIN · Tecnologia e experiências interativas (3)

- `UNI-00757` `ESC-PERFIL` `vigente` Tecnologia é do Bruno: experiências interativas, assistente técnico da IA e passo a passo PLANDEM_TEC-001. _[DOC-002 · §35 a 42 Tecnologia · ITM-00046]_
  - Requisitos separados deste item: `UNI-00757.01`, `UNI-00757.02`, `UNI-00757.03`
- `UNI-00757.01` `ESC-PERFIL` `proposto` O responsável pelo setor de Tecnologia e Experiências Interativas é Bruno, setor complementar com demandas paralelas no mesmo fluxo de planejamento, integrado à Divisão de Inovação e Tecnologia. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas · ITM-02421 · parte de UNI-00757]_
- `UNI-01406` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` Bruno [PES-00007]: Growth Solutions (EQP-006). _[DOC-033 · §5.6.2 EQP-006 · ITM-01032]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

### ALM · Almoxarifado (1)

- `UNI-01399.01` `ESC-PERFIL` `proposto` Responsáveis pelo Almoxarifado: Rio Grande do Sul, seu Marcos; São Paulo, assistente do Rômulo (a contratar); os dois usam o app. _[DOC-091 · §5 Almoxarifado, responsáveis · ITM-01774 · parte de UNI-01399]_

### EXP · Expedição e qualidade (6)

- `UNI-00023.02` `ESC-PERFIL` `proposto` `conf:media` Perfil Qualidade (Suellen): relatório de conformidade. _[DOC-091 · §8 Perfis de acesso, Qualidade · ITM-02120 · parte de UNI-00023]_
- `UNI-00024` `ESC-PERFIL` `a-conferir` Expedição e logística é um novo setor, a mapear, que recebe as peças prontas pelo código e cuida do carregamento; Atendimento comercial envia o manual da feira e o relatório quando pedido. _[DOC-012 · §07 Composição no Portal · ITM-00344]_
  - **Atenção (leitura do Claude):** item 22: Trata Expedição e logística como um setor só.
- `UNI-00025` `ESC-PERFIL` `proposto` Composição: Expedição recebe, verifica, embala, etiqueta e controla o carregamento; Eduardo e Marília decidem refazer peças reprovadas; Érika acompanha o status; montadores usam o mesmo app. _[DOC-015 · §05 Composição no Portal · ITM-00456]_
- `UNI-00036` `ESC-PERFIL` `a-conferir` Expedição e qualidade confere, embala, etiqueta e fotografa as peças e controla o estoque de embalagens. _[DOC-030 · §05 Setores, card 12 · ITM-00684]_
  - **Atenção (leitura do Claude):** item 22: Trata Expedição e qualidade juntas.
- `UNI-01154.01` `ESC-PERFIL` `proposto` `conf:media` Perfil Credenciamento e Expedição (Alexandra no Credenciamento, Suellen na Expedição): acesso à aba do setor. _[DOC-091 · §8 Perfis de acesso, Credenciamento e Expedição · ITM-02123 · parte de UNI-01154]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-01399` `ESC-PERFIL` `vigente` Expedição e qualidade: Suellen no RS e assistente do Rômulo (a contratar) em SP. Almoxarifado: Seu Marcos no RS e assistente do Rômulo em SP. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00021]_
  - Requisitos separados deste item: `UNI-01399.01`

### LOG · Logística e frota (2)

- `UNI-01410` `ESC-PERFIL` `vigente` `rotina-anterior` Leandro [PES-00012]: logística (EQP-011). _[DOC-033 · §5.6.2 EQP-011 · ITM-01037]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-01603` `ESC-PERFIL` `proposto` `conf:media` Lavagem: no Rio Grande do Sul o Leandro solicita e o seu Marcos e o Eduardo conferem; em São Paulo o assistente do Rômulo solicita e o Rômulo confere. _[DOC-091 · §5 Frota, FRT-E5 · ITM-01794]_

### MON · Montagem (4)

- `UNI-00037` `ESC-PERFIL` `proposto` Montagem (montador responsável) carrega, descarrega e monta na sequência, com foto por etapa e registro de previsto x realizado. _[DOC-030 · §05 Setores, card 13 · ITM-00685]_
- `UNI-00118.02` `ESC-PERFIL` `proposto` Perfil Equipe de montagem, por feira (encarregado, responsável, produtor, coordenador, plantonista): acesso ao app da montagem. _[DOC-091 · §8 Perfis de acesso, Equipe de montagem · ITM-02124 · parte de UNI-00118]_
- `UNI-01400` `ESC-PERFIL` `vigente` Montagem é feita pela equipe RS no Rio Grande do Sul e por Rômulo mais um produtor (a contratar) em São Paulo. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00022]_
- `UNI-01622` `ESC-PERFIL` `vigente` Montagem em São Paulo: produtor de montagem a contratar marca o checklist com foto e atende o plantão no app; montadores e plantonista são terceirizados, sem acesso ao app. _[DOC-091 · §Respostas Equipe de São Paulo · ITM-02062]_

### MKT · Marketing e acervo (2)

- `UNI-00747.02` `ESC-PERFIL` `substituido-parcial` Perfil Marketing (Érika): acervo e relacionamento. _[DOC-091 · §8 Perfis de acesso, Marketing · ITM-02125 · parte de UNI-00747]_
  - **Continua valendo:** O perfil Marketing continua com acesso ao acervo e ao relacionamento.
  - **Mudou:** Diego define o responsável do Marketing depois; Érika não está mais fixada no perfil.
- `UNI-00747.03` `ESC-PERFIL` `substituido-parcial` A Érika (Marketing) é responsável pela curadoria e pelas autorizações do banco de imagens. _[DOC-091 · §23 Banco de imagens para as apresentações, passo 6 · ITM-02285 · parte de UNI-00747]_
  - **Continua valendo:** O Marketing cuida da curadoria e das autorizações do banco de imagens.
  - **Mudou:** Diego define o responsável do Marketing depois; Érika não está mais fixada na função.

### CLI · Portal do cliente (1)

- `UNI-00119.01` `ESC-PERFIL` `proposto` Perfil Cliente, por projeto: acesso à aba do cliente. _[DOC-091 · §8 Perfis de acesso, Cliente · ITM-02126 · parte de UNI-00119]_

### TRP · Transversal (13)

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

## Documentos gerados (60)

### CRM · CRM e prospecção (1)

- `UNI-00691` `ESC-DOC` `proposto` ENT-001 Ficha de entrada: origem (CRM ou WhatsApp), cliente, evento, local, data do evento, prazo pedido, anexos, triagem E20, decisão G2 com custo de urgência e prazo limite de aceite conferido (E23). _[DOC-032 · §06 ENT-001 · ITM-00792]_

### PRJ · Projetos e memorial (13)

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

### CUS · Custos (2)

- `UNI-00041` `ESC-DOC` `proposto` Planilha de custos do projeto é uma por projeto, com versões V01, V02, aberta pelo Portal na pasta de Custos; a planilha mãe e a base de preços de mercado ficam no Portal. _[DOC-009 · §03 Planilha de custos do projeto · ITM-00232]_
- `UNI-00698` `ESC-DOC` `a-conferir` REL-002 Fechamento do job: por IT orçado, comprado e horas reais; OC/OS fora do orçado e motivo; recebido x previsto; margem prevista x real; lições para a biblioteca de custos. _[DOC-032 · §06 REL-002 · ITM-00800]_
  - **Atenção (leitura do Claude):** item 9: Usa IT como referência do item.

### COM · Comercial, proposta e contrato (6)

- `UNI-00049` `ESC-DOC` `proposto` Orçamento, proposta e contrato: ORC-001 custos, ORC-002 preço de venda, PRP-001 proposta, CTR-001 contrato e FIN-001 cronograma de recebimentos. _[DOC-032 · §04 Fase 4 · ITM-00777]_
- `UNI-00058` `ESC-DOC` `proposto` Modelo de proposta de estandes, cenografia e locação de mobiliário com simulador de crédito de CBS/IBS para o cliente; itens: projeto e montagem, cenografia e locação (bem móvel). _[DOC-036 · Cabeçalho e §O que entregamos · ITM-01198]_
- `UNI-00692` `ESC-DOC` `substituido-parcial` ALT-NNN Pedido de alteração: tipo (projeto E2 ou proposta E9), origem, IT afetados, o que muda, impacto em prazo e custo, aprovação G1, contraproposta e documentos com nova versão. _[DOC-032 · §06 ALT-NNN · ITM-00794]_
  - **Continua valendo:** Os campos do pedido de alteração continuam.
  - **Mudou:** Fica sem a sigla ALT (item-12); o significado de G1 está em aberto.
- `UNI-00693` `ESC-DOC` `a-conferir` PRP-001 Proposta: escopo por IT com renders, valor total e por bloco sem custo aberto, condições dentro da alçada, validade de 7 dias, prazo limite de aceite, exclusões e aceite eletrônico. _[DOC-032 · §06 PRP-001 · ITM-00795]_
  - **Atenção (leitura do Claude):** item 9: Usa IT como referência do item.
  - Requisitos separados deste item: `UNI-00693.01`
- `UNI-00693.01` `ESC-DOC` `proposto` Proposta e contrato: versão, valores, condições, status do aceite e assinatura. _[DOC-091 · §4 Entidades e dados principais, Proposta e contrato · ITM-01628 · parte de UNI-00693]_
- `UNI-00730` `ESC-DOC` `substituido-parcial` Estrutura: cabeçalho com cliente, evento e validade (15 dias), tabela de itens, simulação com cartões por regime e texto automático para o cliente, premissas e bloco interno removido antes do envio. _[DOC-036 · Estrutura do modelo · ITM-01204]_
  - **Continua valendo:** A estrutura da proposta continua.
  - **Mudou:** A validade é de 7 dias, não 15 (item-7).

### CMP · Compras (3)

- `UNI-00051` `ESC-DOC` `proposto` Compras (setor ainda a ditar): SOL solicitação, COT mapa de cotação, OC ordem de compra, OS ordem de serviço a terceiros e REC recebimento conferido. _[DOC-032 · §04 Fase 6 Compras · ITM-00779]_
- `UNI-00690` `ESC-DOC` `substituido-parcial` Campos da OC: cabeçalho (nº, versão, comprador, job), fornecedor (código, CNPJ, pagamento, frete CIF/FOB), itens (MAT, IT, quantidade, preço, entrega), entrega, controle (orçado x OC) e fechamento (REC, NF, pagamentos). _[DOC-032 · §05 Campos mínimos da OC · ITM-00784]_
  - **Continua valendo:** Os campos da ordem de compra continuam.
  - **Mudou:** O controle de orçado contra comprado não aparece para o comprador (ponto-2).
  - Requisitos separados deste item: `UNI-00690.01`
- `UNI-00690.01` `ESC-DOC` `proposto` `conf:media` Ordem de compra: itens, fornecedor, prazo, forma de pagamento, IBS/CBS, nota fiscal e situação. _[DOC-091 · §4 Entidades e dados principais, Ordem de compra (FIN-E7 a E11) · ITM-01630 · parte de UNI-00690]_

### PLA · Planejamento de produção (3)

- `UNI-00050` `ESC-DOC` `substituido-parcial` Planejamento e documentação: CRO-002 cronograma macro e timeline do cliente, CRD-001 dossiê de credenciamento, PRJ-001 detalhamento, FIC fichas técnicas por setor e ATA-002 reunião de produção. _[DOC-032 · §04 Fase 5 · ITM-00778]_
  - **Continua valendo:** Existem cronograma macro, timeline do cliente, dossiê de credenciamento, detalhamento, fichas por setor e ata da reunião de produção.
  - **Mudou:** Detalhamento usa DT e ficha técnica usa FT (item-12).
- `UNI-00694` `ESC-DOC` `proposto` CRO-001/002 Cronograma reverso: data do evento como âncora, marcos (proposta, aceite, artes, compras, produção, amostras, carga, montagem), dono e data, folga e alerta, versão do cliente sem datas internas. _[DOC-032 · §06 CRO-001/002 · ITM-00796]_
- `UNI-00695` `ESC-DOC` `substituido-parcial` FIC-NNN Ficha técnica de produção: setor, IT atendidos, desenho do PRJ-001, MAT e quantidades, horas previstas, data de entrega, critério de qualidade, foto e ok por IT e horas reais. _[DOC-032 · §06 FIC-NNN · ITM-00797]_
  - **Continua valendo:** Os campos da ficha técnica de produção continuam.
  - **Mudou:** Usa FT no lugar de FIC e DT no lugar de PRJ-001 (item-12).

### PRD · Produção e app dos setores (1)

- `UNI-00920.01` `ESC-DOC` `vigente` `conf:media` Etiquetas em duas etapas: uma etiqueta simples com QR code, colada no primeiro setor da cadência para a baixa no app em cada setor. _[DOC-091 · Respostas do Diego, Etiquetas · ITM-02036 · parte de UNI-00920]_

### CVI · Comunicação visual (4)

- `UNI-00689.01` `ESC-DOC` `proposto` A ficha de comunicação visual tem código mais letra, imagem com cotas, descrição, medidas, material e acabamento, processo, fixação, iluminação, instalação, arte vinculada com status CVI, setores e baixa com foto e ok. _[DOC-091 · §27 Ficha técnica de comunicação visual · ITM-02339 · parte de UNI-00689]_
- `UNI-00724` `ESC-DOC` `vigente` Ficha técnica de comunicação visual (modelo ilustrativo em A4): projeto, código do item, unidade e prazos, arte vinculada, imagem com cotas, corte, especificação, sequência de setores e baixa com foto, responsável e QR. _[DOC-020 · Seções 01 a 05 · ITM-00579]_
  - Requisitos separados deste item: `UNI-00724.01`
- `UNI-00724.01` `ESC-DOC` `proposto` Cada item de comunicação visual ganha uma ficha técnica própria (novo modelo, item a desenvolver), no padrão das fichas de móveis, impressa com QR code e campo de foto do item produzido. _[DOC-091 · §27 Ficha técnica de comunicação visual, ficha técnica por item · ITM-02338 · parte de UNI-00724]_
- `UNI-01654` `ESC-DOC` `vigente` O manual de comunicação visual, gerado no detalhamento técnico, é uma tabela com foto ou render do item, descrição com medidas e material, e código do item mais letra (A, B, C…). _[DOC-091 · §27 Ficha técnica de comunicação visual, Manual · ITM-02336]_

### AUD · Audiovisual (2)

- `UNI-00669` `ESC-DOC` `vigente` Rider técnico do Audiovisual: equipamento, quantidade e especificação, uso combinado com o cliente, conteúdo com status do teste e montagem (onde fica e quem programa e testa). _[DOC-014 · §05 Rider técnico · ITM-00425]_
  - Requisitos separados deste item: `UNI-00669.01`
- `UNI-00669.01` `ESC-DOC` `proposto` Rider técnico: equipamento, especificação, uso, conteúdo e posição na montagem. _[DOC-091 · §4 Entidades e dados principais, Rider técnico; §5 Setores produtivos, AUD-E3 · ITM-01636 · parte de UNI-00669]_

### EXP · Expedição e qualidade (7)

- `UNI-00052` `ESC-DOC` `substituido-parcial` `conf:media` Produção, expedição e evento: avanço na própria FIC, AMO aprovação de amostra, CHK-001 qualidade, ROM-001 romaneio e etiquetas, CHK-002 montagem e TER-001 termo de entrega. _[DOC-032 · §04 Fases 7 e 8 · ITM-00780]_
  - **Continua valendo:** Existem avanço na ficha, aprovação de amostra, checklists de qualidade e montagem, romaneio, etiquetas e termo de entrega.
  - **Mudou:** Ficha técnica usa FT no lugar de FIC (item-12).
- `UNI-00415` `ESC-DOC` `vigente` Planejamento, PLA-E22: relatório de conformidade e controle de qualidade, visual e com fotos de cada item, alimentado pela Qualidade e pela Produção. _[DOC-012 · PLA-E22 · ITM-00318]_
  - Requisitos separados deste item: `UNI-00415.01`
- `UNI-00415.01` `ESC-DOC` `proposto` `conf:media` Planejamento, etapa PLA-E22: relatório de conformidade com fotos, feito por Suellen e Produção. _[DOC-091 · §5 Planejamento, PLA-E22 · ITM-01898 · parte de UNI-00415]_
- `UNI-00671` `ESC-DOC` `substituido-parcial` Etiqueta de expedição: código (projeto, item e subitem), nome do produto, foto, QR code, projeto e feira (inferido), volume (proposta) e tamanho legível de longe (proposta 10 x 15 cm); tipo de impressora e "volume 1 de 3" para peça em várias embalagens ainda a validar. _[DOC-015 · §03 Etiqueta de expedição · ITM-00454]_
  - **Continua valendo:** Os campos da etiqueta de expedição continuam, com os pontos que o texto já marca como a validar.
  - **Mudou:** O código do item segue o item-9.
  - Requisitos separados deste item: `UNI-00671.01`
- `UNI-00671.01` `ESC-DOC` `a-conferir` Etiqueta: código, nome, foto, QR code, projeto e feira, volume 1 de N. _[DOC-091 · §4 Entidades e dados principais, Etiqueta; §5 Expedição, EXP-E6 · ITM-01632 · parte de UNI-00671]_
  - **Decisão (Ver decisão do item 9):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- `UNI-00696` `ESC-DOC` `a-conferir` CHK-001 Checklist de qualidade: IT, medidas, acabamento, funcionamento, conformidade com a amostra aprovada (AMO), embalagem e etiqueta, foto, responsável e data. _[DOC-032 · §06 CHK-001 · ITM-00798]_
  - **Atenção (leitura do Claude):** item 9: Usa IT como referência do item.
- `UNI-00733` `ESC-DOC` `fato` `conf:media` Termo de Entrega de Material de PDV: modelo com identificação das partes, dados da entrega, itens entregues, vistoria na loja, ressalvas, condições, registro fotográfico e assinaturas de Imagine, contratante e loja. _[DOC-060 · Seções 1 a 8 · ITM-01312]_

### LOG · Logística e frota (1)

- `UNI-00697` `ESC-DOC` `a-conferir` ROM-001 Romaneio de carga: volume nº de total, IT, descrição, peso, dimensões, ordem de carga e descarga, veículo, motorista, horário e conferência na saída e na chegada. _[DOC-032 · §06 ROM-001 · ITM-00799]_
  - **Atenção (leitura do Claude):** item 9: Usa IT como referência do item.

### MON · Montagem (6)

- `UNI-00042` `ESC-DOC` `vigente` Documentos no app da montagem: pasta do credenciamento, memorial validado pelo cliente, projeto e 3D, detalhamento técnico, resumo das fichas de produção e etiquetas com leituras do QR code. _[DOC-016 · §04 Documentos no app da montagem · ITM-00495]_
- `UNI-00043` `ESC-DOC` `vigente` Termo de aceite de entrega, com identificação, itens conferidos com foto e ok, ressalvas, aceite (data, assinatura, produtor) e destino ao jurídico, financeiro e comercial como evidência de entrega. _[DOC-016 · §05 Termo de aceite · ITM-00498]_
  - Requisitos separados deste item: `UNI-00043.01`, `UNI-00043.02`
- `UNI-00043.01` `ESC-DOC` `proposto` Conteúdo do termo: dados do projeto, cliente e feira; itens do memorial com ok e foto; ressalvas; cortesias retiradas; data, hora e local. _[DOC-091 · §12 Experiência do cliente no Portal, termo de entrega oficial, conteúdo · ITM-02175 · parte de UNI-00043]_
- `UNI-00461.01` `ESC-DOC` `proposto` Termo de entrega oficial (MON-E10): ao fim da montagem o app gera automaticamente o PDF do termo, com valor jurídico para contestações posteriores à feira. _[DOC-091 · §12 Experiência do cliente no Portal, termo de entrega oficial (MON-E10) · ITM-02174 · parte de UNI-00461]_
- `UNI-00674` `ESC-DOC` `vigente` Campos do termo de aceite: identificação (cliente, feira, estande, código do projeto), itens conferidos, ressalvas com correção e foto, aceite (data, horário, assinatura, produtor) e destino. _[DOC-016 · §05 Termo de aceite · ITM-00499]_
  - Requisitos separados deste item: `UNI-00674.01`
- `UNI-00674.01` `ESC-DOC` `proposto` Termo de aceite: identificação, itens conferidos, ressalvas, data e assinatura. _[DOC-091 · §4 Entidades e dados principais, Termo de aceite; §5 Montagem, MON-E10 · ITM-01638 · parte de UNI-00674]_

### POS · Pós-feira (2)

- `UNI-00044` `ESC-DOC` `proposto` Dossiê do evento reúne termo de aceite e ressalvas, relatório do plantão técnico, relatório de conformidade, relatórios de produção e erros, observações do cliente e pesquisa de satisfação. _[DOC-017 · §03 Aba Pós-feira · ITM-00523]_
- `UNI-00053` `ESC-DOC` `proposto` Pós-evento (a ditar): ROM-002 romaneio de retorno, REL-001 previsto x realizado, REL-002 fechamento do job e avaliação de fornecedor e pesquisa de satisfação do cliente. _[DOC-032 · §04 Fase 9 · ITM-00781]_

### TRP · Transversal (9)

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

## Entidades e campos (120)

### CRM · CRM e prospecção (8)

- `UNI-00002.04` `ESC-DADOS` `proposto` O registro por estande tem foto do estande (feira, data e horário gravados automaticamente), foto do cartão de visita e pré-cadastro com número do estande, tamanho aproximado, montadora atual, nível de interesse e observações por texto ou áudio. _[DOC-091 · §19 Prospecção na feira pelo app, registro por estande · ITM-02236 · parte de UNI-00002]_
- `UNI-00002.07` `ESC-DADOS` `proposto` `conf:media` O roteiro do vendedor cobre abertura e consentimento, contato, estande atual, opinião sobre o estande, desejos de melhoria, montadora atual, investimento por m², calendário de feiras, processo de compra e fechamento. _[DOC-091 · §19 Prospecção na feira pelo app, roteiro de perguntas · ITM-02247 · parte de UNI-00002]_
- `UNI-00622` `ESC-DADOS` `proposto` Origens de entrada: Prospecção (SET01) com formulário, transcrição e checklist; LinkedIn, Instagram e WhatsApp; e cliente antigo retomado, com histórico das edições anteriores. _[DOC-007 · §03 Origens de entrada · ITM-00145]_
- `UNI-00654` `ESC-DADOS` `proposto` Formulário do contato presencial: contatos, onde foi o contato (feira, data e responsável), fotos, pontos fortes, pontos fracos, necessidades e próximo contato com datas. _[DOC-005 · §04 Formulário do contato presencial · ITM-00112]_
  - Requisitos separados deste item: `UNI-00654.01`
- `UNI-00654.01` `ESC-DADOS` `proposto` Entidade Lead/venda: contatos do decisor, onde foi o contato, fotos, pontos fortes e fracos, necessidades, próximas datas e quem captou. _[DOC-091 · §4 Entidades e dados principais, Lead / venda · ITM-01617 · parte de UNI-00654]_
- `UNI-00912.01` `ESC-DADOS` `proposto` `conf:media` Entidade Cliente: razão social, CNPJ, endereço, contatos, origem (empresa, aberto pelo vendedor ou indicação), classe, histórico, notas do pós-feira e pontos de fidelidade. _[DOC-091 · §4 Entidades e dados principais, Cliente · ITM-01618 · parte de UNI-00912]_
- `UNI-01098` `ESC-DADOS` `inferido` Campos "Onde foi o contato" (data e responsável) e "Contatos" (cargo e e-mail) detalhados para o formulário ser útil no CRM. _[DOC-005 · §05, PRO-E9 · ITM-00126]_
- `UNI-01641` `ESC-DADOS` `vigente` O formulário de entrada vale para cliente vindo da Prospecção e para cliente aberto direto pelo vendedor, e seus dados alimentam os dashboards e as estatísticas comerciais. _[DOC-091 · §20 Formulário completo de entrada do cliente · ITM-02255]_

### PLC · Planejamento comercial (4)

- `UNI-00356` `ESC-DADOS` `proposto` Registrar o perfil de cada feira: tipo, perfil do evento e histórico de vendas da Imagine. _[DOC-007 · COM-E2 · ITM-00136]_
  - Requisitos separados deste item: `UNI-00356.01`
- `UNI-00356.01` `ESC-DADOS` `proposto` Comercial: definir o perfil de cada feira, com mínimo de 200 m² vendidos pela Imagine. _[DOC-091 · §5 Comercial, COM-E2 · ITM-01661 · parte de UNI-00356]_
- `UNI-01426` `ESC-DADOS` `proposto` Entidade Feira: mês, tipo, perfil, histórico de vendas, mínimo de 200 m², vendedor responsável, listas A/B/C/Pacote e prazos do manual. _[DOC-091 · §4 Entidades, Feira (COM-E1 a E4, CRD-E5) · ITM-01619]_
- `UNI-01427` `ESC-DADOS` `proposto` Entidade Vendedor: meta mensal, clientes, funil e comissão. _[DOC-091 · §4 Entidades, Vendedor (COM-E5, FIN-E14) · ITM-01620]_

### REU · Reuniões com IA (4)

- `UNI-00655` `ESC-DADOS` `proposto` Termômetro da Reunião, preenchido pela IA: concorrência, percepção da Imagine, capacidade, projeto, relacionamento, por que nos procurou e resultado (satisfação, probabilidade 0 a 100% e próximos passos). _[DOC-007 · COM-E13, §04 · ITM-00155]_
- `UNI-01635` `ESC-DADOS` `vigente` A IA analisa a gravação da visita e extrai tom da conversa, itens que chamaram a atenção, críticas e objeções, pontos positivos, necessidades e oportunidades, e status do cliente (ex.: abertura para contrato futuro). _[DOC-091 · §19 Análise da IA na gravação · ITM-02241]_
- `UNI-01636` `ESC-DADOS` `vigente` A IA extrai da gravação as feiras que o cliente faz, o tamanho dos estandes, quando abre a concorrência, a metragem do estande atual e quanto o cliente pagou por m². _[DOC-091 · §19 Análise da IA na gravação · ITM-02242]_
- `UNI-01637` `ESC-DADOS` `vigente` A IA monta da gravação o mapa de compra (contato, gerente, decisor, comprador e influenciador), a fidelização com a montadora atual e a evolução da verba da última feira (mantida, maior ou menor). _[DOC-091 · §19 Análise da IA na gravação · ITM-02243]_

### PRJ · Projetos e memorial (8)

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

### BIB · Biblioteca de itens e locações (8)

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

### CUS · Custos (6)

- `UNI-00659` `ESC-DADOS` `a-conferir` Bloco de materiais: item (código BIB ou LOC), tipo de material, especificação, unidade, quantidade lida do 3D, valor unitário e valor total. _[DOC-009 · §04 Bloco 1 Materiais · ITM-00233]_
  - **Atenção (leitura do Claude):** item 9: Usa BIB e LOC, que estão em aberto.
  - Requisitos separados deste item: `UNI-00659.01`
- `UNI-00660` `ESC-DADOS` `substituido-parcial` Bloco de logística e operação lançado pelo Financeiro (mão de obra, frete, hotel, RRT e outros) e resumo com custo total e preço de venda sugerido. _[DOC-009 · §04 Blocos 2 e 3 · ITM-00234]_
  - **Continua valendo:** O bloco de logística e operação, com seus custos, e o resumo com custo total continuam. O preço sugerido está em aberto (DUV-011).
  - **Mudou:** Não é lançado pelo Financeiro: a IA propõe pelo histórico, a Maitê valida ou pede alteração e a IA gera o preço (item-19).
  - Requisitos separados deste item: `UNI-00660.01`
- `UNI-00660.01` `ESC-DADOS` `proposto` Planilha de custos: código ORC-NNN_VNN, com materiais, logística e operação, resumo e preço sugerido. _[DOC-091 · §4 Entidades e dados principais, Planilha de custos · ITM-01626 · parte de UNI-00660]_
- `UNI-01441` `ESC-DADOS` `proposto` A base histórica registra hospedagem, alimentação, passagens aéreas e de ônibus, combustível, pedágio, diárias, despesas de viagem e de veículo, frete, mão de obra e materiais. _[DOC-091 · §5 Base histórica de custos realizados · ITM-01823]_
- `UNI-01444` `ESC-DADOS` `vigente` Planilha de custos própria do audiovisual: equipes, diárias, deslocamento, hospedagem, alimentação, locação de equipamentos, atendimento e plantão. _[DOC-091 · §5 09 Audiovisual, AUD-E11; §Respostas · ITM-01953]_
- `UNI-01647` `ESC-DADOS` `vigente` Na planilha de custos cada item recebe um tipo (a produzir, a locar, a comprar pronto ou de estoque), que define seu destino quando o projeto é aprovado. _[DOC-091 · §25 Destino de cada item codificado · ITM-02305]_

### COM · Comercial, proposta e contrato (25)

- `UNI-00003.01` `ESC-DADOS` `a-conferir` O bloco Cliente e contatos tem razão social, CNPJ, segmento, porte e mapa de compra (contato, decisor, comprador, influenciador, com cargo, telefone e e-mail); usado por Comercial, Financeiro e Credenciamento. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Cliente e contatos · ITM-02257 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00003.02` `ESC-DADOS` `a-conferir` O bloco Origem registra se o cliente veio da Prospecção, foi aberto pelo vendedor, por indicação ou é cliente antigo; usado por Comercial (comissão), Marketing e programa de indicação. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Origem · ITM-02258 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00003.03` `ESC-DADOS` `a-conferir` O bloco Feira tem nome, cidade, pavilhão, datas de montagem, evento e desmontagem e link do manual do expositor; usado por Planejamento, Credenciamento e Logística. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Feira · ITM-02259 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00003.04` `ESC-DADOS` `a-conferir` O bloco Estande tem metragem, número, tipo (ilha, esquina, corredor) e planta da área; usado por Projetos e Custos. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Estande · ITM-02260 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00003.05` `ESC-DADOS` `a-conferir` O bloco Histórico tem montadora anterior, valor pago total e por m², o que gostou e não gostou e fotos da última edição; usado por Custos (comparação de preço) e Projetos. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Histórico · ITM-02261 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00003.06` `ESC-DADOS` `a-conferir` O bloco Verba e prazos tem verba prevista, forma de pagamento, data limite da proposta e concorrência com outras montadoras; usado por Comercial, Custos e Financeiro. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Verba e prazos · ITM-02262 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00003.07` `ESC-DADOS` `a-conferir` O bloco Necessidades do projeto tem objetivo na feira, pessoas recebidas, ambientes, produtos expostos, audiovisual, comunicação visual e identidade da marca; usado por Projetos, Audiovisual e Comunicação visual. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Necessidades do projeto · ITM-02263 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00003.08` `ESC-DADOS` `a-conferir` O bloco Extras tem interesse em collabs, peças 3D, tecnologia de leads e mapa de calor e itens que o cliente quer levar após a feira; usado por Comercial, Inovação e Montagem. _[DOC-091 · §20 Formulário completo de entrada do cliente, bloco Extras · ITM-02264 · parte de UNI-00003]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00062` `ESC-DADOS` `vigente` As nove categorias de serviço são Estande, Cenografia e decoração, Audiovisual/som/luz, Tecnologia e experiências, Estúdio 3D Farm, Produção de evento, Serviço de arquitetura, Gestão de obra e Trade marketing. _[DOC-002 · §44 Categorias de serviço · ITM-00052]_
  - Requisitos separados deste item: `UNI-00062.01`
- `UNI-00062.01` `ESC-DADOS` `proposto` As categorias de serviço são Estande, Cenografia (inclui decoração temática e Natal), Audiovisual som e luz, Tecnologia e experiências interativas, Estúdio 3D Farm e Produção de evento (gestão completa). _[DOC-091 · §41 Categorias de serviço na entrada da demanda · ITM-02447 · parte de UNI-00062]_
- `UNI-00063` `ESC-DADOS` `vigente` `conf:media` Gestão de obra inclui fornecedores de obra, cronograma físico-financeiro e diário de obra no app; Serviço de arquitetura vai do estudo preliminar ao executivo, com RRT. _[DOC-002 · §44 Categorias de serviço · ITM-00055]_
  - Requisitos separados deste item: `UNI-00063.01`
- `UNI-00063.01` `ESC-DADOS` `proposto` Serviço de arquitetura (projeto arquitetônico) é categoria própria, com briefing de programa de necessidades, levantamento do local, normas, estilo e etapas (estudo preliminar, anteprojeto, executivo, detalhamento, compatibilização), vendida isolada ou dentro de outra categoria. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas · ITM-02458 · parte de UNI-00063]_
- `UNI-00064` `ESC-DADOS` `vigente` `conf:media` Trade marketing cobre PDV e expositores, produção em série e instalação com foto por loja. _[DOC-002 · §44 Categorias de serviço · ITM-00056]_
  - Requisitos separados deste item: `UNI-00064.01`, `UNI-00064.02`
- `UNI-00064.01` `ESC-DADOS` `proposto` Trade marketing e design de PDV e expositores é categoria própria, com briefing de produto, rede e pontos de venda, quantidade de lojas, tipo de peça, regras das redes, vida útil, montagem e logística de distribuição. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas · ITM-02461 · parte de UNI-00064]_
- `UNI-00679` `ESC-DADOS` `vigente` Bloco comum: cliente e contatos, origem, categoria, verba e prazos de decisão, marca (manual, vetores, fontes, cores) e extras (collabs, 3D Farm, tecnologia, itens para levar, selo Reuse). _[DOC-019 · Parte A, A1 a A6 · ITM-00568]_
  - Requisitos separados deste item: `UNI-00679.01`, `UNI-00679.02`, `UNI-00679.03`
- `UNI-00679.01` `ESC-DADOS` `proposto` No formulário de entrada o vendedor seleciona a categoria do serviço, pode marcar mais de uma, e uma delas é a principal. _[DOC-091 · §41 Categorias de serviço na entrada da demanda · ITM-02446 · parte de UNI-00679]_
- `UNI-00679.02` `ESC-DADOS` `a-conferir` `conf:media` Os blocos comuns do formulário de entrada (cliente, origem, verba e prazos) valem para todas as categorias, e cada categoria acrescenta seu bloco próprio de perguntas. _[DOC-091 · §41 Categorias de serviço, briefing específico por categoria · ITM-02453 · parte de UNI-00679]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00680` `ESC-DADOS` `vigente` Briefing de Estande: feira, espaço, histórico da edição anterior, objetivos, programa de necessidades, audiovisual e comunicação visual, e serviços. _[DOC-019 · Parte B, 1 Estande · ITM-00569]_
  - Requisitos separados deste item: `UNI-00680.01`
- `UNI-00680.01` `ESC-DADOS` `a-conferir` `conf:media` O briefing de Estande pergunta feira e manual, m² e tipo, histórico, ambientes e produtos; o de Cenografia e decoração pergunta local, área e altura, tema, período, circulação, itens artesanais e normas do local. _[DOC-091 · §41 Categorias de serviço, tabela de perguntas específicas (Estande e Cenografia) · ITM-02454 · parte de UNI-00680]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00686` `ESC-DADOS` `vigente` Briefing de Serviço de arquitetura: objeto, local, programa de necessidades, conceito, normas, etapas do escopo, complementares, entregáveis, rodadas de revisão, RRT e prazo. _[DOC-019 · Parte B, 7 Serviço de arquitetura · ITM-00575]_
- `UNI-00687` `ESC-DADOS` `vigente` Briefing de Gestão de obra (projeto-mãe): obra, projetos disponíveis, escopo Imagine, disciplinas e fornecedores, documentos, orçamento com cronograma físico-financeiro e medições, controle (diário no app) e entrega. _[DOC-019 · Parte B, 8 Gestão de obra · ITM-00576]_
  - Requisitos separados deste item: `UNI-00687.01`
- `UNI-00688` `ESC-DADOS` `vigente` Briefing de Trade marketing: produto, pontos de venda, tipo de peça, regras das redes, objetivo, vida útil, produção em série, logística e foto de instalação por loja. _[DOC-019 · Parte B, 9 Trade marketing · ITM-00577]_
- `UNI-00708` `ESC-DADOS` `proposto` `conf:media` Entradas do simulador: valor do contrato sem CBS/IBS (padrão R$ 50.000), alíquota CBS+IBS (26,5%), alíquota efetiva do DAS (10%), parte do DAS que é CBS/IBS (40%) e regime da empresa. _[DOC-036 · §Simulação, entradas · ITM-01199]_
- `UNI-00723` `ESC-DADOS` `vigente` O vendedor escolhe a categoria principal e as complementares e o ERP monta o formulário de briefing juntando o bloco comum com os blocos de cada categoria; campos com asterisco são obrigatórios. _[DOC-019 · Introdução · ITM-00567]_
- `UNI-01430` `ESC-DADOS` `substituido-parcial` Adicional: código ADI-NNN, planilha e proposta próprias e status aprovado ou recusado. _[DOC-091 · §4 Entidades, Adicional (CUS-E14 a E19) · ITM-01627]_
  - **Continua valendo:** O adicional tem planilha e proposta próprias e status aprovado ou recusado.
  - **Mudou:** Fica sem o código ADI; a forma de identificar está em aberto (ponto-5).

### FIN · Financeiro (3)

- `UNI-00661.01` `ESC-DADOS` `a-conferir` `conf:media` Comanda: item e código, setor, previsto, pedido, diferença e status. _[DOC-091 · §4 Entidades e dados principais, Comanda (FIN-E3 a E6) · ITM-01629 · parte de UNI-00661]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`
- `UNI-00662` `ESC-DADOS` `proposto` Centro de custos do projeto: itens e valores, fornecedor, pagamento, impostos (IBS e CBS), nota fiscal, situação e logística e viagem. _[DOC-010 · §05 Centro de custos · ITM-00249]_
- `UNI-01449` `ESC-DADOS` `vigente` `conf:media` Formulário semanal das equipes terceirizadas: projeto, pessoas que trabalharam, número de diárias, valor da diária, diária de alimentação, descontos de diária com motivo e relatório completo com observações. _[DOC-091 · §Respostas Campos do formulário semanal · ITM-02069]_

### CMP · Compras (6)

- `UNI-00635` `ESC-DADOS` `a-conferir` Status da OC: RASCUNHO, EM APROVAÇÃO, APROVADA, ENVIADA, CONFIRMADA, RECEBIDA PARCIAL, RECEBIDA, FATURADA, PAGA, ENCERRADA ou CANCELADA (com motivo). _[DOC-032 · §05 Status da OC · ITM-00783]_
  - **Atenção (leitura do Claude):** item 5: "em aprovação" vem do ciclo com alçadas, e falta o estado do alerta de preço. Veja ERP-CRM/10_ESTADOS-PRINCIPAIS.md.
- `UNI-00661` `ESC-DADOS` `a-conferir` Comanda: item e código, setor que pediu, previsto no custo, pedido para a produção, diferença e status (aprovado, devolvido, em compra, comprado, entregue). _[DOC-010 · §04 Comanda de materiais · ITM-00248]_
  - **Atenção (leitura do Claude):** item 21: A comanda tem "setor que pediu" e "pedido". Pode ainda valer para os ajustes.
  - Requisitos separados deste item: `UNI-00661.01`
- `UNI-00752.03` `ESC-DADOS` `proposto` Status da chegada de material: previsto, chegou, descarregado ou atrasado. _[DOC-091 · §5 Compras, agenda de chegada de materiais, campo Status · ITM-01765 · parte de UNI-00752]_
- `UNI-01451` `ESC-DADOS` `vigente` No ERP: cadastro de fornecedores com histórico de preços por material, e registro das cotações e do fornecedor escolhido em cada ordem de compra. _[DOC-091 · §Respostas Compras · cotação (FIN-E7) · ITM-02078]_
- `UNI-01597` `ESC-DADOS` `proposto` `conf:media` Cada unidade de compras tem o seu cadastro de fornecedores e as suas ordens de compra. _[DOC-091 · §5 Compras · ITM-01751]_
- `UNI-01599` `ESC-DADOS` `proposto` A ordem de compra tem campo obrigatório: entrega pelo fornecedor ou coleta com veículo da Imagine; a coleta aparece destacada na agenda e na conciliação, com endereço, horário e material. _[DOC-091 · §5 Compras, Coleta com veículo próprio · ITM-01772]_

### PLA · Planejamento de produção (1)

- `UNI-00663` `ESC-DADOS` `vigente` Ficha técnica: item e código, detalhamento técnico, lista de materiais, complexidade e tempo, sequência de setores, vencimento em cada setor, conclusão (foto, data, hora, usuário) e qualidade (ok ou erro com observação). _[DOC-012 · §05 Ficha técnica · ITM-00336]_

### CRD · Credenciamento (5)

- `UNI-00625` `ESC-DADOS` `proposto` Status de cada documento do checklist: pendente, solicitado, recebido, conferido pela Maitê, publicado e aprovado pela feira. _[DOC-013 · §04 Status de cada documento · ITM-00378]_
- `UNI-00665` `ESC-DADOS` `proposto` Checklist básico: projeto aprovado, projeto estrutural, detalhamento parcial, planta elétrica, pontos de carga e cabos de aço, laudo do engenheiro, cálculo de carga, RRTs, termo de responsabilidade, documentos dos funcionários e dados do caminhão. _[DOC-013 · §03 Checklist obrigatório · ITM-00372]_
  - Requisitos separados deste item: `UNI-00665.01`
- `UNI-00665.01` `ESC-DADOS` `proposto` Checklist básico do Credenciamento: projeto aprovado, projeto estrutural, detalhamento parcial, planta elétrica, pontos de carga e cabos de aço, laudo do engenheiro, carga aérea, RRTs, termo, documentos dos funcionários, caminhão e placa. _[DOC-091 · §5 Credenciamento, checklist básico · ITM-01921 · parte de UNI-00665]_
- `UNI-00666.02` `ESC-DADOS` `proposto` Documento de credenciamento: tipo, responsável, prazo e status (pendente, solicitado, recebido, conferido, publicado, aprovado). _[DOC-091 · §4 Entidades e dados principais, Documento de credenciamento · ITM-01634 · parte de UNI-00666]_
- `UNI-00667` `ESC-DADOS` `proposto` Cronograma compatibilizado tem linhas de prazos da feira, cronograma macro da Imagine (SET07), prazo de cada documento por responsável e alertas antes de cada vencimento. _[DOC-013 · §04 Cronograma compatibilizado · ITM-00379]_

### PRD · Produção e app dos setores (2)

- `UNI-01486` `ESC-DADOS` `vigente` O bloco de pintura da ficha técnica traz substrato, preparação (fundo ou selador), tipo de tinta, cor (código do fabricante ou Pantone), acabamento (fosco, acetinado, brilho) e número de demãos. _[DOC-091 · §32 Pintura, Especificação por peça · ITM-02367]_
- `UNI-01487` `ESC-DADOS` `vigente` A ficha de marcenaria estrutural tem estrutura interna (bitola e espaçamento do sarrafo), chapeamento, acabamento, fita de borda, fixação e travamento, divisão em partes para transporte e montagem, e vista explodida com medidas. _[DOC-091 · §33 Marcenaria, ficha estrutural · ITM-02374]_

### CVI · Comunicação visual (1)

- `UNI-00689` `ESC-DADOS` `vigente` Campos da especificação: descrição, medidas, face, corpo lateral, corte, iluminação, fixação, instalação (máscara 1:1), arte vinculada com status CVI-E7, quantidade e embalagem. _[DOC-020 · Seção 03 Especificação · ITM-00580]_
  - Requisitos separados deste item: `UNI-00689.01`

### AUD · Audiovisual (3)

- `UNI-00670` `ESC-DADOS` `vigente` Conferência de medidas do Audiovisual com a montagem, com foto: telas e nichos, suportes e fixações, elétrica e cabos, som e luz, acesso e ventilação. _[DOC-014 · §05 Conferência de medidas · ITM-00426]_
- `UNI-00682` `ESC-DADOS` `vigente` Briefing de Audiovisual, som e luz: evento, vídeo (LED, telas, projeção), som, luz e infraestrutura. _[DOC-019 · Parte B, 3 Audiovisual, som e luz · ITM-00571]_
  - Requisitos separados deste item: `UNI-00682.01`
- `UNI-00682.01` `ESC-DADOS` `a-conferir` `conf:media` O briefing de Audiovisual pergunta tipo de evento, público, palco ou estande, LED, som, luz, conteúdos, operação e energia; o de Tecnologia pergunta objetivo, usuário, dados coletados, integrações, internet e duração. _[DOC-091 · §41 Categorias de serviço, tabela de perguntas específicas (Audiovisual e Tecnologia) · ITM-02455 · parte de UNI-00682]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`

### DCO · Decoração (2)

- `UNI-00681` `ESC-DADOS` `vigente` Briefing de Cenografia e decoração: local, normas do local, conceito, público e uso, itens, e segurança e operação (laudos, plantão, seguro, desmontagem). _[DOC-019 · Parte B, 2 Cenografia e decoração · ITM-00570]_
- `UNI-01493` `ESC-DADOS` `vigente` A ficha de decoração de cada item traz medidas, materiais, cores e acabamentos, quantidade, foto de referência, processo artesanal e quem executa (costureira, decorador, montagem de objetos). _[DOC-091 · §37 Decoração, Ficha técnica de decoração · ITM-02410]_

### D3F · Impressão 3D (3)

- `UNI-00684` `ESC-DADOS` `vigente` Briefing de Estúdio 3D Farm: peças (tipo, quantidade, tamanho, material, cor), arquivos, uso e entrega com data, embalagem e pacote anual. _[DOC-019 · Parte B, 5 Estúdio 3D Farm · ITM-00573]_
  - Requisitos separados deste item: `UNI-00684.01`, `UNI-00684.02`, `UNI-00684.03`
- `UNI-00684.03` `ESC-DADOS` `a-conferir` `conf:media` O briefing de 3D Farm pergunta peças, quantidades, tamanho, material, arquivos da marca e uso; o de Produção de evento pergunta formato, local e datas, serviços, fornecedores do cliente, quem paga o quê, licenças e orçamento geral. _[DOC-091 · §41 Categorias de serviço, tabela de perguntas específicas (Estúdio 3D Farm e Produção de evento) · ITM-02456 · parte de UNI-00684]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-01491` `ESC-DADOS` `vigente` A IA gera a ficha da peça 3D com o mesmo código do projeto: material, quantidade, tempo, custo de material e máquina, acabamento posterior e sequência de setores. _[DOC-091 · §36 Impressão 3D, Ficha técnica 3D · ITM-02398]_

### TIN · Tecnologia e experiências interativas (2)

- `UNI-00683` `ESC-DADOS` `vigente` Briefing de Tecnologia: objetivo e tipo, usuário e volume por dia, dados coletados e responsável LGPD, infraestrutura e plano B, duração e suporte. _[DOC-019 · Parte B, 4 Tecnologia · ITM-00572]_
- `UNI-01494` `ESC-DADOS` `vigente` A ficha técnica da solução tem objetivo da experiência, roteiro do usuário, telas, integrações (WhatsApp, Instagram, IA), equipamentos, fornecedores e custos. _[DOC-091 · §39 Tecnologia, Ficha técnica da solução · ITM-02423]_

### ALM · Almoxarifado (2)

- `UNI-01435` `ESC-DADOS` `proposto` `conf:media` Campos da agenda de chegada: data e horário previstos, fornecedor e material (com quantidade e volume), tipo de veículo, local de descarga, quem descarrega, destino do material e status. _[DOC-091 · §5 Compras, Agenda de chegada de materiais · ITM-01764]_
- `UNI-01436` `ESC-DADOS` `proposto` `conf:media` Planilha de conciliação diária: horário, tipo (chegada ou saída), projeto, fornecedor ou destino, material ou volumes, veículo, local, responsável e conflitos apontados pela IA. _[DOC-091 · §5 Compras, Planilha de conciliação diária · ITM-01771]_

### EXP · Expedição e qualidade (6)

- `UNI-00672` `ESC-DADOS` `a-conferir` Leituras do QR code registram: peça pronta, recebimento, verificação de qualidade, etiqueta colada, carregamento, descarregamento (proposta, para registrar a chegada de cada volume ao pavilhão), desembalada e instalada, com quem leu e o que fica registrado. _[DOC-015 · §04 Leituras do QR code · ITM-00455]_
  - **Atenção (leitura do Claude):** item 22: A Especificação (ITM-01612) traz Expedição como setor 12. Os números estão em aberto.
  - Requisitos separados deste item: `UNI-00672.01`, `UNI-00672.02`
- `UNI-00672.02` `ESC-DADOS` `proposto` Leitura de QR code: peça, evento, usuário, data e hora. _[DOC-091 · §4 Entidades e dados principais, Leitura de QR code · ITM-01633 · parte de UNI-00672]_
- `UNI-00709` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV, dados da entrega: pedido ou OS, campanha, vigência, data e hora, tipo (somente entrega, com instalação, com manutenção), nota fiscal ou romaneio, equipe Imagine e promotor do cliente presente. _[DOC-060 · §2 Dados da entrega · ITM-01313]_
- `UNI-00710` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV, tabela de itens: material (display de chão, ilha, testeira, wobbler, stopper, cartaz, adesivo de piso, clip strip), especificação, local, quantidade pedida e entregue, e status (Entregue, Instalado, com ressalva, Não entregue). _[DOC-060 · §3 Itens entregues · ITM-01314]_
- `UNI-00711` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV, amostra aprovada: peça, material (PS, PVC expandido, papelão, acrílico, MDF, vinil), espessura, impressão ou acabamento, medidas finais e aprovador com data; as peças entregues devem igualar a amostra. _[DOC-060 · §3.1 Amostra de referência · ITM-01315]_
- `UNI-00712` `ESC-DADOS` `fato` `conf:media` Termo de Entrega de PDV: assinatura por Imagine (contratada), contratante (marca ou indústria) e loja (gerente ou responsável), com nome, cargo, local e data; Leandro [PES-00012] consta como responsável da Imagine. _[DOC-060 · §8 Assinaturas · ITM-01321]_

### LOG · Logística e frota (4)

- `UNI-00789.06` `ESC-DADOS` `proposto` Cada item tem o campo transporte (carregado pela Imagine ou entregue pelo fornecedor na feira), sugerido pelo que foi registrado na ordem de compra ou de locação. _[DOC-091 · §31 Estimativa de volume de carga por projeto, itens que não são carregados pela Imagine · ITM-02364 · parte de UNI-00789]_
- `UNI-01439` `ESC-DADOS` `proposto` Cadastro de veículo: placa, modelo, unidade, quilometragem atual e plano de manutenção (troca de óleo e preventivas por quilometragem ou data). _[DOC-091 · §5 Frota, FRT-E1 · ITM-01785]_
- `UNI-01448` `ESC-DADOS` `vigente` Formulário padrão de solicitação de frete: transportadora, origem e destino, data de carregamento, horário de chegada na feira, quantidade de veículos, tipo de transporte, valor negociado e data limite da nota fiscal de remessa. _[DOC-091 · §Respostas Logística no Rio Grande do Sul (Setor 11) · ITM-02065]_
- `UNI-01450` `ESC-DADOS` `vigente` `conf:media` Formulário de deslocamento para a feira, preenchido por Eduardo (RS) ou Samanta (SP): custo de deslocamento, diárias de hotel, quantidade e nome de cada pessoa, e quem será credenciado. _[DOC-091 · §Respostas Formulário de deslocamento da equipe para a feira · ITM-02070]_

### MON · Montagem (4)

- `UNI-00675` `ESC-DADOS` `vigente` Chamado do plantão técnico registra abertura (cliente, estande, pedido, foto opcional, data), notificados, execução (quem, quando, foto), aviso push ao cliente e relatório histórico do estande. _[DOC-016 · §06 Plantão técnico · ITM-00501]_
  - Requisitos separados deste item: `UNI-00675.01`
- `UNI-00675.01` `ESC-DADOS` `proposto` Chamado do plantão: pedido, foto, notificados, quem atendeu e conclusão com foto. _[DOC-091 · §4 Entidades e dados principais, Chamado do plantão; §5 Montagem, MON-E11 a E14 · ITM-01639 · parte de UNI-00675]_
- `UNI-01432` `ESC-DADOS` `proposto` Checklist de montagem: item do memorial, ok e foto. _[DOC-091 · §4 Entidades, Checklist de montagem (MON-E5, MON-E15) · ITM-01637]_
- `UNI-01462` `ESC-DADOS` `vigente` Validador da montagem: o formulário traz nome e dados para autenticação eletrônica no app, para assinar o termo de aceite. _[DOC-091 · §12 Formulário pré-evento, Validador · ITM-02171]_

### POS · Pós-feira (3)

- `UNI-00676` `ESC-DADOS` `proposto` Pesquisa de 8 perguntas, cerca de 3 minutos: NPS 0 a 10, nota por etapa 1 a 5, esforço 1 a 5, três palavras, ponto forte, ponto de melhoria, próxima feira e autorização de depoimento. _[DOC-017 · §04 Pesquisa de satisfação · ITM-00524]_
  - Requisitos separados deste item: `UNI-00676.01`
- `UNI-00676.01` `ESC-DADOS` `proposto` Pesquisa de satisfação: NPS, nota por etapa, esforço, palavras, textos, recompra e autorização. _[DOC-091 · §4 Entidades e dados principais, Pesquisa de satisfação; §5 Pós-feira, POS-E3 · ITM-01640 · parte de UNI-00676]_
- `UNI-00677` `ESC-DADOS` `proposto` Plano de ação 5W2H: o quê, por quê, quem, quando, onde, como, quanto e resultado medido na rodada seguinte; segue o ciclo PDCA. _[DOC-017 · §05 Plano de ação · ITM-00527]_

### MKT · Marketing e acervo (3)

- `UNI-00678` `ESC-DADOS` `proposto` Roteiro de captação por momento: bastidores, montagem, abertura, drone, stand pronto, vídeo do stand, evento acontecendo e depoimento, cada um com o que captar e o formato. _[DOC-018 · §03 Roteiro de captação · ITM-00554]_
- `UNI-01433` `ESC-DADOS` `proposto` Material do acervo: projeto, tipo, autorização de imagem, acessos e downloads. _[DOC-091 · §4 Entidades, Material do acervo (MKT-E8 a E12) · ITM-01642]_
- `UNI-01473` `ESC-DADOS` `vigente` As fotos do banco de imagens são categorizadas por segmento, feira, cliente, tipo de imagem (fachada, interior, detalhe, audiovisual, 3D Farm, collabs, bastidores da fábrica, montagem) e segmentos do planejamento de prospecção. _[DOC-091 · §23 Banco de imagens, Categorias · ITM-02281]_

### CLI · Portal do cliente (2)

- `UNI-00782.03` `ESC-DADOS` `proposto` Formulário pré-evento do cliente: responsáveis do cliente, validador da montagem, cronograma do cliente na feira, fornecedores terceirizados e itens de cortesia. _[DOC-091 · §12 Experiência do cliente no Portal, formulário pré-evento · ITM-02169 · parte de UNI-00782]_
- `UNI-01431` `ESC-DADOS` `proposto` Arquivo do cliente: arte ou conteúdo, resultado da verificação da IA, prova e validação. _[DOC-091 · §4 Entidades, Arquivo do cliente (CVI, AUD) · ITM-01635]_

### EVT · Produção de evento (1)

- `UNI-00685` `ESC-DADOS` `vigente` Briefing de Produção de evento (projeto-mãe): evento, escopo Imagine, projetos exigidos, terceiros (quem contrata e paga), documentos, orçamento com taxa de gestão, governança e operação. _[DOC-019 · Parte B, 6 Produção de evento · ITM-00574]_
  - Requisitos separados deste item: `UNI-00685.01`

### TRP · Transversal (4)

- `UNI-00118.01` `ESC-DADOS` `proposto` Usuário: setor, categoria, feiras em que está escalado e validade do acesso. _[DOC-091 · §4 Entidades e dados principais, Usuário · ITM-01643 · parte de UNI-00118]_
- `UNI-00705` `ESC-DADOS` `vigente` `rotina-anterior` O cadastro de equipe tem os campos ID (EQP-NNN), nome, cargo, contatos pessoal e profissional separados, Trello, projetos com acesso e status (ATIVO/INATIVO); não registra senhas. _[DOC-033 · §5.6.2 IMG-CAD-001 V08 Tabela · ITM-01023]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.
- `UNI-00789.02` `ESC-DADOS` `proposto` `conf:media` A ficha técnica mostra à Expedição como embalar cada item. _[DOC-091 · §28 Embalagem calculada na ficha técnica, passo 3 · ITM-02343 · parte de UNI-00789]_
- `UNI-01447` `ESC-DADOS` `vigente` No ERP, cada unidade tem a sua equipe cadastrada por papel, e cada projeto leva o campo "unidade de produção". _[DOC-091 · §Respostas Unidade de produção · ITM-02056]_

## Integrações (17)

### CRM · CRM e prospecção (3)

- `UNI-00002.02` `ESC-INTEG` `proposto` Agente de IA no WhatsApp para o formulário do contato. _[DOC-091 · §9 Integrações, agente de IA no WhatsApp; §5 Prospecção, PRO-E9 · ITM-02129 · parte de UNI-00002]_
- `UNI-00877.01` `ESC-INTEG` `a-conferir` CRM RD Station integrado ao WhatsApp Web; o WhatsApp de cada usuário do Comercial é integrado e as conversas ficam gravadas no histórico do cliente (regra de 31/10). _[DOC-091 · §9 Integrações, CRM RD Station com o WhatsApp Web · ITM-02127 · parte de UNI-00877]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-00907.01` `ESC-INTEG` `vigente` CRM da Imagine: RD Station. _[DOC-091 · Respostas do Diego, CRM; §9 Integrações · ITM-02032 · parte de UNI-00907]_

### REU · Reuniões com IA (1)

- `UNI-00061` `ESC-INTEG` `proposto` O assistente de reunião com IA entra nas chamadas online, grava áudio e tela, transcreve em português, extrai tópicos e destaca pontos críticos e referências; atua no briefing e nas duas verificações. _[DOC-030 · §04 Assistente de reunião · ITM-00729]_
  - Requisitos separados deste item: `UNI-00061.01`

### BIB · Biblioteca de itens e locações (1)

- `UNI-01476` `ESC-INTEG` `vigente` A biblioteca de referências é integrada à biblioteca de itens (PRJ-E7) e à base histórica de custos, para acelerar o projeto e reduzir custos reaproveitando o que foi validado. _[DOC-091 · §24 Biblioteca de referências e projetos · ITM-02290]_

### COM · Comercial, proposta e contrato (1)

- `UNI-00916.01` `ESC-INTEG` `proposto` `conf:media` Caixa de e-mail do fluxo comercial, com o assistente em cópia. _[DOC-091 · §9 Integrações; §5 Assistente comercial, ACM-E12 · ITM-02134 · parte de UNI-00916]_

### FIN · Financeiro (2)

- `UNI-00060` `ESC-INTEG` `proposto` Contas a pagar, recebimentos e fluxo de caixa ficam no sistema de gestão financeiro, integrado ao Portal. _[DOC-010 · FIN-E12 · ITM-00252]_
- `UNI-01503` `ESC-INTEG` `proposto` Financeiro: contas a pagar, recebimentos e fluxo de caixa no sistema financeiro integrado. _[DOC-091 · §5 05 Financeiro, FIN-E12 · ITM-01745]_

### CRD · Credenciamento (1)

- `UNI-00117.01` `ESC-INTEG` `proposto` Portal do expositor de cada feira, acessado com o login do cliente. _[DOC-091 · §9 Integrações, portal do expositor · ITM-02135 · parte de UNI-00117]_

### D3F · Impressão 3D (3)

- `UNI-00755.03` `ESC-INTEG` `proposto` O caminho mais simples é o ERP ler o arquivo .gcode.3mf exportado pelo Bambu Studio, que traz por placa tempo, filamento em metros e gramas, material, cor e modelo da impressora, e preencher a ficha quando o Pedro sobe a peça. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm), forma de integração, item 1 · ITM-02403 · parte de UNI-00755]_
- `UNI-00755.04` `ESC-INTEG` `proposto` `conf:media` O controle direto das impressoras Bambu por software de terceiros tem limitações impostas pelo fabricante, e a integração de leitura de dados é a mais segura para começar. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm), forma de integração, item 3 · ITM-02405 · parte de UNI-00755]_
- `UNI-01490` `ESC-INTEG` `vigente` O ERP se conecta ao software de fatiamento ou gerenciador da farm, por integração direta ou leitura de arquivos exportados, e importa arquivo 3D, impressora, material e cor, filamento, tempo, placas e configurações de cada peça. _[DOC-091 · §36 Impressão 3D, Integração com o software da impressora · ITM-02397]_

### EXP · Expedição e qualidade (1)

- `UNI-01454` `ESC-INTEG` `proposto` Impressão de etiquetas integrada ao sistema. _[DOC-091 · §9 Integrações · ITM-02137]_

### MKT · Marketing e acervo (2)

- `UNI-00059` `ESC-INTEG` `proposto` Os seis canais da linha de comunicação são LinkedIn, Instagram, site, blog, newsletter (via CRM) e WhatsApp. _[DOC-005 · §01 e PRO-E2 · ITM-00102]_
  - Requisitos separados deste item: `UNI-00059.01`
- `UNI-00059.01` `ESC-INTEG` `proposto` Publicação automática em LinkedIn, Instagram, site, blog e newsletter. _[DOC-091 · §9 Integrações, publicação automática · ITM-02131 · parte de UNI-00059]_

### TRP · Transversal (2)

- `UNI-00213` `ESC-INTEG` `proposto` Cada colaborador recebe notebook, celular e número de WhatsApp Business corporativos, de propriedade da empresa e integrados ao ERP (WhatsApp e rastreamento de arquivos). _[DOC-022 · §3 Equipamentos e contas · ITM-00595]_
- `UNI-01481` `ESC-INTEG` `vigente` A mesma informação da tela inicial alimenta o modo TV dos setores e o Índice de Desempenho do Setor. _[DOC-091 · §29 Integração · ITM-02352]_

## Dashboards e indicadores (31)

### CRM · CRM e prospecção (1)

- `UNI-01643` `ESC-INDIC` `vigente` O formulário de entrada gera estatísticas de conversão por origem, ticket por m², segmentos atendidos, feiras, comparação com a montadora anterior e motivos de perda. _[DOC-091 · §20 Formulário completo de entrada do cliente · ITM-02265]_

### PLC · Planejamento comercial (2)

- `UNI-00656` `ESC-INDIC` `proposto` Indicadores semanais propostos: meta x realizado, funil, qualidade da carteira, atividade, previsão ponderada pela probabilidade e distribuição por vendedor e origem. _[DOC-007 · §05 Dashboard do Diego · ITM-00160]_
- `UNI-01301` `ESC-INDIC` `proposto` Outras metas do planejamento: quantidade de clientes atendidos, por classe, por nível de pagamento, por verba e por m². _[DOC-007 · §05 Metas, Outras metas · ITM-00143]_

### APR · Apresentações por IA (1)

- `UNI-01644` `ESC-INDIC` `vigente` O ERP registra data e hora do envio, a abertura do e-mail e se o cliente abriu o link da apresentação, quantas vezes e quando. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02268]_

### CUS · Custos (2)

- `UNI-01442` `ESC-INDIC` `proposto` O fechamento mensal traz projetos realizados, previsto × realizado por projeto e por grupo de custo, setores que estouraram o custo, materiais acima do previsto, mudanças que aumentaram custo e análise da IA das causas. _[DOC-091 · §5 Relatório de fechamento do mês · ITM-01831]_
- `UNI-01522` `ESC-INDIC` `proposto` A IA cruza orçado e realizado e identifica, por projeto, as alterações do cliente após a aprovação que aumentaram o custo, mostrando item, valor, motivo e efeito nas metas e no índice previsto × realizado. _[DOC-091 · §5 Análise de impacto das alterações de projeto · ITM-01834]_

### COM · Comercial, proposta e contrato (4)

- `UNI-00014.01` `ESC-INDIC` `proposto` Dashboard Comercial: meta × realizado, funil, m² e R$/m², classes, reuniões e previsão ponderada. _[DOC-091 · §10 Dashboards e indicadores, Comercial · ITM-02139 · parte de UNI-00014]_
- `UNI-00593` `ESC-INDIC` `vigente` Dashboard enviado ao Diego toda sexta com meta x realizado por vendedor, funil em m², R$/m², classe e probabilidade. _[DOC-007 · COM-E15, §08 · ITM-00159]_
- `UNI-01443` `ESC-INDIC` `proposto` O relatório mostra, por vendedor e da equipe, clientes captados, propostas enviadas, perdidas e aceitas, com taxa de conversão, e a análise da IA dos motivos de perda e de fechamento. _[DOC-091 · §5 Relatório comercial mensal · ITM-01844]_
- `UNI-01524` `ESC-INDIC` `proposto` A cada 30 dias o sistema gera um relatório comercial com dashboard e envia ao Diego. _[DOC-091 · §5 Relatório comercial mensal (COM-E16) · ITM-01843]_

### FIN · Financeiro (5)

- `UNI-00005.02` `ESC-INDIC` `proposto` `conf:media` Relatório de fechamento do mês, com gráficos e dashboard, gerado automaticamente no fim de cada mês e enviado ao Diego por notificação. _[DOC-091 · §5 Custos, relatório de fechamento do mês · ITM-01830 · parte de UNI-00005]_
- `UNI-00005.03` `ESC-INDIC` `proposto` `conf:media` A partir do 3º mês de operação e a cada 3 meses, a IA compila os fechamentos mensais e gera o estudo orçamentário da empresa, com custos, tendências e desvios recorrentes por setor, projeto e unidade. _[DOC-091 · §5 Custos, estudo orçamentário trimestral · ITM-01832 · parte de UNI-00005]_
- `UNI-00396` `ESC-INDIC` `proposto` Dashboard financeiro mostra comissões, volume de vendas e curva de meta x fechamento do mês, junto com o COM-E15. _[DOC-010 · FIN-E15 · ITM-00259]_
- `UNI-01456` `ESC-INDIC` `proposto` Dashboard Financeiro: comissões, volume de vendas e curva da meta do mês. _[DOC-091 · §10 Dashboards, FIN-E15 · ITM-02140]_
- `UNI-01558` `ESC-INDIC` `vigente` O Financeiro acompanha em tempo real o previsto, comprado e realizado por projeto e por código, alimentando a base histórica de custos. _[DOC-091 · §25 Financeiro · ITM-02304]_

### PLA · Planejamento de produção (5)

- `UNI-00014.03` `ESC-INDIC` `proposto` `conf:media` A sala do Planejamento de produção tem painel com várias telas: o cronograma geral de produção e uma tela para cada setor, mostrando os itens de todos os setores ao mesmo tempo. _[DOC-091 · §17 Política de dispositivos, telas do modo TV · ITM-02335 · parte de UNI-00014]_
- `UNI-00222` `ESC-INDIC` `proposto` O previsto x realizado de cada etapa alimenta o histórico e o estudo de tempos e movimentos. _[DOC-030 · §06 Regras do portal · ITM-00727]_
- `UNI-00414` `ESC-INDIC` `vigente` Planejamento, PLA-E21: dashboard da produção em pizza com itens prontos versus faltantes e situação no prazo, antecipado ou atrasado. _[DOC-012 · PLA-E21 · ITM-00317]_
  - Requisitos separados deste item: `UNI-00414.01`
- `UNI-00414.01` `ESC-INDIC` `proposto` `conf:media` O responsável pelo planejamento da unidade vê no painel, em tempo real, os itens concluídos por setor, cada um com ficha e foto. _[DOC-091 · §5 Planejamento, PLA-E21; §10 Dashboards e indicadores, Produção · ITM-02320 · parte de UNI-00414]_
- `UNI-00664.01` `ESC-INDIC` `proposto` `conf:media` Dashboard de Produção: prontos × faltam, no prazo, antecipado, atrasado e erros. _[DOC-091 · §10 Dashboards e indicadores, Produção (PLA-E21) · ITM-02141 · parte de UNI-00664]_

### CVI · Comunicação visual (1)

- `UNI-00014.02` `ESC-INDIC` `proposto` O painel em tempo real é um quadro por etapa (colunas CVI-E1 a E7) com as peças de todos os projetos e filtros por projeto, feira, cliente, unidade e responsável. _[DOC-091 · §26 Comunicação visual, controle por etapa no ERP · ITM-02327 · parte de UNI-00014]_

### TIN · Tecnologia e experiências interativas (1)

- `UNI-00633` `ESC-INDIC` `proposto` `conf:media` Métricas pedidas: entradas por horário, tempo de permanência, mapa de calor interno e, se possível, passantes versus entradas. _[DOC-024 · Texto, O que precisamos medir · ITM-00636]_
  - Origem fora do repositório: E-mail a fornecedor: não entrou no repositório.

### LOG · Logística e frota (1)

- `UNI-00009.02` `ESC-INDIC` `proposto` Frota: o sistema gera toda semana o relatório de quilometragem de cada veículo. _[DOC-091 · §5 Frota, FRT-E3 · ITM-01789 · parte de UNI-00009]_

### MON · Montagem (1)

- `UNI-01457` `ESC-INDIC` `proposto` Dashboard de Montagem: itens com ok. _[DOC-091 · §10 Dashboards, MON-E6 · ITM-02142]_

### POS · Pós-feira (2)

- `UNI-00019.01` `ESC-INDIC` `proposto` Dashboard de Pós-feira: NPS, CSAT por etapa, CES, recompra, taxa de resposta, tempo de retorno ao detrator e temas recorrentes. _[DOC-091 · §10 Dashboards e indicadores, Pós-feira · ITM-02143 · parte de UNI-00019]_
- `UNI-00627` `ESC-INDIC` `proposto` Métricas: NPS (promotores 9 e 10 menos detratores 0 a 6), CSAT por etapa (notas 4 e 5), CES, intenção de recompra, taxa de resposta, tempo de retorno ao detrator e temas recorrentes. _[DOC-017 · §05 Métricas · ITM-00525]_

### FID · Indicação e fidelidade (1)

- `UNI-00012.04` `ESC-INDIC` `proposto` `conf:media` Relatório mensal da campanha: mensagens enviadas, acessos à página e indicações geradas. _[DOC-091 · §13 Programa de indicação com recompensa, campanha mensal · ITM-02198 · parte de UNI-00012]_

### INC · Incentivo e desempenho (2)

- `UNI-00631` `ESC-INDIC` `proposto` Indicadores medidos pelo Portal: tempo de resposta, cumprimento da data de corte, primeira vez certa, retrabalho, informação incompleta, checklist com foto e ok, chamados do plantão e nota do cliente por etapa. _[DOC-023 · §04 Medição pelo Portal · ITM-00619]_
  - Requisitos separados deste item: `UNI-00631.01`
- `UNI-00631.01` `ESC-INDIC` `proposto` Dashboard de Incentivo: tempo de resposta, data de corte cumprida, primeira vez certa, retrabalho e informação incompleta. _[DOC-091 · §10 Dashboards e indicadores, Incentivo (INC-E2) · ITM-02144 · parte de UNI-00631]_

### TRP · Transversal (2)

- `UNI-00014` `ESC-INDIC` `vigente` Dashboards: comercial semanal e mensal, custos previsto x realizado, produção e comunicação visual em tempo real e painel de telas do Planejamento. _[DOC-003 · Mapa, rodapé Dashboards · ITM-00083]_
  - Requisitos separados deste item: `UNI-00014.01`, `UNI-00014.02`, `UNI-00014.03`
- `UNI-01673` `ESC-INDIC` `vigente` Relatórios, metas e indicadores podem ser filtrados por categoria de serviço. _[DOC-091 · §41 Regras das categorias · ITM-02452]_

## Requisitos técnicos (10)

### COM · Comercial, proposta e contrato (1)

- `UNI-01471` `TEC` `vigente` A leitura de abertura funciona melhor por link rastreado do que por anexo, porque alguns programas de e-mail bloqueiam o registro de abertura. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02272]_

### PRD · Produção e app dos setores (1)

- `UNI-01477` `TEC` `vigente` Os dados do modo TV se atualizam sozinhos a cada poucos segundos, com letras grandes e cores por situação: vermelho falta fazer, amarelo em produção, verde concluído, azul embalado. _[DOC-091 · §26 Modo TV para o setor · ITM-02332]_

### CVI · Comunicação visual (1)

- `UNI-00788.02` `TEC` `proposto` `conf:media` O painel tem uma versão em modo TV, para tela grande no setor, aberta por endereço próprio do ERP numa smart TV ou mini PC/TV box com navegador. _[DOC-091 · §26 Comunicação visual, modo TV para o setor · ITM-02330 · parte de UNI-00788]_

### TIN · Tecnologia e experiências interativas (3)

- `UNI-00013.04` `TEC` `proposto` `conf:media` Recomendação ajustada: fluxo no pavilhão por Wi-Fi e Bluetooth perde força; priorizar câmeras com IA para contagem e mapa de calor. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 · ITM-02213 · parte de UNI-00013]_
- `UNI-00737` `TEC` `proposto` Caminho recomendado por tipo: landing page em construtor ou site estático com RD Station; site em CMS; WhatsApp com IA via API oficial; totem em web app modo quiosque; app só se web app não resolver. _[DOC-004 · Fase 4 Arquitetura · ITM-00091]_
- `UNI-00738` `TEC` `proposto` Checklist técnico: contas em nome da empresa ou do cliente, domínio e SSL, integrações documentadas, chaves no cofre de senhas e plano para internet ruim (modo offline, fila de envio, roteador 4G). _[DOC-004 · Fase 4 Checklist técnico · ITM-00092]_

### TRP · Transversal (4)

- `UNI-00783` `TEC` `vigente` Checklist de aquisição: notebooks, celulares e números corporativos; TVs por setor e painel de telas do Planejamento; mini PC ou TV box, suportes, rede e login de exibição. _[DOC-002 · §2 a 22 Checklist de aquisição · ITM-00033]_
  - Requisitos separados deste item: `UNI-00783.01`, `UNI-00783.02`, `UNI-00783.03`
- `UNI-00783.01` `TEC` `proposto` Modo TV, incluído em 01/11: telas do ERP exibidas em TVs de cada setor produtivo nas duas unidades (RS e SP), com login de exibição somente leitura. _[DOC-091 · §17 Política de uso de dispositivos, telas do modo TV (incluído em 01/11) · ITM-02224 · parte de UNI-00783]_
- `UNI-00783.02` `TEC` `proposto` Requisitos do modo TV: painel na sala do Planejamento com cronograma geral e uma tela por setor, mini PC ou TV box para TV não smart, suportes e rede ou Wi-Fi. _[DOC-091 · §17 Política de uso de dispositivos, telas do modo TV (incluído em 01/11) · ITM-02225 · parte de UNI-00783]_
- `UNI-00951.01` `TEC` `pendente` `conf:media` Checklist de aquisição: notebooks e celulares corporativos para Comercial, Compras e Operação, WhatsApp Business por usuário, integração ao ERP, termo assinado e validação jurídica da Maitê. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo, checklist de aquisição · ITM-02223 · parte de UNI-00951]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`

## Ideias sem compromisso (20)

### CRM · CRM e prospecção (2)

- `UNI-00836` `IDEIA` `proposto` Clientes de LinkedIn, Instagram e WhatsApp passam pela Prospecção para completar o relatório antes da distribuição (proposta). _[DOC-007 · §08 COM-E6 · ITM-00163]_
- `UNI-00852` `IDEIA` `proposto` `rotina-anterior` Melhoria sugerida: ter cliente, razão social e CNPJ padronizados antes de criar o ID do projeto, para evitar grafia errada no nome do cliente. _[DOC-033 · §7.3 item 6 · ITM-01108]_

### REU · Reuniões com IA (1)

- `UNI-00837` `IDEIA` `proposto` O nome "Termômetro da Reunião" e os indicadores do dashboard são propostas. _[DOC-007 · §08 último item · ITM-00164]_

### PRJ · Projetos e memorial (1)

- `UNI-00851` `IDEIA` `proposto` `conf:media` `rotina-anterior` Melhoria sugerida: guardar os scripts geradores no Drive (pacote IMG-MOD-002) e criar lista de checagem pré-V01 do detalhamento com elementos do 3D a confirmar. _[DOC-033 · §7.3 itens 4-5 · ITM-01107]_

### PLA · Planejamento de produção (1)

- `UNI-00845` `IDEIA` `proposto` Substituir a regra fixa da E20 por tabela de tempo de produção por tipo de item, alimentada pelo histórico de previsto x realizado. _[DOC-031 · E20 e Validar · ITM-00746]_

### D3F · Impressão 3D (1)

- `UNI-01492` `IDEIA` `proposto` Para acompanhar fila e status em tempo real, avaliar gerenciadores de farm com API, como SimplyPrint (API em planos pagos), Bambuddy local ou o Bambu Farm Manager. _[DOC-091 · §36 Impressão 3D, Forma de integração · ITM-02404]_

### ALM · Almoxarifado (1)

- `UNI-01437` `IDEIA` `proposto` Sugestão: nos primeiros meses a IA mede o consumo real e propõe o estoque mínimo de cada item, para o seu Marcos e o assistente de São Paulo validarem. _[DOC-091 · §5 Almoxarifado, Estoque mínimo · ITM-01783]_

### EXP · Expedição e qualidade (1)

- `UNI-00838` `IDEIA` `proposto` Proposta: o Portal bloquear a saída do caminhão quando falta item do projeto. _[DOC-015 · §07 EXP-E9 · ITM-00462]_

### POS · Pós-feira (4)

- `UNI-00839` `IDEIA` `proposto` POS-E3: sugestão de enviar a pesquisa 2 dias após o fim da feira, lembrete no 5º dia e coleta encerrada no 10º dia. _[DOC-017 · §07 item 2 (POS-E3) · ITM-00530]_
- `UNI-00840` `IDEIA` `proposto` POS-E10: sugestão de reunião de melhoria mensal nos 6 primeiros meses e depois trimestral. _[DOC-017 · §07 item 5 (POS-E10) · ITM-00533]_
- `UNI-00841` `IDEIA` `proposto` Sugestão de pesquisa rápida interna com a equipe após cada feira (o que travou, o que funcionou). _[DOC-017 · §07 item 6 · ITM-00534]_
- `UNI-00842` `IDEIA` `proposto` Metas de NPS e de satisfação por etapa: sugestão de medir 3 meses antes de fixar metas. _[DOC-017 · §07 item 8 · ITM-00536]_

### MKT · Marketing e acervo (3)

- `UNI-00012.05` `IDEIA` `proposto` `conf:media` Exemplos de collabs: café com gravação da marca, cachaça, energético e vinhos personalizados, souvenirs e kits presente para clientes VIP do cliente. _[DOC-091 · §14 Projeto Collabs com marcas parceiras · ITM-02200 · parte de UNI-00012]_
- `UNI-00843` `IDEIA` `proposto` Sugestão: marca d'água nos arquivos liberados para uso interno. _[DOC-018 · §04 Proteção · ITM-00557]_
- `UNI-00844` `IDEIA` `proposto` Sugestão: fazer as fotos de portfólio no dia do cliente, depois da limpeza e antes da abertura. _[DOC-018 · §07 item 5 (MKT-E5) · ITM-00562]_

### FID · Indicação e fidelidade (2)

- `UNI-00858` `IDEIA` `proposto` Programa de fidelidade (sugestão): pontos proporcionais ao contrato (ex.: 1 ponto a cada R$ 1.000), níveis Bronze, Prata e Ouro, recompensas em serviço, validade (ex.: 24 meses) e extrato na aba do cliente. _[DOC-018 · §05 Programa de fidelidade · ITM-00555]_
- `UNI-00859` `IDEIA` `proposto` Programa de indicação (sugestão): recompensa só quando a indicação vira contrato, benefício de upgrade ao indicado e entrada como cliente de origem indicação no Comercial. _[DOC-018 · §05 Programa de indicação · ITM-00556]_
  - Requisitos separados deste item: `UNI-00859.01`, `UNI-00859.02`, `UNI-00859.03`, `UNI-00859.04`, `UNI-00859.05`

### INC · Incentivo e desempenho (2)

- `UNI-00857` `IDEIA` `proposto` As métricas por etapa e por setor da pesquisa também podem alimentar o programa de incentivo (PLANDEM_PRG-001). _[DOC-017 · §05 Plano de ação · ITM-00528]_
- `UNI-00860` `IDEIA` `proposto` `conf:media` Modelo sugerido combina placar de três pilares (Balanced Scorecard), divisão do ganho (Gainsharing), PLR pela Lei 10.101/2000 e nota do cliente (NPS) como medida de qualidade. _[DOC-023 · §03 Modelo sugerido · ITM-00618]_

### TRP · Transversal (1)

- `UNI-00853` `IDEIA` `proposto` `rotina-anterior` Melhoria sugerida: definir SLAs por etapa do quadro, hoje não definidos. _[DOC-033 · §7.3 item 7 · ITM-01109]_

