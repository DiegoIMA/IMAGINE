# IMG-PAD-002 Contexto operacional: extrato para desenvolvimento

Extrato do IMG-PAD-002 V02, feito em 04/11/2026 para dar origem aos itens DOC-033. Traz o método, as regras e o glossário técnico. Ficaram de fora, de propósito: conteúdo de jobs (seções 5.1 a 5.5 e 8), pendências de job (seção 9), cadastro de equipe, clientes e pessoas (seções 10.4 e 10.5), preferências de trabalho (seção 11, salvo 11.2). Descreve a rotina anterior ao ERP, com Trello e Drive: serve como origem, e as decisões de Diego prevalecem.

## 1. CONTEXTO E OBJETIVO

### 1.1 Empresa e área
- **Empresa:** Imagine Arquitetura Efêmera. Montadora de estandes e estruturas para feiras e eventos, no Rio Grande do Sul (RS).
- **Solicitante:** Diego [PES-00001], CEO. E-mail pessoal [PES-00036], dono do Google Drive. Profissional: [PES-00037] Trello [PES-00055].
- **Área:** do pós-projeto 3D até a liberação para custos e produção. A projetista (João [PES-00010]) entrega as pranchas AP (apresentação/zoneamento/3D). A partir delas o Diego dita o escopo, e a equipe precisa de memorial, detalhamento técnico e levantamento de materiais para orçar, vender e produzir.
- **Outras pessoas no fluxo:** ver Glossário (seção 10) e o cadastro IMG-CAD-001 (anexo A.2).

### 1.2 Problema que queremos resolver
1. A documentação técnica de cada projeto é demorada e manual:
   - memorial descritivo;
   - detalhamento em pranchas;
   - levantamento de materiais por categoria.
2. Os arquivos não seguiam padrão de nome, versão e histórico, o que dificultava a rastreabilidade.
3. A informação ficava espalhada entre WhatsApp/áudios, Drive e Trello, sem vínculo entre si.
4. O controle de acessos ao Drive e o cadastro de equipe estavam desorganizados.
   - Vários e-mails do domínio @[domínio da empresa] não têm conta Google.

### 1.3 Resultado esperado
- **Por projeto:** o Diego dita o escopo (áudio transcrito, normalmente terminando com "Terminei.") e envia a prancha AP em PDF. O assistente devolve:
  1. **Memorial descritivo** (.xlsx no modelo Imagine, com logo).
  2. **Detalhamento técnico D01** (PDF A3 com várias folhas, carimbo e logo).
  3. **Levantamento de materiais por categoria** (.xlsx com os códigos do memorial, fórmulas e matriz de rastreabilidade).
  4. Os três arquivos salvos na pasta do projeto no Drive.
  5. Os links colocados no card do Trello, com menção à equipe responsável pela próxima etapa.
- **Base da empresa:**
  - padrões documentados (IMG-PAD-001);
  - cadastro de equipe e controle de acesso (IMG-CAD-001);
  - logotipo oficial (IMG-MOD-001);
  - registro de contexto/handoff (IMG-PAD-002).
  - Tudo rastreável e versionado.
- **Objetivo implícito:** que outro agente ou pessoa consiga continuar o trabalho só com os documentos. É o motivo deste arquivo.

---

## 2. PROCESSO(S) MAPEADO(S)

> Prazos/SLAs formais entre etapas: **não definido** (ninguém definiu SLA). As datas-limite conhecidas estão em 2.8.

### 2.1 Visão macro — fluxo do quadro Trello "Imagine"
O macroprocesso da empresa segue as listas do quadro Trello "Imagine". A ordem e os responsáveis abaixo vêm dos nomes das listas:

1. PROJETOS / PACOTES / EVENTOS
2. PADRÕES (contém o card modelo)
3. PLANEJAMENTO DE MKT
4. AGUARDANDO PARA ENTRADA
5. CRIAÇÃO DE PROJETO ARQUITETURA
6. VALIDAÇÃO CRIATIVA INTERNA / REUNIÃO COM CLIENTE
7. ALTERAÇÕES DE PROJETO
8. PROJETO AGUARDANDO MEMORIAL PARA CUSTOS
9. CUSTOS
10. CUSTOS DIEGO (revisar)
11. INFORMAÇÕES INCOMPLETA PARA INICIAR O CUSTO (Carol)
12. FORMAÇÃO DE PREÇO DE VENDA E PROPOSTA (Maite move)
13. EM VALIDAÇÃO COM CLIENTE (Anderson e Fran)
14. APROVADO (Érika move daqui para os próximos)
15. EM DETALHAMENTO
16. Listas de produção, que existem em paralelo:
    - DEMANDAS DE PRODUÇÃO;
    - MONTAGEM EM ANDAMENTO / ext;
    - DEMANDA EM PRODUÇÃO EM SP - [PES-00100];
    - DEMANDAS PRODUÇÃO [PES-00099];
    - DEMANDAS EM PRODUÇÃO AUDIOVISUAL.
17. DEMANDAS DE PRODUÇÃO FINALIZADAS / DEMANDAS CANCELADAS
18. FEEDBACKS MONTAGEM / PÓS FEIRA

IDs das listas: seção 3.4. O assistente atua principalmente nas etapas 8 → 13 (memorial para custos e validação) e 15 (detalhamento). Os processos abaixo detalham essa atuação.

---

### 2.2 PROCESSO P1 — Elaboração do memorial descritivo

| Campo | Conteúdo |
|---|---|
| Nome | P1 — Memorial descritivo do projeto |
| Gatilho de início | Diego envia a prancha do projeto (PDF AP02/AP06 com zoneamento e 3D, ou imagens 3D) e dita o escopo em áudio/texto ("Vamos fazer um memorial descritivo…", fim com "Terminei.") |
| Fim | Memorial .xlsx gerado, conferido (render em PDF), salvo no Drive e informado ao Diego, com as dúvidas em "A CONFIRMAR" |
| Responsáveis | Diego (dita, valida e corrige) · Claude (gera e versiona) · João [PES-00010] (projetista, autor das pranchas AP) |
| Entradas | Prancha AP (PDF), áudio/texto do Diego, modelo `V01_MEMORIAL_DESCRITIVO.xlsx`, logo IMG-MOD-001, dados de cliente/evento (do áudio ou do card Trello) |
| Saídas | `[CLIENTE]-[FEIRA][AA]_MEM-001_MEMORIAL-DESCRITIVO_VNN.xlsx` (+ PDF de conferência, uso interno) |
| Sistemas | Python/openpyxl, LibreOffice (conversão para PDF), Google Drive (conector), Trello (conector) |
| Documentos | IMG-PAD-001 (padrões), modelo de memorial, prancha AP |

**Passo a passo**
1. **Diego** envia o PDF e dita o escopo.
2. **Claude** lê o PDF: zoneamento, medidas, renders e quantidades visíveis.
3. **Claude** cruza a leitura com o áudio. Quando os dois divergem, vale o que o Diego ditou, e a divergência entra como "A CONFIRMAR" na linha ÁREA e/ou em OBSERVAÇÕES.
4. **Claude** define o ID:
   - formato `[CLIENTE]-[FEIRA][AA]_MEM-001`;
   - quando o cliente é desconhecido, usa o nome do projeto ([projeto]).
5. **Claude** monta a planilha a partir do modelo:
   1. **Cabeçalho.** Logo em B1. Evento, cliente, contato, local, período, referência do projeto e a linha `DOC | VERSÃO | DATA`.
   2. **Bloco por ambiente.** Título do bloco, linha ÁREA e cabeçalho de colunas.
   3. **Grupos.** Cada grupo (PISO, PAREDES…) tem célula mesclada e texto rotacionado.
   4. **Itens.** Numeração `grupo.item` contínua no documento.
   5. **Fechamento.** Linha de OBSERVAÇÕES e aba HISTÓRICO.
6. **Claude** gera o PDF via LibreOffice e confere visualmente: quebras, textos cortados, altura do grupo.
7. **Claude** sobe o .xlsx para a pasta do projeto no Drive.
   - Se a pasta não existir, cria `[CLIENTE] - [FEIRA] [AAAA]` dentro de IMAGINE.
   - Compartilha com os 4 e-mails da equipe (ver P6).
8. **Claude** informa o Diego: o que foi gerado, as premissas adotadas e a lista do que está "A CONFIRMAR".
9. **Diego** corrige por áudio. Cada correção vira uma **nova versão** (V02, V03…), com uma linha nova no HISTÓRICO. A versão anterior nunca é apagada.

**Decisões e exceções**
- **Item sem medida informada.** A coluna DIMENSÕES recebe "-", "conforme projeto/detalhamento" ou "A CONFIRMAR".
- **Item fornecido pelo cliente.** Entra no memorial com o texto "FORNECIDO PELO CLIENTE".
- **Item opcional.** Entra no memorial marcado como opcional.
- **Diego se corrige no meio do áudio.** Vale a última versão dita.
- **Termo transcrito errado.** O assistente interpreta.
  - "bagulho" = bagum.
  - "HG de 150" = HQI 150W.
- **Cor ou modelo não definido.** O assistente adota a referência do 3D e marca "a definir".
  - Exemplo: "3D: preto".

---

### 2.3 PROCESSO P2 — Detalhamento técnico (pranchas D01)

| Campo | Conteúdo |
|---|---|
| Nome | P2 — Detalhamento técnico D01 |
| Gatilho | Diego pede "detalhar… no mesmo padrão" depois do memorial (ou junto, como em [job]) |
| Fim | PDF A3 multi-folha aprovado pelo Diego ("perfeito"), salvo no Drive |
| Responsáveis | Claude (desenha e versiona) · Diego (revisa e corrige) |
| Entradas | Memorial (versão vigente), prancha AP, correções do Diego (às vezes um print/foto marcado do D01 anterior) |
| Saídas | `[ID-PROJETO]_PRJ-001_DETALHAMENTO-D01_VNN.pdf` |
| Sistemas | Python/matplotlib (PdfPages), pdftoppm/PIL (prévia), Drive |
| Documentos | Memorial, AP, logo IMG-MOD-001 (logo/logo_rgb.png) |

**Passo a passo**
1. **Claude** define o sistema de coordenadas em cm.
2. **Claude** define as folhas. O padrão é de 6 a 7 folhas:
   1. Planta baixa + perspectiva isométrica + legenda com **todos os códigos do memorial**.
   2. Elétrica/iluminação: quadro, réguas, fontes, cabeamento indicativo, metragem de neon/LED, carga estimada.
   3. Vistas/elevações externas: frontal, posterior, laterais.
   4. a 7. Detalhes por elemento: paredes, cenário, palco, salas, muretas, mobiliário.
3. **Claude** desenha cada folha com o carimbo (selo), que contém:
   - logo;
   - "DETALHAMENTO TÉCNICO D01";
   - projeto, feira, medidas e título da folha (até cerca de 30 caracteres);
   - DOC, versão e data;
   - "MEDIDAS EM cm", "FOLHA nn/NN" e "ESCALA: S/ ESC.";
   - um quadro ESPECIFICAÇÃO com os textos por código.
4. **Claude** gera prévias PNG e faz a autoconferência:
   - sobreposições;
   - textos fora do quadro;
   - caracteres não suportados (², ≈ e setas viram "m2", "aprox." e "<-"/"->").
5. **Claude** entrega o PDF ao Diego e lista as premissas.
6. **Diego** revisa e corrige, por áudio ou com foto/print anotado. Cada rodada gera um novo V (V02, V03…).
   - Se a correção muda escopo ou quantidade, o memorial também ganha nova versão.
7. **Diego** aprova ("perfeito"). O PDF vai para o Drive.
   - Acima de cerca de 20 KB, o conector não consegue subir o arquivo. O PDF é enviado ao Diego, que faz o upload manual.

**Decisões e exceções**
- **Algo aparece no 3D mas não no memorial.** Desenha como "SUGERIDO / não previsto no memorial" e marca A CONFIRMAR.
- **Conflito geométrico.** Sinaliza na prancha com "ATENÇÃO" e pergunta ao Diego.
- **Norma aplicável.** Aplica e cita a norma.
  - Exemplo: rampa NBR 9050 com i ≤ 8,33%, comprimento de [medida] para desnível de [medida], corrimão duplo [medida].

---

### 2.4 PROCESSO P3 — Levantamento de materiais por categoria

| Campo | Conteúdo |
|---|---|
| Nome | P3 — Levantamento por categoria de produção |
| Gatilho | Diego pede "gera uma planilha… de levantamento de materiais por categoria" (normalmente após memorial + D01) |
| Fim | .xlsx recalculado com 0 erros, MATRIZ confirmando 100% dos itens do memorial; salvo no Drive |
| Responsáveis | Claude (gera) · equipe de custos (preenche fornecedor e custo — Carol/Diego, conforme quadro) |
| Entradas | Memorial (versão vigente) e detalhamento D01 (versão vigente) |
| Saídas | `[ID-PROJETO]_ORC-001_LEVANTAMENTO-POR-CATEGORIA_VNN.xlsx` |
| Sistemas | Python/openpyxl, recalc via LibreOffice (`/mnt/skills/public/xlsx/scripts/recalc.py <arquivo> 60`) |

**Passo a passo**
1. **Claude** lê o memorial e confere o número de itens.
2. **Claude** monta as categorias fixas. [job] tem uma categoria extra:
   - 01 TAPEÇARIA;
   - 02 COMUNICAÇÃO VISUAL;
   - 03 LOCAÇÃO DE MÓVEIS;
   - 04 PRODUÇÃO DE MARCENARIA;
   - 05 VIDRAÇARIA;
   - 06 AUDIOVISUAL;
   - 07 ELÉTRICA;
   - 08 DOCUMENTAÇÃO DA FEIRA;
   - 09 FORNECIDO PELO CLIENTE (só em [job]).
3. **Claude** preenche cada linha:
   - **cópia do memorial, sem alteração:** código, nome, descrição, quant. e dimensões;
   - **colunas do levantamento:** serviço nesta categoria, unid, qtd. p/ orçamento, memória de cálculo, fornecedor (amarelo, a preencher), custo unit. (amarelo), custo total (fórmula) e obs.
   - O mesmo item pode aparecer em mais de uma categoria. Exemplo: parede = marcenaria + tapeçaria.
4. **Claude** adiciona os itens complementares, que não estão no memorial mas são necessários.
   - Exemplos: quadro, disjuntores, cabos, folga, mão de obra, documentação da feira.
   - Código `NN-Ck`, fundo lilás.
5. **Claude** cria as abas de apoio:
   - **RESUMO:** categoria, escopo, linhas do memorial, complementares, total e %; categoria vazia aparece como "NÃO SE APLICA";
   - **MATRIZ:** item do memorial x categorias, com o teste "todos presentes: SIM";
   - **HISTÓRICO.**
6. **Claude** recalcula a planilha e exige 0 erros de fórmula.
7. **Claude** sobe para o Drive. Arquivos de 49–52 KB vão por upload manual do Diego.

**Decisões e exceções**
- Categoria sem itens fica na planilha, sem ser apagada, e aparece como "NÃO SE APLICA". Exemplo: VIDRAÇARIA de [job].
- Item fornecido pelo cliente entra na categoria 09 com custo unitário 0.
- Quantidade que depende de confirmação fica vazia (amarela) e vai para OBS.
- Quando o memorial muda, o levantamento ganha nova versão com os mesmos códigos.

---

### 2.5 PROCESSO P4 — Publicação: Drive + Trello + menção à equipe

| Campo | Conteúdo |
|---|---|
| Gatilho | Entregável aprovado ou pedido explícito ("coloque no cartão do Trello … e marque a Erika e a Fran") |
| Fim | Links do Drive na descrição do card + comentário com @menções |
| Responsáveis | Claude (executa) · Diego (pede/indica card e pessoas) · pessoas mencionadas (próxima etapa) |
| Sistemas | Drive (conector, conta [PES-00036]) · Trello (conector, conta **Maite [PES-00062]**) |

**Passo a passo**
1. Confirmar que o arquivo está no Drive, buscando pelo título, e anotar o ID.
2. Localizar o card pelo nome dito pelo Diego, usando trelloSearch. Ler a descrição atual com trelloReadCard.
3. **Acrescentar** à descrição, sem apagar o conteúdo original, uma seção com os links.
   - Formato: `#### Documentos – [projeto] (dd/mm/aaaa)`
   - Links: `[link] mais o link da pasta.
4. Comentar no card com @username das pessoas indicadas, incluindo:
   - o que está pronto;
   - os links;
   - as revisões feitas;
   - os pontos em aberto.
5. Informar o Diego.

**Exceções**
- O conector Trello **não anexa arquivos** e **não adiciona membros**. Por isso o vínculo é sempre feito com link + menção em comentário.
- Se o pedido se repetir com o trabalho já feito (como aconteceu com [job]), não duplicar o comentário. Avisar o Diego que já foi feito.
- Card novo de projeto:
  1. Copiar a descrição do card modelo "CLIENTE / FEIRA - DATA" (lista PADRÕES).
  2. Preencher os campos; campo sem dado fica `XXXXXX`.
  3. Colocar o card na lista indicada pelo Diego. O padrão até agora foi EM VALIDAÇÃO COM CLIENTE.
- Atas de reunião vão nos comentários do card, marcando @board (instrução da Érika no card modelo).

---

### 2.6 PROCESSO P5 — Revisão / versionamento (transversal)
1. Toda alteração pedida gera um novo arquivo com V+1. A versão anterior nunca é apagada nem sobrescrita.
2. A aba ou tabela HISTÓRICO ganha uma linha: `VERSÃO | DATA | AUTOR | ALTERAÇÃO`.
3. Quando a alteração afeta mais de um entregável, versionar todos em cascata.
   - Exemplo de [job]: D01 V02 → MEM V02 → D01 V03 → MEM V03 → ORC V01.
4. Os scripts geradores são guardados por versão: body_v01.py, body_v02.py, build_mem_v2.py…
5. Sempre ler a versão de maior número.

---

### 2.7 PROCESSO P6 — Cadastro de equipe e controle de acesso ao Drive

| Campo | Conteúdo |
|---|---|
| Gatilho | Diego pede atualização da "planilha de acessos/equipe" ou envia lista/print de colaboradores |
| Fim | Nova versão de IMG-CAD-001 no Drive + compartilhamentos executados/verificados |
| Entradas | Pedido do Diego, "Levantamento de Dados dos Colaboradores – Nova Apresentação de E-mail (20/10/2026)" |
| Saída | `IMG-CAD-001_EQUIPE_VNN.md` (vigente **V08**) |

**Passo a passo**
1. Ler a versão vigente do cadastro.
2. Aplicar a mudança:
   - novo registro com ID `EQP-NNN` sequencial, nunca reutilizado;
   - pessoa desligada vira INATIVO, nunca é apagada;
   - exceção: quem já tinha saído antes do cadastro ([pessoa], [pessoa]) não entra e fica anotado em observações.
3. Compartilhar no Drive somente quando o Diego pedir acesso.
   - Pedido "só atualizar a planilha" = não mexer no Drive.
4. Usar e-mail **pessoal (Gmail)** quando o e-mail @[domínio da empresa] não tiver conta Google.
   - Esse caso dá o erro "Request contains an invalid argument".
5. Verificar as permissões com get_file_permissions e registrar na tabela "Controle de acesso ao Drive".
6. Publicar a nova versão.

**Regra de acesso vigente (21/10/2026)**
- **PASTA PRINCIPAL IMAGINE:** somente Diego (dono) e Pedro (admin master). O acesso do Pedro está pendente.
- **IMAGINE (projetos):** EDITOR para quatro e-mails, com visão completa de todas as pastas de projeto:
  - Francine — [PES-00038];
  - Érika — [PES-00042];
  - Marilia — [PES-00040];
  - Anderson — [PES-00044], caixa compartilhada com o Christian.
- Enquanto o Diego não compartilhar manualmente a pasta IMAGINE, **toda nova pasta de projeto** deve ser compartilhada com esses 4 e-mails.

---

### 2.8 Prazos e datas conhecidas

SLAs internos por etapa (ex.: tempo para memorial, detalhamento, custo): **não definido**.

---

## 3. FLUXO E CONTROLE

### 3.1 Fluxograma (Mermaid)

```mermaid
flowchart TD
    A([Diego envia prancha AP / 3D + áudio do escopo]) --> B[Claude lê PDF e cruza com o áudio]
    B --> C{Divergência áudio x prancha<br/>ou dado faltando?}
    C -- Sim --> C1[Adota o que o Diego disse<br/>e marca A CONFIRMAR]
    C -- Não --> D
    C1 --> D[Gera MEMORIAL V01 no modelo<br/>logo + DOC/VERSÃO/DATA + HISTÓRICO]
    D --> E[Render PDF e autoconferência]
    E --> F{Pasta do projeto existe no Drive?}
    F -- Não --> F1[Cria pasta CLIENTE - FEIRA AAAA em IMAGINE<br/>e compartilha com 4 e-mails da equipe]
    F -- Sim --> G
    F1 --> G[Upload do .xlsx]
    G --> H[Reporta ao Diego + lista A CONFIRMAR]
    H --> I{Diego corrige?}
    I -- Sim --> I1[Nova versão V+1<br/>+ linha no HISTÓRICO] --> E
    I -- Não / pede detalhamento --> J[Gera DETALHAMENTO D01 V01<br/>6-7 folhas A3 com carimbo e logo]
    J --> K[Prévia PNG e autoconferência<br/>sobreposição, textos, caracteres]
    K --> L[Entrega ao Diego + premissas]
    L --> M{Diego corrige?}
    M -- Sim --> M1{Correção muda escopo/quantidade?}
    M1 -- Sim --> M2[Nova versão do MEMORIAL também] --> M3
    M1 -- Não --> M3[Novo D01 V+1] --> K
    M -- "Perfeito" --> N[Gera LEVANTAMENTO POR CATEGORIA<br/>códigos do memorial + complementares lilás]
    N --> O[Recalcula: 0 erros?<br/>MATRIZ: todos os itens presentes?]
    O -- Não --> N
    O -- Sim --> P{Arquivo > ~20KB?}
    P -- Sim --> P1[Envia ao Diego para upload manual no Drive]
    P -- Não --> P2[Upload pelo conector]
    P1 --> Q
    P2 --> Q[Links na descrição do card Trello<br/>sem apagar o original]
    Q --> R[Comentário com @menções<br/>ex.: [PES-00058] [PES-00056]]
    R --> S([Próxima etapa no quadro: custos / validação / produção])
```

### 3.2 Fluxograma do controle de acesso (Mermaid)

```mermaid
flowchart TD
    A([Pedido do Diego sobre equipe/acesso]) --> B{Pede acesso no Drive<br/>ou só atualizar cadastro?}
    B -- Só cadastro --> C[Nova versão IMG-CAD-001, sem mexer no Drive]
    B -- Acesso --> D{E-mail tem conta Google?}
    D -- Não ("invalid argument") --> D1[Usar e-mail pessoal Gmail do cadastro]
    D -- Sim --> E
    D1 --> E{Pasta criada pelo conector?}
    E -- Não (IMAGINE / PASTA PRINCIPAL:<br/>"caller does not have permission") --> E1[Compartilhar subpastas uma a uma<br/>+ pendência manual para o Diego]
    E -- Sim --> F[share_file como writer]
    E1 --> G
    F --> G[Verificar com get_file_permissions]
    G --> H[Nova versão IMG-CAD-001 com tabela de controle]
```

### 3.3 Pontos de controle, aprovações e conferências

| Etapa | Controle | Quem | Como se acompanha |
|---|---|---|---|
| Memorial | Conferência visual do render PDF (texto cortado, altura do grupo, numeração) | Claude | Prévia PDF/PNG |
| Memorial | Validação do conteúdo | Diego | Resposta no chat ("perfeito" = aprovado; correção = nova versão) |
| Detalhamento | Autoconferência por prévia PNG (contact sheet) | Claude | Imagens antes de entregar |
| Detalhamento | Legenda com todos os códigos do memorial | Claude | Folha 01 |
| Detalhamento | Aprovação | Diego | "perfeito" / foto anotada com correções |
| Levantamento | Recalc LibreOffice sem erros (#REF!, #DIV/0! etc.) | Claude | Saída do recalc.py (`total_errors: 0`) |
| Levantamento | MATRIZ: 100% dos itens do memorial em ≥1 categoria | Claude | Linha final "todos presentes: SIM" |
| Levantamento | Conferência de quantitativos (assert do nº de itens do memorial no script) | Claude | Script falha se o memorial mudar |
| Drive | Tamanho do arquivo após upload = tamanho local | Claude | `fileSize` no retorno do create_file |
| Drive | Permissões | Claude | get_file_permissions |
| Trello | Card certo + descrição preservada + menção | Claude | trelloReadCard após escrever |
| Validação com cliente | Proposta/projeto | Anderson e Fran (lista EM VALIDAÇÃO COM CLIENTE) | Quadro Trello |
| Preço/proposta | Formação de preço | Maite | Quadro Trello |
| Custos | Revisão | Diego (lista CUSTOS DIEGO) | Quadro Trello |
| Pós-aprovação | Movimentação para produção | Érika | Quadro Trello |

Indicadores formais (KPIs): **não definido**. Indicadores operacionais usados de fato:
- número de itens do memorial;
- erros de fórmula = 0;
- cobertura da MATRIZ = 100%;
- número de versões por entregável;
- itens "A CONFIRMAR" em aberto.

### 3.4 Trello — referência técnica
- **Conta do conector:** Maite, `[PES-00062]`, `ari:cloud:trello::user/[PES-00067]`.
  - A conta [PES-00055] NÃO enxerga o quadro operacional. Foi por isso que o conector passou a usar a conta da Maite.

- **Membros do quadro** (para @menção):

| Nome | Username | ARI user (sufixo) |
|---|---|---|
| Maite | [PES-00062] | [PES-00067] |
| Caroline | [PES-00060] | [PES-00068] |
| Diego [PES-00001] | [PES-00055] | [PES-00069] |
| Francine [PES-00004] | [PES-00056] | [PES-00070] |
| Marilia [PES-00005] | [PES-00057] | [PES-00071] |
| [pessoa] (desligada; remoção pendente) | [PES-00066] | [PES-00072] |
| Anderson [PES-00003] | [PES-00064] | [PES-00073] |
| Érika [PES-00006] | [PES-00058] | [PES-00074] |
| [PES-00102] [PES-00016] | [PES-00065] | [PES-00075] |

### 3.5 Google Drive — referência técnica
- **Conta do conector:** [PES-00036], dona de tudo. Parent raiz "Meu Drive" = `[id-drive]`.

- **Links:**
  - pasta: `[link]
  - arquivo: `[link]
  - Mover um arquivo de pasta no Drive **não muda o ID**, então os links do Trello continuam válidos.
- **Upload pelo conector:**
  - .md: `textContent` + `contentMimeType: text/markdown` + `disableConversionToGoogleType: true`.
  - .xlsx/.pdf: `base64Content` + `disableConversionToGoogleType: true`.
  - Limite prático: base64 acima de ~19–22 KB não é transcrito com confiabilidade. Nesse caso, enviar ao Diego para upload manual.

---

## 4. METODOLOGIA E LÓGICA

### 4.1 REGRA FIXA — rastreabilidade
Mandato do Diego, nas palavras dele: **"TODO MODELO DE DADOS E ARQUIVOS CRIADOS PRECISAM SEGUIR UM FORMATO PARA RASTREABILIDADE."**

1. **Nome do arquivo.** Formato `[ID]_[NOME-DO-DOCUMENTO]_V[NN].[ext]`.
   - Sem acento e sem espaço; palavras separadas por hífen.
   - Versão sempre com 2 dígitos.
2. **ID.**
   - Documento geral da empresa: `IMG-[TIPO]-NNN`.
   - Documento de projeto: `[CLIENTE]-[FEIRA][AA]_[TIPO]-NNN`. Exemplos: `[cliente]-[feira]26_MEM-001`, `[cliente]-[feira]26_PRJ-001`.
   - Tipos:

     | Sigla | Significado |
     |---|---|
     | CAD | cadastro |
     | PAD | padrão |
     | MOD | modelo |
     | MEM | memorial descritivo |
     | ATA | ata de reunião |
     | ORC | orçamento/custos (inclui levantamento) |
     | PRJ | projeto/3D (inclui detalhamento) |

3. **Cabeçalho.**
   - .md: front-matter com `id, titulo, tipo, versao, status, criado_em, criado_por, atualizado_em, atualizado_por, local`.
   - Planilha: a linha `DOC: [ID] | VERSÃO: VNN | DATA: dd/mm/aaaa` + aba HISTÓRICO.
   - PDF: o mesmo conteúdo vai no carimbo.
4. **Histórico.** Tabela `VERSÃO | DATA | AUTOR | ALTERAÇÃO`, no fim do arquivo ou em aba própria.
5. **Versionamento.** Toda mudança cria um novo arquivo. Versões antigas nunca são apagadas.
6. **Registros.** IDs sequenciais que nunca são reutilizados (EQP-NNN). Quem sai vira INATIVO.
7. **Segurança.** Senhas e chaves não vão para o Drive.
8. **Logo.** Todo documento leva o logotipo IMG-MOD-001 (IMG-PAD-001 V02, item 1.6).
   - Planilha: canto superior esquerdo, em todas as abas.
   - PDF: no carimbo, à esquerda do título, em todas as folhas.
   - Não distorcer, recolorir nem recortar.

### 4.2 Modelo do memorial (especificação)
- **Origem:** `V01_MEMORIAL_DESCRITIVO.xlsx`, enviado pelo Diego, com aba única. Está no pacote IMG-MOD-002 como `modelo/V01_MEMORIAL_DESCRITIVO.xlsx`.
- **Formatação:**
  - fonte Century Gothic 9 pt; título de bloco 11 pt negrito;
  - bordas finas;
  - alinhamento vertical centralizado, com quebra de texto;
  - orientação paisagem.
- **Colunas (B→G):** `GRUPO | ÍTEM | NOME | DESCRIÇÃO | QUANT | DIMENSÕES`. Larguras: A 1,09 · B 12,09 · C 6,36 · D 19 · E 60,18 · F 10,45 · G 16,54.
- **Linha 1:** B:G mesclado, fundo cinza (theme 0, tint −0,15). Contém evento, cliente, contato, local, período, referência e DOC/VERSÃO/DATA. Logo ancorado em B1 (126x33 px).
- **Por ambiente:**
  1. título (B:G mesclado, fundo verde theme 9 tint 0,4, 11 pt negrito);
  2. linha ÁREA (cinza);
  3. cabeçalho de colunas;
  4. itens.
- **GRUPO:** célula da coluna B mesclada na vertical, texto rotacionado, negrito. Altura mínima do grupo: `need = len(nome)*7.5 + 8` pt, para o rótulo não quebrar.
- **Padrões de escrita:**
  - medidas: `6,00m x 2,70m`;
  - área: `18,00m²`;
  - altura na descrição: `h= 2,70m`;
  - itens com 3 medidas: `C x P x A`, como em `1,00m x 1,00m x 0,50m`.
- **Implementação:**
  - openpyxl copia os estilos das células B1/B2/B3/B4/B5..G5 do modelo;
  - funções `band(text, ref, h)`, `header()`, `group(name, items)`;
  - `load_workbook` **descarta imagens**, então o logo é reinserido sempre que o arquivo é gerado.

### 4.3 Detalhamento (lógica de desenho)
- **Base técnica:** matplotlib + PdfPages, A3 paisagem, com coordenadas em cm do projeto.
- **Funções** (head.py), nesta ordem: `new_sheet(title, folha, total)` cria a folha com carimbo e logo; as demais desenham elementos:

  | Função | Desenha |
  |---|---|
  | `ax_at` | área de desenho |
  | `box` | retângulo |
  | `dim` | cota |
  | `tag` | etiqueta circular com código; r=36 em [job], 22 em [job] |
  | `note` | texto; usa `k.setdefault('color', INK)` para evitar kwarg duplicado |
  | `legend` | legenda |
  | `iso` / `iso_box` | perspectiva isométrica |

- **Funções do body.py:**

  | Função | Desenha |
  |---|---|
  | `tagc` / `legendc` | etiqueta/legenda com código do memorial em string |
  | `ibox` | isométrico com zorder por profundidade |
  | `letreiro` | letreiro via TextPath DejaVu Sans |
  | `neon` / `ledline` | linhas de neon/LED |
  | `spec(fr, text)` | quadro ESPECIFICAÇÃO, com va='top' em y=0,895 |

- **Fontes:**
  - `pdf.use14corefonts=True` (Helvetica) deixa o PDF pequeno, mas não renderiza ², ≈ nem setas. Usar "m2", "aprox." e "<-"/"->".
  - O título no carimbo deve ter até cerca de 30 caracteres.
- **Folha 01:** a legenda lista **todos os códigos do memorial**, com descrição curta e medida em cm.

### 4.4 Levantamento (regras e fórmulas)
- **Custo total:** `=IF(OR(H="",K=""),0,H*K)`, onde H = qtd p/ orçamento e K = custo unit. Total da categoria = soma da coluna L. O RESUMO puxa os totais das abas (vínculo verde) e calcula o % do total geral.
- **Cores:**
  - amarelo = preencher;
  - azul = valor digitado;
  - verde = vínculo com outra aba;
  - lilás = complementar `NN-Ck`.
- **Folga de cabos:** 10% da soma das linhas cujo serviço contém "Cabo".
  - Bug corrigido em [job]: o item [item] se chamava "...cabo..." e entrava na soma. Foi renomeado para "[item]", com "cabo" minúsculo fora do critério.
- **Regras gerais:**
  - Os campos do memorial (código, nome, descrição, quant., dimensões) **nunca são alterados**.
  - Toda quantidade calculada tem a "MEMÓRIA DE CÁLCULO" explícita.

### 4.5 Por que esse método
- **O memorial é a "fonte única" de códigos.** Detalhamento e levantamento usam os mesmos códigos (1.1, 2.1…), o que garante rastreabilidade ponta a ponta: memorial → prancha → custo. A MATRIZ comprova a cobertura.
- **"A CONFIRMAR" explícito** em vez de inventar dado. O Diego valida rápido e nada se perde.
- **Versionamento por arquivo novo** (e não sobrescrita), por exigência da REGRA FIXA. Permite auditoria.
- **Formato .md para padrões e cadastros:** o Diego perguntou qual formato gasta menos tokens, e texto simples é o mais barato de ler e atualizar. **.xlsx para memorial e levantamento**, para manter o modelo da empresa. **PDF para pranchas.**
- **Geração por script** (Python): reprodutível e rápida de versionar. Cada correção = rodar o script com o ajuste.

---

# IMG-PAD-001 — PADRÕES DE FUNCIONAMENTO IMAGINE

Fonte oficial das regras de trabalho. Consultar antes de criar qualquer arquivo, card ou pasta.

## 1. REGRA FIXA — RASTREABILIDADE

Todo modelo de dados e todo arquivo criado segue este formato.

### 1.1 Nome do arquivo
`[ID]_[NOME-DO-DOCUMENTO]_V[NN].[extensão]`

- Sem acentos e sem espaços no nome; palavras separadas por hífen.
- Versão sempre com 2 dígitos (V01, V02...). Nova versão = novo arquivo; a versão anterior não é apagada.

### 1.2 Códigos de ID
| ESCOPO | FORMATO | EXEMPLO |
|---|---|---|
| Documentos gerais da Imagine | IMG-[TIPO]-NNN | IMG-CAD-001 (cadastro de equipe) |
| Documentos de projeto | [CLIENTE]-[FEIRA][AA]_[TIPO]-NNN | [cliente]-[feira]26_MEM-001 |

Tipos: CAD = cadastro · PAD = padrão · MOD = modelo · MEM = memorial descritivo · ATA = ata de reunião · ORC = orçamento/custos · PRJ = projeto/3D.

### 1.3 Cabeçalho obrigatório
- Arquivos .md / .txt: bloco no topo com id, titulo, tipo, versao, status, criado_em, criado_por, atualizado_em, atualizado_por, local.
- Planilhas: linha "DOC: [ID] | VERSÃO: VNN | DATA: dd/mm/aaaa" no cabeçalho + aba HISTÓRICO.

### 1.4 Histórico obrigatório
Todo arquivo termina (ou tem aba) com tabela: VERSÃO | DATA | AUTOR | ALTERAÇÃO.

### 1.5 Registros
Cada linha de cadastro tem ID sequencial que nunca é reutilizado (ex.: EQP-001). Registros desativados ficam como INATIVO, nunca apagados.

### 1.6 Identidade visual — logotipo obrigatório
Todo documento entregue (memorial descritivo, levantamento de materiais, detalhamento técnico, orçamento, proposta) leva o logotipo da Imagine.

- Arquivo oficial: **IMG-MOD-001_LOGO-IMAGINE_V01.png** (PASTA PRINCIPAL IMAGINE) — Drive ID [id-drive].
- Planilhas (.xlsx): logo no canto superior esquerdo do cabeçalho, em todas as abas.
- Pranchas / PDF (detalhamento): logo no carimbo (selo), à esquerda do título da prancha, em todas as folhas.
- Não distorcer, recolorir ou recortar o logo. Mudança de logotipo = nova versão do IMG-MOD-001.

## 2. ESTRUTURA DE PASTAS (GOOGLE DRIVE)

PASTA PRINCIPAL IMAGINE/ ← padrões, cadastros, modelos (.md/.txt/.png)
├── IMG-CAD-001_EQUIPE_Vxx.md
├── IMG-PAD-001_PADROES_Vxx.md
├── IMG-MOD-001_LOGO-IMAGINE_Vxx.png
└── IMAGINE/ ← projetos
    └── [CLIENTE] - [FEIRA] [AAAA]/ ex.: [cliente] - [feira] 2026

- Cada projeto tem sua pasta; acesso de EDITOR para a equipe do projeto (ver IMG-CAD-001, coluna PROJETOS).
- Dono das pastas: [PES-00036]
- Senhas e chaves de acesso NÃO são salvas no Drive.

## 3. MEMORIAL DESCRITIVO

- Modelo: planilha padrão Imagine (Century Gothic; colunas GRUPO | ÍTEM | NOME | DESCRIÇÃO | QUANT | DIMENSÕES).
- Cabeçalho: logotipo Imagine (item 1.6), evento, cliente, contato, local, período + linha DOC/VERSÃO/DATA.
- Um bloco por ambiente (ex.: área geral, sala de reunião, palco), cada um com título e ÁREA.
- Itens numerados por grupo (1.1, 1.2, 2.1...).
- Medidas não informadas pelo cliente/Diego ficam marcadas "A CONFIRMAR".
- Salvar como .xlsx na pasta do projeto: [CLIENTE]-[FEIRA][AA]_MEM-NNN_MEMORIAL-DESCRITIVO_VNN.xlsx

## 4. TRELLO

- Quadro: **Imagine** (conta conectada: Maite).
- Card modelo: "CLIENTE / FEIRA - DATA" (coluna PADRÕES) — [link-trello]
- Título do card: `[CLIENTE] / [FEIRA] - [DATA]`
- Descrição: copiar o modelo e preencher; campos sem informação ficam XXXXXX.
- Após memorial pronto: card vai para **EM VALIDAÇÃO COM CLIENTE (Anderson e Fran)**, com link do memorial no Drive e menção ao responsável em comentário.
- Arquivos não são anexados no Trello: sempre link do Drive.

## 6. DECISÕES TOMADAS

| # | Decisão | Alternativas descartadas | Motivo |
|---|---|---|---|
| D01 | REGRA FIXA de rastreabilidade (nome, ID, cabeçalho, histórico, nova versão sem apagar) | Nomes livres; sobrescrever arquivos | Mandato do Diego ("TODO MODELO DE DADOS E ARQUIVOS…") |
| D02 | Padrões e cadastros em **.md** na PASTA PRINCIPAL | Google Docs/Sheets ou .docx | O Diego perguntou qual formato gasta menos tokens; texto puro é o mais barato de ler e atualizar |
| D03 | Memorial e levantamento em **.xlsx no modelo Imagine** (sem converter para Google Sheets: `disableConversionToGoogleType`) | Conversão automática para Sheets | Preservar a formatação do modelo da empresa |
| D04 | [job] MEM V01 (estimado do 3D) substituído pela V02 (áudio) | Manter a V01 como base | O áudio do Diego é a fonte de escopo; a V01 ficou como histórico |
| D05 | Conector Trello na conta da **Maite ([PES-00062])** | Conta [PES-00055] | A conta do Diego não enxerga o quadro operacional |
| D06 | Arquivos **não anexados** no Trello: link do Drive na descrição + @menção em comentário | Anexar; adicionar membro | Limitação do conector; o Diego aceitou ("ok sobre andersson nao estar no projeto") |
| D07 | Acesso ao Drive com **e-mail pessoal (Gmail)** de Francine, Érika e Marilia; Anderson pela caixa [e-mail] | E-mails @[domínio da empresa] | Os @imaginearq não têm conta Google (erro "invalid argument"). O Diego confirmou: "sim, utilize os pessoais delas" |
| D08 | Equipe com EDITOR em **IMAGINE**, **sem** acesso à PASTA PRINCIPAL | Acesso por projeto apenas; acesso total | Pedido do Diego em 21/10. Como o conector não compartilha IMAGINE, aplicado pasta a pasta (5 pastas) + pendência manual |
| D09 | Pedro [PES-00015] = admin master, acesso total na pasta mãe | — | Pedido do Diego. Compartilhamento manual pendente. Sugerido também avaliar transferência de propriedade ou Drive compartilhado |
| D10 | Pessoas já desligadas ([pessoa], [pessoa]) **não entram** no cadastro | Entrar como INATIVO | Pedido do Diego ("remover"); exceção registrada em observações |
| D11 | Pedido "só atualizar a planilha" ≠ dar acesso | — | O Diego disse: "nao é para adicionar ao drive, somente atualizar a planilha" |
| D12 | E-mail pessoal e profissional em **colunas separadas** | Coluna única | Pedido do Diego |
| D13 | Levantamento estruturado **pelos códigos e quantidades do memorial**, com itens extras em lilás `NN-Ck` e aba MATRIZ | Levantamento livre por categoria ([job] ORC V01) | O Diego exigiu seguir o memorial; a V02 de [job] reestruturou |
| D14 | Categorias fixas (TAPEÇARIA, COM. VISUAL, LOCAÇÃO MÓVEIS, MARCENARIA, VIDRAÇARIA, AUDIOVISUAL, ELÉTRICA, DOCUMENTAÇÃO) + 09 FORNECIDO CLIENTE quando houver | — | Lista ditada pelo Diego em [job]; a 09 foi criada em [job] para itens do cliente com custo 0 |
| D15 | Categoria vazia mantida com "NÃO SE APLICA" | Remover a aba | Manter a estrutura padrão comparável entre projetos ([job] sem vidraçaria) |
| D16 | Logotipo IMG-MOD-001 em **todos** os documentos (planilha: todas as abas; PDF: carimbo) | Só no memorial | Pedido do Diego ("todos os documentos… levantamento, memorial, detalhamento etc.") → IMG-PAD-001 V02 item 1.6 |
| D17 | Arquivos > ~20 KB enviados ao Diego para **upload manual** | Insistir no upload base64 | O base64 grande não é transcrito com confiabilidade pelo conector |
| D18 | PDF com fontes core (Helvetica) e substituição de ², ≈ e setas | Embutir fontes TTF | PDF menor (menos de 80 KB); as fontes core não têm esses glifos |

---

### 7.2 Retrabalhos observados (causa → aprendizado)

| Retrabalho | Causa | Aprendizado / regra |
|---|---|---|
| [job] MEM V01 → V02 | Memorial estimado só pelas imagens 3D | Esperar o áudio do escopo antes de gerar |
| [job] ORC V01 → V02 | Levantamento livre, sem os códigos do memorial | Sempre usar os códigos e quantidades do memorial + MATRIZ |
| [job] D01 V01 → V02 → V03 | Leitura incompleta do 3D: muretas, letreiros, TVs, bistrôs, complementos | Na dúvida sobre elementos do 3D (letreiros, pedestais, cubos), perguntar ou marcar A CONFIRMAR em vez de desenhar |
| [job] goleira | Medida ditada incompatível com a lona | Verificar compatibilidade geométrica (vãos x peças) já no V01 e alertar |
| Bug FOLGA (cabo no [item]) | Critério por texto ("Cabo") | Nomear serviços com cuidado ou usar flag explícita |
| Layout das pranchas (sobreposições, título longo, ²) | Tags pequenas/grandes, fontes core | Usar tag 22–36, título ≤30 caracteres, sem ²/≈/setas |
| Logo reinserido | openpyxl perde imagens ao carregar | Gerar sempre a partir do script/modelo e adicionar o logo no fim |

### 7.3 Melhorias identificadas (não implementadas)
1. O Diego compartilhar a pasta IMAGINE (herança automática) e a PASTA PRINCIPAL com o Pedro.
2. Decidir o plano corporativo (Google Workspace x Microsoft 365) para padronizar e-mails e Drive no domínio. Isso eliminaria os e-mails pessoais. A decisão está em aberto.
3. Usar um Drive compartilhado da empresa, ou transferir a propriedade, para o admin master ter acesso total de verdade.
4. Guardar os scripts geradores no Drive (pacote IMG-MOD-002) para qualquer ambiente conseguir reproduzir.
5. Criar uma lista de checagem "pré-V01" para o detalhamento: elementos do 3D a confirmar (letreiros, TVs, mobiliário, quantidades de refletores).
6. Ter um campo de cliente/razão social/CNPJ padronizado antes de criar o ID do projeto, para evitar ID com grafia errada ([cliente]/[cliente]).
7. SLAs por etapa do quadro: não definido. Sugerido definir.

---

### 10.1 Siglas e códigos internos
| Termo | Significado |
|---|---|
| IMG | Prefixo de documentos gerais da Imagine |
| CAD / PAD / MOD / MEM / ATA / ORC / PRJ | Tipos de documento: cadastro / padrão / modelo / memorial descritivo / ata / orçamento-custos (inclui levantamento) / projeto-3D (inclui detalhamento) |
| EQP-NNN | ID de colaborador no cadastro IMG-CAD-001 |
| VNN | Versão do arquivo (2 dígitos) |
| D01 | Detalhamento técnico nº 01 (conjunto de pranchas) |
| AP02 / AP06 | Pranchas de apresentação da projetista (zoneamento + 3D). O número é da própria projetista; o significado exato do "AP" está a confirmar (provável "apresentação/anteprojeto") |
| `NN-Ck` | Item complementar no levantamento (fora do memorial), ex.: 07-C3 |
| A CONFIRMAR | Dado faltante ou divergente, pendente de validação |
| XXXXXX | Campo sem informação na descrição do card Trello |
| QD | Quadro de distribuição/disjuntores |
| R1–R5 / F1–F4 | Réguas de tomada / fontes de neon no D01 de [job] |
| DR | Dispositivo diferencial residual (proteção no quadro) |
| Cabo PP 3x2,5 / 3x4 mm² | Cabo flexível de 3 vias para os circuitos |
| ART / RRT | Anotação/Registro de Responsabilidade Técnica (engenheiro / arquiteto) |
| kVA | Potência contratada de energia junto à organização |
| NBR 9050 | Norma brasileira de acessibilidade (rampa i ≤ 8,33%) |
| HQI | Lâmpada de vapor metálico (refletor spot 150W). No áudio foi transcrito "HG" |
| HO | Lâmpada fluorescente tubular (iluminação das cozinhas de [job]) |

### 10.2 Termos técnicos de montagem
| Termo | Significado |
|---|---|
| Bagum | Tecido/forração (tipo feltro) para revestir a marcenaria; cores preto/branco. No áudio às vezes aparece como "bagulho" |
| Marcenaria esp. 8 cm | Parede de estande em estrutura de madeira/MDF com 8 cm de espessura |
| Mureta / meia parede | Parede baixa (h=1,00 m) |
| Goleira | Pórtico em marcenaria (2 pilares + viga), seção 30x30, que emoldura o fundo de palco |
| Complemento | Peça de marcenaria que completa o vão ao redor de porta/vidro |
| Travessa / pilar | Peças estruturais de marcenaria ([job]: [medida]; [job]: [medida]) |
| Blindex | Vidro temperado (porta de vidro) |
| Melamina | MDF com acabamento melamínico (branco/preto) |
| Mão francesa | Suporte em L para prateleira/travamento |
| Praticável / tablado | Estrutura modular de palco/piso elevado |
| Carpete forração | Carpete fino colado com fita dupla face no piso do pavilhão |
| Lona / impressão digital | Painel de lona impressa fixado na parede |
| Letra caixa | Letreiro 3D (caixa), pode ser iluminado |
| Neon flex | Fita de LED flexível com aspecto de neon |
| Fita LED / backlight | Fita LED atrás de letras ou contornos |
| PS | Placa de poliestireno (comunicação visual) |
| Padrão Imagine | Peças padrão do estoque/produção Imagine: balcão 1,00x1,00x0,50 com 2 portas com chave (+ prateleira), púlpito, totens de MDF branco 0,80x1,60 |
| Padrão locadora | Mobiliário alugado de fornecedor sem modelo definido |
| Padrão Eames | Linha de cadeiras/mesas/banquetas estilo Eames |
| House mix | Área técnica de operação de som/vídeo/luz (bancada + fechamentos) |
| Painel de LED | Tela modular de LED (ex.: [medida]) |
| Processadora | Equipamento que controla o painel de LED |
| PA / line array | Sistema de som principal |
| Backline | Equipamentos de palco para músicos |
| Treliça Q30 / P30 | Estruturas de alumínio treliçado (seção quadrada 30 / plana) |
| Andaime com bretes | Fechamento de perímetro com andaimes e grades |
| Tenda piramidal | Tenda modular com cobertura em pirâmide |
| Octanorme | Sistema modular de estande (montantes de alumínio + placas TS) |
| TS | Placa de painel (laminado) do sistema octanorme |
| Testeira | Faixa de comunicação no topo (barraca/palco) |
| Saia de palco | Tecido que fecha a frente inferior do palco |
| Asas de palco | Laterais do palco com fechamento |
| Estaiamento | Cabos de travamento da estrutura |
| Pirâmide (técnica/camarim) | Tenda piramidal usada como área técnica ou camarim |
| Sombreador | Tela de sombreamento sobre a estrutura |
| Cachepô | Vaso decorativo |
| Carimbo / selo | Quadro de identificação da prancha (logo, título, DOC, versão, folha, escala) |
| Zoneamento | Planta com a divisão das áreas do projeto |
| Ilha | Estande com 4 lados abertos para a rua (corredor) |
| Rua | Corredor do pavilhão |

### 10.3 Sistemas e ferramentas
| Nome | Uso |
|---|---|
| Google Drive | Repositório de arquivos (conta [PES-00036]) |
| Trello — quadro "Imagine" | Gestão do fluxo de projetos (conta do conector: Maite) |
| Claude (este assistente) | Geração de documentos e operação de Drive/Trello via conectores |
| Claude Code | Citado pelo Diego ("é melhor usar o claude code?"); sem decisão de mudar |
| Python (openpyxl, matplotlib, Pillow) / LibreOffice / poppler | Ferramentas de geração e conferência |
| Outlook / Microsoft (hospedagem @[domínio da empresa]) | E-mail corporativo sem conta Google |
| Google Workspace x Microsoft 365 | Planos corporativos avaliados (decisão em aberto) |

### 11.2 Padrões de documento
9. **REGRA FIXA** de rastreabilidade em tudo (4.1).
10. **Logo Imagine em todos os documentos** (4.1, item 8).
11. Memorial **sempre no modelo da Imagine** e "no mesmo padrão dos anteriores".
12. Detalhamento "conforme as pranchas criadas anteriormente com o logo", no mesmo padrão. Padrão de folhas: planta baixa, elevações, laterais, móveis, elétrica/iluminação.
13. Também vale fazer folhas específicas quando o Diego pedir. Exemplo: "uma prancha só com as paredes" em [job].
14. **Cotar** os elementos importantes (ele pediu "cotar os vidros de [medida]").
15. Levantamento **"que nem tu fez anteriormente"**: por categoria e com os **códigos e quantidades do memorial**.
16. Medidas no padrão `0,00m`. Dado que não foi informado vira "A CONFIRMAR". Item do cliente: "FORNECIDO PELO CLIENTE", sem custo. Item opcional: escrito como opcional.
17. Quando ele define uma cor "para ficar registrado", registrar essa cor. Exemplo: [item] com [cor].

