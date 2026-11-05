# Imagine: especificação do ERP/CRM

Este repositório reúne o que é preciso para construir o sistema ERP/CRM da Imagine, empresa de estandes e eventos: fluxos, escopo funcional e regras de negócio. Uma IA desenvolve o sistema lendo este material, e o código não fica aqui.

Critério de Diego, dono do projeto, em 04/11/2026:

> o que é interessante para nos sao os fluxos, escopo funcional, regras de negocio, escopo funcional.. Estamos desenvolvendo um sistema ERP/CRM, dados de clientes, cases, entram em refinacao e treinamento, nao no desenvolvimento do que precisa ser feito

**Vai desenvolver?** Comece por [`ERP-CRM/00_COMECE-AQUI.md`](ERP-CRM/00_COMECE-AQUI.md). As regras para agentes de IA estão em [`AGENTS.md`](AGENTS.md).

## Como está organizado

| Pasta | O que tem | Por que está separado |
|---|---|---|
| `ERP-CRM/` | O material de trabalho: decisões, fluxos, itens, entidades, perfis e dúvidas | É o que se lê para construir |
| `ERP-CRM/FLUXOS/` | Um arquivo por fluxo, com as etapas em ordem | Mostra o caminho de ponta a ponta |
| `ERP-CRM/MODULOS/` | Um arquivo por módulo, com seus requisitos | Permite construir uma parte de cada vez |
| `ERP-CRM/dados/` | Os mesmos dados em formato legível por máquina | Serve para filtrar e gerar as listas |
| `ERP-CRM/ANDAMENTO/` | Dúvidas e o que já foi implementado | É onde quem desenvolve escreve |
| `REGISTROS/` | Decisões, escopo e visão, com as palavras de Diego | Prova de quem decidiu o quê |
| `FONTES/` | Documentos de origem, em texto | Permite conferir de onde veio cada item |
| `ferramentas/` e `.github/` | Geração das listas e verificação de dados pessoais | Manutenção do repositório |

## Que tipos de dados temos

A coluna **Natureza** diz o quanto confiar em cada tipo.

| Tipo | Quantidade | Onde | Natureza |
|---|---:|---|---|
| Decisões | 29, mais 4 de escopo e visão | `ERP-CRM/01_DECISOES-DE-DIEGO.md`, `dados/decisoes.jsonl` | **Decisão de Diego.** Prevalece sobre todo o resto |
| Registros | 31 | `REGISTROS/` | Texto original da decisão, em rascunho até o Pedro validar |
| Itens (requisitos) | 1.503 | `ERP-CRM/MODULOS/`, `dados/itens.jsonl` | Extraídos dos documentos e classificados por agentes |
| Fluxos e etapas | 20 fluxos, 274 etapas | `ERP-CRM/FLUXOS/`, `dados/fluxos.jsonl` | Proposta provisória, com as decisões aplicadas |
| Entidades | 109, com 753 campos | `ERP-CRM/07_ENTIDADES.md`, `dados/entidades.jsonl` | Proposta provisória, ponto de partida para o banco de dados |
| Perfis de acesso | 41 | `ERP-CRM/08_PERFIS-E-PERMISSOES.md`, `dados/perfis.jsonl` | Proposta provisória, com matriz por módulo |
| Estados | 4 entidades | `ERP-CRM/10_ESTADOS-PRINCIPAIS.md` | Proposta provisória, com lacunas marcadas |
| Pendências | 135 | `ERP-CRM/05_PENDENCIAS-A-DECIDIR.md` | Perguntas vindas dos documentos, da que mais trava para a que menos trava |
| Dúvidas | 48 | `ERP-CRM/ANDAMENTO/DUVIDAS.md` | Perguntas abertas para Diego ou o Pedro |
| Documentos de origem | 38 | `FONTES/` | Cópias de trabalho, com dados pessoais e nomes de clientes retirados |

Nenhuma proposta provisória foi revisada por Diego nem pelo Pedro.

### O que são os itens

Cada item é um requisito com um código `UNI-`. Três etiquetas respondem às perguntas principais. O significado de todas está em [`ERP-CRM/TAXONOMIA.md`](ERP-CRM/TAXONOMIA.md).

**`tipo`: do que se trata?**

| Grupo | Itens | Exemplos |
|---|---:|---|
| Fluxo (`FLX-`) | 535 | Fases, etapas, pontos de decisão, notificações |
| Escopo (`ESC-`) | 415 | Módulos, telas, perfis, documentos, campos, integrações, indicadores |
| Regra (`REG-`) | 387 | Prazos, aprovações, preço, acesso, códigos, qualidade, legal, cálculos |
| Pendência (`PEND`) | 136 | Perguntas sobre o sistema ou o processo |
| Ideia (`IDEIA`) | 20 | Melhorias sem compromisso |
| Técnico (`TEC`) | 10 | Equipamentos e requisitos técnicos |

**`modulo`: em que parte do sistema?** São 31 módulos, de CRM e Projetos a Montagem e Pós-feira, além de um módulo transversal.

**`vigencia`: posso usar?**

| Situação | Itens | Etiquetas |
|---|---:|---|
| Usar | 554 | `decisao-diego`, `confirmado`, `vigente` |
| Usar como provisório | 677 | `proposto` |
| Usar em parte | 51 | `substituido-parcial`, com o que continua valendo e o que mudou |
| Confirmar antes de fechar | 200 | `pendente`, `pendencia-parcial`, `a-conferir`, `inferido`, `adiado` |
| Não usar | 13 | `substituido`, `desatualizado` |
| Só registro de fato | 8 | `fato` |

## Como rastrear uma regra até a origem

| Código | O que identifica | Onde procurar |
|---|---|---|
| `UNI-00000` | Um item. `UNI-00752.03` é um requisito separado de `UNI-00752` | `dados/itens.jsonl` |
| `ITM-00000` | O trecho original no catálogo, de onde o item veio | Campo `item_original` |
| `DOC-000` | O documento de origem | Campos `doc`, `doc_titulo` e `doc_arquivo` |
| `CMP-E3`, `FIN-D1` | Uma etapa de fluxo. `D` indica etapa criada por decisão | `ERP-CRM/FLUXOS/`, campo `etapas` |
| `item-9`, `ponto-2` | Uma decisão de Diego | `ERP-CRM/01_DECISOES-DE-DIEGO.md` |
| `PERF-COMPRAS` | Um perfil de acesso | `ERP-CRM/08_PERFIS-E-PERMISSOES.md` |
| `DUV-001` | Uma dúvida aberta | `ERP-CRM/ANDAMENTO/DUVIDAS.md` |
| `[PES-00000]` | Um dado pessoal retirado. Não tente descobrir o valor | Documento privado, fora do repositório |

**Exemplo:** "a ordem de compra exige data e horário de entrega" é o item `UNI-01598`, do módulo `CMP`, com etiqueta `proposto`. Ele veio do `ITM-01755`, no documento `DOC-091`, seção "§5 Compras, CMP-E3", em `FONTES/IMAGINE_ESPECIFICACAO-DE-PROCESSOS-PARA-O-ERP_REV200.md`. Na ordem do processo, está na etapa `CMP-E3`, em `ERP-CRM/FLUXOS/08-CMP-COMPRAS.md`.

Dos 1.503 itens, 15 não têm documento em `FONTES/`, e o campo `origem_fora` diz por quê. O catálogo completo, com os códigos `ITM-`, não está neste repositório.

## O que ficou de fora, de propósito

| O quê | Por quê |
|---|---|
| Dados pessoais de funcionários e clientes | Ficam em documento privado, fora de qualquer repositório. No texto aparecem como `[PES-00000]` |
| Dados de clientes, cases e jobs reais | Servem para refinamento e treinamento, e não para definir o sistema. Nomes encontrados viraram `[cliente]`, `[evento]`, `[job]` ou `[projeto]` |
| Planilhas, PDFs, imagens e CSV | O repositório só guarda texto, e a verificação bloqueia esses arquivos |
| Itens de outros negócios e projetos | Não fazem parte deste sistema |
| Código do sistema | A recomendação é outro repositório, ainda sem confirmação de Diego |

**Este repositório é público**, por decisão de Diego. A separação de dados pessoais e de clientes foi feita por buscas e por agentes, sem revisor humano, então algo pode ter passado. Se encontrar um dado que não deveria estar aqui, avise Diego.

Primeiros nomes ligados a uma função continuam nos textos, porque os documentos citam pessoas nas regras. No sistema, as permissões são por perfil, nunca por pessoa.

## Como manter

- **Listas em Markdown:** a maior parte é gerada de `ERP-CRM/dados/`. Depois de mudar os dados, rode `ferramentas/gerar-visoes.ps1`.
- **Decisão nova de Diego:** entra em um registro novo e em uma nova versão da camada `ERP-CRM/`.
- **Commits:** um por categoria. A tabela está em [`AGENTS.md`](AGENTS.md).
- **Verificação de dados pessoais:** instale com `ferramentas/instalar-protecao.ps1`. No GitHub, ela roda a cada envio.
- **Versão atual:** o que mudou está em [`ERP-CRM/MUDANCAS-V02.md`](ERP-CRM/MUDANCAS-V02.md). As quantidades deste arquivo são de 04/11/2026, e `ERP-CRM/TAXONOMIA.md` traz as contagens geradas pelos dados.
