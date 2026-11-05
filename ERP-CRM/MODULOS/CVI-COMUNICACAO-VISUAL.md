---
id: ERP-MOD-CVI
titulo: Módulo Comunicação visual
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# CVI · Comunicação visual

36 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (8)

- `UNI-00433` `FLX-MICRO` `vigente` Comunicação visual, CVI-E1: o cliente publica os arquivos (logos, artes, imagens do stand) na área de arquivos da aba do cliente. _[DOC-014 · CVI-E1 · ITM-00401]_
- `UNI-00434` `FLX-MICRO` `vigente` Comunicação visual, CVI-E2: a IA verifica a qualidade dos arquivos (formato, resolução, cor, medidas, sangria e fontes) para ver se estão aptos a imprimir. _[DOC-014 · CVI-E2 · ITM-00402]_
  - Requisitos separados deste item: `UNI-00434.01`
- `UNI-00434.01` `FLX-MICRO` `proposto` Comunicação visual, etapa CVI-E2: a IA confere formato, resolução, cor, medidas, sangria, fontes e corte. _[DOC-091 · §5 Setores produtivos, CVI-E2 · ITM-01931 · parte de UNI-00434]_
- `UNI-00435` `FLX-MICRO` `vigente` Comunicação visual, CVI-E4 e E5: formatação dos arquivos para impressão e para corte. _[DOC-014 · CVI-E4 e CVI-E5 · ITM-00404]_
- `UNI-00436` `FLX-MICRO` `vigente` Comunicação visual, CVI-E6: prova enviada ao cliente para validação pela aba do cliente. _[DOC-014 · CVI-E6 · ITM-00405]_
- `UNI-00484` `FLX-MICRO` `vigente` Sequência de setores da peça: comunicação visual (corte e montagem), elétrica (LED e fonte), teste de acendimento e expedição (embalagem e etiqueta). _[DOC-020 · Seção 04 Sequência de setores · ITM-00582]_
- `UNI-01568` `FLX-MICRO` `vigente` `conf:media` A Carol abre a solicitação no ERP ligada ao item e ao código (com a letra da arte), para preparar arquivo para impressão, criar faca de corte em vetor, corrigir arquivo do cliente com erro ou preparar materiais gráficos. _[DOC-091 · §38 Criação Gráfica, Demandas · ITM-02416]_
- `UNI-01656` `FLX-MICRO` `vigente` As fichas de comunicação visual são geradas depois do contrato, junto com as demais fichas, a partir do detalhamento técnico e com o mesmo código. _[DOC-091 · §27 Ficha técnica de comunicação visual · ITM-02340]_

## Pontos de decisão (3)

- `UNI-00567` `FLX-DECISAO` `vigente` Comunicação visual, CVI-E3: se o arquivo está apto segue; se não, avisa Comunicação visual, comercial e Planejamento, e o cliente tem 1 dia para republicar. _[DOC-014 · CVI-E3 · ITM-00403]_
  - Requisitos separados deste item: `UNI-00567.01`
- `UNI-00568` `FLX-DECISAO` `vigente` Comunicação visual, CVI-E7: se o cliente validou a prova segue para a produção; se não, a Comunicação visual corrige e reenvia a prova. _[DOC-014 · CVI-E7 · ITM-00406]_
- `UNI-01569` `FLX-DECISAO` `vigente` Quando a IA reprova um arquivo do cliente na conferência (CVI-E2) por erro corrigível internamente, o sistema sugere abrir a demanda ao Beto em vez de devolver ao cliente. _[DOC-091 · §38 Criação Gráfica, Gatilho automático (CVI-E2) · ITM-02417]_

## Notificações (3)

- `UNI-00607` `FLX-NOTIF` `vigente` Comunicação visual: a cada dia de atraso do cliente o Portal recalcula o impacto no cronograma de produção, e o Planejamento vê o efeito nas datas das fichas. _[DOC-014 · §04 Cadência dos alertas · ITM-00408]_
  - Requisitos separados deste item: `UNI-00607.01`, `UNI-00607.02`
- `UNI-00607.01` `FLX-NOTIF` `proposto` O planejamento de produção da unidade acompanha as mesmas etapas e recebe alerta quando uma peça atrasa em relação ao cronograma. _[DOC-091 · §26 Comunicação visual, controle por etapa, passo 2 · ITM-02326 · parte de UNI-00607]_
- `UNI-00607.02` `FLX-NOTIF` `proposto` Peça parada numa etapa além do prazo gera alerta ao responsável e ao Planejamento. _[DOC-091 · §26 Comunicação visual, controle por etapa, passo 4 · ITM-02328 · parte de UNI-00607]_

## Módulos e telas (2)

- `UNI-00008` `ESC-MODULO` `vigente` Comunicação visual segue as etapas CVI-E1 a E7 com ok por etapa, manual e ficha técnica; Christian cuida da demanda e da planilha de audiovisual. _[DOC-003 · Mapa, cartão 08 CV e Audiovisual · ITM-00077]_
- `UNI-00788` `ESC-MODULO` `vigente` Comunicação visual tem ok por etapa, modo TV e ficha técnica própria. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00038]_
  - Requisitos separados deste item: `UNI-00788.01`, `UNI-00788.02`

## Perfis e responsáveis (2)

- `UNI-01396` `ESC-PERFIL` `vigente` Comunicação visual tem Carol e Adair no RS; em SP o responsável está a definir; criação gráfica é do Beto nas duas unidades. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00018]_
  - Requisitos separados deste item: `UNI-01396.01`
- `UNI-01396.01` `ESC-PERFIL` `proposto` No Rio Grande do Sul, Carol solicita e controla o planejamento das peças de comunicação visual e Adair, chefe do setor, executa e dá o ok de cada etapa. _[DOC-091 · §26 Comunicação visual, controle por etapa no ERP, responsáveis · ITM-02323 · parte de UNI-01396]_

## Documentos gerados (4)

- `UNI-00689.01` `ESC-DOC` `proposto` A ficha de comunicação visual tem código mais letra, imagem com cotas, descrição, medidas, material e acabamento, processo, fixação, iluminação, instalação, arte vinculada com status CVI, setores e baixa com foto e ok. _[DOC-091 · §27 Ficha técnica de comunicação visual · ITM-02339 · parte de UNI-00689]_
- `UNI-00724` `ESC-DOC` `vigente` Ficha técnica de comunicação visual (modelo ilustrativo em A4): projeto, código do item, unidade e prazos, arte vinculada, imagem com cotas, corte, especificação, sequência de setores e baixa com foto, responsável e QR. _[DOC-020 · Seções 01 a 05 · ITM-00579]_
  - Requisitos separados deste item: `UNI-00724.01`
- `UNI-00724.01` `ESC-DOC` `proposto` Cada item de comunicação visual ganha uma ficha técnica própria (novo modelo, item a desenvolver), no padrão das fichas de móveis, impressa com QR code e campo de foto do item produzido. _[DOC-091 · §27 Ficha técnica de comunicação visual, ficha técnica por item · ITM-02338 · parte de UNI-00724]_
- `UNI-01654` `ESC-DOC` `vigente` O manual de comunicação visual, gerado no detalhamento técnico, é uma tabela com foto ou render do item, descrição com medidas e material, e código do item mais letra (A, B, C…). _[DOC-091 · §27 Ficha técnica de comunicação visual, Manual · ITM-02336]_

## Entidades e campos (1)

- `UNI-00689` `ESC-DADOS` `vigente` Campos da especificação: descrição, medidas, face, corpo lateral, corte, iluminação, fixação, instalação (máscara 1:1), arte vinculada com status CVI-E7, quantidade e embalagem. _[DOC-020 · Seção 03 Especificação · ITM-00580]_
  - Requisitos separados deste item: `UNI-00689.01`

## Dashboards e indicadores (1)

- `UNI-00014.02` `ESC-INDIC` `proposto` O painel em tempo real é um quadro por etapa (colunas CVI-E1 a E7) com as peças de todos os projetos e filtros por projeto, feira, cliente, unidade e responsável. _[DOC-091 · §26 Comunicação visual, controle por etapa no ERP · ITM-02327 · parte de UNI-00014]_

## Requisitos técnicos (1)

- `UNI-00788.02` `TEC` `proposto` `conf:media` O painel tem uma versão em modo TV, para tela grande no setor, aberta por endereço próprio do ERP numa smart TV ou mini PC/TV box com navegador. _[DOC-091 · §26 Comunicação visual, modo TV para o setor · ITM-02330 · parte de UNI-00788]_

## Prazos (3)

- `UNI-00089` `REG-PRAZO` `vigente` Comunicação visual: arquivo reprovado dá ao cliente 1 dia para republicar; na segunda reprovação o comercial liga e orienta o cliente. _[DOC-014 · CVI-E3; §04 Cadência · ITM-00407]_
- `UNI-00567.01` `REG-PRAZO` `proposto` `conf:media` Arquivo não apto (CVI-E3): o cliente tem 1 dia para republicar e, na 2ª vez, o comercial liga. _[DOC-091 · §5 Setores produtivos, CVI-E3; §7 Prazos, republicar arquivo não apto · ITM-01932 · parte de UNI-00567]_
- `UNI-00933.01` `REG-PRAZO` `vigente` Arquivos do cliente: artes de comunicação visual e conteúdos de audiovisual chegam até 20 dias antes do início da feira, e o sistema avisa o cliente antes do prazo. _[DOC-091 · Respostas do Diego, Arquivos do cliente (CVI-E1 e AUD-E7) · ITM-01930 · parte de UNI-00933]_

## Aprovações e alçadas (2)

- `UNI-01580` `REG-APROV` `vigente` Em cada etapa CVI, o responsável de comunicação visual da unidade marca o ok no sistema com data, hora e usuário, e a peça só avança com esse ok. _[DOC-091 · §26 Checklist por etapa · ITM-02325]_
- `UNI-01581` `REG-APROV` `vigente` O Beto sobe o arquivo final (vetor, faca, arquivo de impressão) na ficha do item e dá o ok, e a Carol confere e libera para a etapa seguinte de comunicação visual. _[DOC-091 · §38 Criação Gráfica, Entrega e ok · ITM-02419]_

## Códigos e rastreabilidade (1)

- `UNI-01655` `REG-CODIGO` `vigente` A letra do item é o nome que o arquivo de arte do cliente deve ter ao ser enviado no Portal; o sistema liga cada arte ao item pela letra e avisa se faltar alguma. _[DOC-091 · §27 Ficha técnica de comunicação visual, Manual · ITM-02337]_

## Qualidade (2)

- `UNI-00626` `REG-QUAL` `vigente` Conferência da IA nos arquivos: formato aceito, resolução para o tamanho final, modo de cor para impressão, medidas do projeto com sangria, fontes em curvas e linha de corte separada; a Comunicação visual define os valores. _[DOC-014 · §04 O que a IA confere · ITM-00409]_
- `UNI-01652` `REG-QUAL` `vigente` Cada peça de comunicação visual guarda quem deu cada ok, quando, e os arquivos e provas de cada etapa. _[DOC-091 · §26 Histórico · ITM-02329]_

## Regras operacionais (1)

- `UNI-00788.01` `REG-OPER` `proposto` Cada peça de comunicação visual, com seu código, passa pelas etapas CVI-E1 a E7 dentro do ERP, e nenhum controle paralelo (planilha, WhatsApp, papel) é aceito. _[DOC-091 · §26 Comunicação visual, controle por etapa no ERP · ITM-02322 · parte de UNI-00788]_

## Pendências (2)

- `UNI-00933` `PEND` `pendente` CVI-E1: não foi informada a data limite para o cliente publicar os arquivos pela primeira vez, no cronograma. _[DOC-014 · §07 item 6 (CVI-E1) · ITM-00433]_
  - Requisitos separados deste item: `UNI-00933.01`
- `UNI-00934` `PEND` `pendente` CVI-E2: a Comunicação visual precisa definir os critérios técnicos que a IA confere (formatos, resolução mínima, modo de cor). _[DOC-014 · §07 item 7 (CVI-E2) · ITM-00434]_

