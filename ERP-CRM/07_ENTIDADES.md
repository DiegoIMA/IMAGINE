---
id: ERP-ENTIDADES
titulo: Entidades e dados
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Entidades e dados

**Proposta provisória do Claude, para a outra IA partir dela, e não modelo final.** Junta a seção 4 da Especificação, os itens `ESC-DADOS` e as decisões de Diego. Cada campo cita o item de origem. Tipos de dado, chaves e tabelas ficam para quem constrói. 109 entidades.

## Unidade de produção

Cada uma das duas unidades em que a Imagine produz.

**Módulos:** TRP, PLA

| Campo | Detalhe | Origem |
|---|---|---|
| Nome da unidade | Rio Grande do Sul ou São Paulo. | `UNI-01674`, `UNI-01530` |
| Equipe por papel | Cada unidade tem a sua equipe cadastrada por papel. | `UNI-01447` |

**Relações:** Cada projeto leva o campo unidade de produção; Fornecedores, ordens de compra, estoque, veículos e preços da planilha mãe são separados por unidade

**Fonte:** DOC-091 §Respostas; UNI-01447

## Integrante da equipe

Registro de cada pessoa da empresa no cadastro de equipe.

**Módulos:** TRP

| Campo | Detalhe | Origem |
|---|---|---|
| ID | EQP-NNN sequencial, nunca reutilizado. | `UNI-00705`, `UNI-00145` |
| Nome |  | `UNI-00705` |
| Cargo |  | `UNI-00705` |
| Contato pessoal | Separado do profissional. | `UNI-00705` |
| Contato profissional | Separado do pessoal. | `UNI-00705` |
| Trello |  | `UNI-00705` |
| Projetos com acesso |  | `UNI-00705` |

**Status:** ativo · inativo

**Relações:** Pessoa desligada vira inativa e nunca é apagada; O cadastro não registra senhas

**Decisões aplicadas:** item-16

**Em aberto:** Qual cadastro de equipe vale e quais nomes são a mesma pessoa (item-16). O cadastro V08 não traz pessoas com função no ERP-001 (UNI-00888).

**Fonte:** DOC-033 §5.6.2; UNI-00705

## Usuário

Acesso de uma pessoa ao Portal ou ao app.

**Módulos:** TRP, MON

| Campo | Detalhe | Origem |
|---|---|---|
| Setor |  | `UNI-00118.01` |
| Categoria | Encarregado, responsável, produtor, coordenador de montagem, plantonista, coordenador de produção, comercial e cliente; a pessoa pode acumular categorias. | `UNI-00118.01`, `UNI-00118` |
| Feiras em que está escalado | Cada pessoa é nomeada e escalada por feira. | `UNI-00118.01`, `UNI-00118` |
| Validade do acesso | Acessos de montagem expiram 5 dias após a desmontagem; a aba do cliente fecha no fim da feira. | `UNI-00118.01`, `UNI-00026`, `UNI-00026.01` |
| Usuário terceirizado | Montador terceirizado só acessa a própria verba. | `UNI-01517` |
| Login de exibição | Aparelho do modo TV, só leitura. | `UNI-00783.03` |
| Login do cliente | Recebido do vendedor; se a pessoa do cliente mudar durante a feira, outro login só para a etapa de montagem e feira. | `UNI-00119` |

**Relações:** Acessos de montagem são por categoria e por feira

**Fonte:** DOC-091 §4; UNI-00118.01

## Termo de ciência

Declaração do colaborador sobre a política de dispositivos e WhatsApp corporativo.

**Módulos:** TRP

| Campo | Detalhe | Origem |
|---|---|---|
| Declaração | Ter lido a política e saber que equipamentos e contas da empresa são monitorados. | `UNI-00725` |
| Nome |  | `UNI-00725` |
| Setor |  | `UNI-00725` |
| Data |  | `UNI-00725` |
| Assinatura | Assinado antes de receber os equipamentos. | `UNI-00725`, `UNI-00725.01` |

**Relações:** Assinado por cada usuário antes de receber os equipamentos

**Decisões aplicadas:** item-6

**Em aberto:** Validação da POL-001 pela Maitê (item-6; UNI-00951).

**Fonte:** DOC-022 §8; UNI-00725

## Documento do job

Regras comuns a todo documento gerado no fluxo de um projeto.

**Módulos:** TRP

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla do tipo | Valem CAD, PAD, MOD, MEM, ATA, ORC e PRJ; as demais seguem como proposta. Detalhamento técnico usa DT, ficha técnica usa FT, prévia e render usam PRJ-002. | `UNI-00045`, `UNI-00146` |
| Documentos sem sigla | Mood board, storytelling, pedido de alteração e adicional. | `UNI-00048`, `UNI-01430` |
| Documentos por fase | Base da empresa, captação e entrada, projeto, orçamento e contrato, planejamento, compras, produção e evento, e pós-evento. | `UNI-00040`, `UNI-00046`, `UNI-00047`, `UNI-00048`, `UNI-00049`, `UNI-00050`, `UNI-00051`, `UNI-00052`, `UNI-00053` |
| Nome do arquivo | Projeto, tipo, descrição e versão; sem acento, sem espaço, versão com 2 dígitos. | `UNI-00136`, `UNI-00138`, `UNI-00128` |
| Cabeçalho | Logo, código, versão, data, status, cliente e evento, cartão da demanda, etapa do fluxo e elaborado por. | `UNI-00727`, `UNI-00149` |
| Bloco de aprovação | Quem aprovou, quando, em qual alçada e com qual comentário. | `UNI-00106` |
| Histórico | Versão, data, autor e alteração; versão nova nunca sobrescreve a anterior. | `UNI-00148`, `UNI-00137` |
| Origem | Todo documento cita sua origem. | `UNI-00137` |
| Motivo do cancelamento | Exigido no status cancelado. | `UNI-00171` |
| Onda de implantação | Sugestão de ordem de implantação dos documentos, ainda sem decisão de Diego. | `UNI-00846`, `UNI-00847`, `UNI-00848` |

**Status:** rascunho · em aprovação · aprovado · substituído · cancelado

**Relações:** Só a versão aprovada vale para o setor seguinte; Sempre se lê a versão de maior número

**Decisões aplicadas:** item-12, ponto-5, item-13

**Em aberto:** Significados de G1 e G2 (item-12). Como os adicionais serão identificados nos documentos e nos nomes de arquivo (ponto-5). Se contratos usam a razão social (item-13). Régua de status e demais siglas ainda são proposta. Transição com modelos em Excel ou Word até haver telas (UNI-00979).

**Fonte:** DOC-032 §02 a §04; UNI-00727; UNI-00171

## Feira

Feira ou evento do calendário comercial de 12 meses.

**Módulos:** PLC, CRD

| Campo | Detalhe | Origem |
|---|---|---|
| Mês | Compõe o calendário comercial de 12 meses. | `UNI-01426`, `UNI-00355` |
| Tipo |  | `UNI-01426`, `UNI-00356` |
| Perfil |  | `UNI-01426`, `UNI-00356` |
| Histórico de vendas | Da Imagine na feira. | `UNI-01426`, `UNI-00356` |
| Mínimo de 200 m² | Vendidos pela Imagine em cada feira. | `UNI-01426`, `UNI-00356.01`, `UNI-00203` |
| Vendedor responsável | Sugerido pelo sistema; depende de perfil, tipo de evento e histórico. | `UNI-01426`, `UNI-00357`, `UNI-00359` |
| Listas A, B, C e Pacote | A conhecidos, B potenciais novos, C reserva, Pacote várias feiras no ano. | `UNI-01426`, `UNI-00621` |
| Prazos do manual | Levantados no portal do expositor. | `UNI-01426`, `UNI-00421` |
| Nome |  | `UNI-00003.03` |
| Cidade |  | `UNI-00003.03` |
| Pavilhão |  | `UNI-00003.03` |
| Datas de montagem, evento e desmontagem |  | `UNI-00003.03` |
| Link do manual do expositor |  | `UNI-00003.03` |

**Relações:** Cliente sem feira no calendário não recebe sugestão automática de vendedor

**Decisões aplicadas:** item-15

**Em aberto:** Nome, cidade, pavilhão, datas e manual vêm do bloco Feira do formulário de entrada, que será definido depois (item-15). Os 200 m² como soma de todos os estandes da feira são inferência (UNI-01099).

**Fonte:** DOC-091 §4; UNI-01426

## Vendedor

Vendedor com meta, carteira de clientes, funil e comissão.

**Módulos:** PLC, COM, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Meta mensal |  | `UNI-01427` |
| Clientes | Cada vendedor vê só os seus. | `UNI-01427`, `UNI-00115` |
| Funil | Reuniões, propostas e status, atualizados até sexta-feira. | `UNI-01427`, `UNI-00072` |
| Comissão | 3% em cliente aberto pelo vendedor e 1,5% em cliente direcionado pela empresa, sobre o que o cliente pagou, com fechamento mensal; adicionais não geram comissão. Percentuais cadastrados no sistema. | `UNI-01427`, `UNI-00111.01`, `UNI-00111.02`, `UNI-00913.02` |
| Abatimento de desconto | Quando o vendedor absorve o desconto, há abatimento na comissão. | `UNI-00112.04` |

**Relações:** Responde por feiras e clientes

**Decisões aplicadas:** item-10

**Em aberto:** Comissões da filial SP citadas em UNI-01338 estão a conferir. Momento de pagar a comissão ainda aparece em aberto em UNI-01590, embora UNI-00913.02 o defina.

**Fonte:** DOC-091 §4; UNI-01427

## Categoria de serviço

Tipo de serviço escolhido na entrada da demanda, que define o caminho do projeto.

**Módulos:** COM

| Campo | Detalhe | Origem |
|---|---|---|
| Nome | Estande, Cenografia e decoração, Audiovisual/som/luz, Tecnologia e experiências, Estúdio 3D Farm, Produção de evento, Serviço de arquitetura, Gestão de obra e Trade marketing. | `UNI-00062`, `UNI-00062.01`, `UNI-00063.01`, `UNI-00064.01` |
| Escopo da categoria | Gestão de obra inclui fornecedores, cronograma físico-financeiro e diário de obra; Serviço de arquitetura vai do estudo preliminar ao executivo, com RRT; Trade marketing cobre PDV, série e instalação com foto por loja. | `UNI-00063`, `UNI-00064`, `UNI-00063.01`, `UNI-00064.01` |
| Principal ou complementar | Na demanda, uma categoria principal e as complementares. | `UNI-00679.01`, `UNI-00723`, `UNI-00201` |
| O que define | Briefing, etapas, setores, cronograma, custos e contrato. | `UNI-00201`, `UNI-01570` |

**Relações:** Cada categoria acrescenta seu bloco ao formulário de briefing; Produção de evento e Gestão de obra viram projeto-mãe

**Decisões aplicadas:** item-15

**Em aberto:** Modelos detalhados de briefing por categoria seguem a desenvolver (UNI-00679.03; item-15).

**Fonte:** DOC-002 §44; DOC-091 §41; UNI-00062

## Cliente

Empresa atendida ou prospectada pela Imagine.

**Módulos:** CRM, COM, DIS, CRD

| Campo | Detalhe | Origem |
|---|---|---|
| Razão social |  | `UNI-00912.01`, `UNI-00003.01`, `UNI-00419` |
| CNPJ |  | `UNI-00912.01`, `UNI-00003.01`, `UNI-00419` |
| Endereço |  | `UNI-00912.01`, `UNI-00419` |
| Contatos |  | `UNI-00912.01`, `UNI-00419` |
| Segmento |  | `UNI-00003.01` |
| Porte |  | `UNI-00003.01` |
| Mapa de compra | Contato, decisor, comprador e influenciador, com cargo, telefone e e-mail. | `UNI-00003.01`, `UNI-01637` |
| Origem | Define a comissão. | `UNI-00912.01`, `UNI-00003.02`, `UNI-00912` |
| Classe | Prioridade (50 m² ou mais e R$ 1.500/m² ou mais), Secundária (o resto) e Pacote (exceção). | `UNI-00912.01`, `UNI-00623`, `UNI-00623.01` |
| Histórico | Inclui conversas de WhatsApp, fotos da visita, apresentações enviadas e respostas de pesquisa. | `UNI-00912.01`, `UNI-00877.01`, `UNI-01545`, `UNI-01469`, `UNI-01552`, `UNI-00469` |
| Notas do pós-feira |  | `UNI-00912.01` |
| Pontos de fidelidade | Lançados pelo Marketing. | `UNI-00912.01`, `UNI-00483`, `UNI-01631` |
| Nível no programa de indicação | Parceiro (1 indicação fechada), Embaixador (3) e Signature (5), com upgrade de até 0,5%, 1% e 1,5% do contrato indicado; visível ao vendedor no CRM. | `UNI-01464`, `UNI-01465`, `UNI-01591`, `UNI-01592`, `UNI-01593` |

**Relações:** Tem vários projetos, cada um com sua feira; Tem um vendedor responsável, aprovado pelo Diego

**Decisões aplicadas:** item-6, item-10, item-15

**Em aberto:** Valores de origem divergem: empresa, aberto pelo vendedor ou indicação (DOC-091 §4); Prospecção, vendedor, indicação ou cliente antigo (UNI-00003.02); Prospecção, LinkedIn, Instagram, WhatsApp e cliente antigo (UNI-00622). Regras de pontos ainda são sugestão (UNI-00950). UNI-00877.01 está a conferir.

**Fonte:** DOC-091 §4; UNI-00912.01

## Lead / venda

Oportunidade aberta no CRM a partir de contato à distância ou presencial.

**Módulos:** CRM

| Campo | Detalhe | Origem |
|---|---|---|
| Contatos do decisor | Com cargo e e-mail. | `UNI-00654.01`, `UNI-00654`, `UNI-01098` |
| Onde foi o contato | Feira, data e responsável. | `UNI-00654.01`, `UNI-00654`, `UNI-01098` |
| Fotos |  | `UNI-00654.01`, `UNI-00654` |
| Pontos fortes e fracos |  | `UNI-00654.01`, `UNI-00654` |
| Necessidades |  | `UNI-00654.01`, `UNI-00654` |
| Próximas datas | Prazos de retorno, envio de material e recontato. | `UNI-00654.01`, `UNI-00654`, `UNI-00591.01` |
| Quem captou | Conduz o contato e registra tudo no CRM. | `UNI-00654.01`, `UNI-00352` |
| Origem | Ex.: visita em feira. | `UNI-01544`, `UNI-00622` |
| Vendedor responsável |  | `UNI-01544` |
| Filtros de captação | Categoria, porte, verba, tipo de cliente e demanda. | `UNI-00348` |

**Relações:** Vira entrada de demanda quando o cliente aceita o login do Portal; Presencial abre sozinha pelo formulário do contato, e a Prospecção revisa

**Decisões aplicadas:** item-6

**Em aberto:** O material não dá lista de status do lead; só desfechos: aceita o login, sem retorno ou perdeu interesse (UNI-00551.02). Campos de data e responsável são marcados como inferidos em UNI-01098.

**Fonte:** DOC-091 §4; DOC-005 §04; UNI-00654.01

## Registro de visita à feira

Registro feito no app pelo vendedor em cada estande visitado.

**Módulos:** CRM

| Campo | Detalhe | Origem |
|---|---|---|
| Foto do estande | Feira, data e horário gravados automaticamente. | `UNI-00002.04` |
| Foto do cartão de visita | A IA lê e preenche nome, cargo, empresa, telefone e e-mail do contato. | `UNI-00002.04`, `UNI-00002.05` |
| Número do estande |  | `UNI-00002.04` |
| Tamanho aproximado |  | `UNI-00002.04` |
| Montadora atual |  | `UNI-00002.04` |
| Nível de interesse |  | `UNI-00002.04` |
| Observações | Por texto ou áudio. | `UNI-00002.04` |
| Roteiro de perguntas | Abertura e consentimento, contato, estande atual, opinião, desejos de melhoria, montadora, investimento por m², calendário de feiras, processo de compra e fechamento; a IA marca o coletado e o que faltou. | `UNI-00002.07`, `UNI-00002.06`, `UNI-01546` |
| Fotos marcadas | Parte do estande, categoria (crítica, objeção, desejo de melhoria, ponto positivo) e comentário por texto ou áudio, ligadas ao trecho da gravação. | `UNI-01468`, `UNI-01545` |
| Compromisso na agenda | Resumo da visita, fotos, pontos que faltaram e data do próximo contato, confirmada pelo vendedor. | `UNI-00002.08`, `UNI-01639`, `UNI-01640`, `UNI-01638` |

**Relações:** Gera lead no RD Station com origem visita em feira; Fotos vão ao histórico do cliente e ao briefing de Projetos

**Fonte:** DOC-091 §19; UNI-00002.04

## Análise da gravação da visita

O que a IA extrai da gravação da visita a um cliente.

**Módulos:** REU, CRM

| Campo | Detalhe | Origem |
|---|---|---|
| Tom da conversa |  | `UNI-01635` |
| Itens que chamaram a atenção |  | `UNI-01635` |
| Críticas e objeções |  | `UNI-01635` |
| Pontos positivos |  | `UNI-01635` |
| Necessidades e oportunidades |  | `UNI-01635` |
| Status do cliente | Ex.: abertura para contrato futuro. | `UNI-01635` |
| Feiras que o cliente faz |  | `UNI-01636` |
| Tamanho dos estandes | E metragem do estande atual. | `UNI-01636` |
| Quando abre a concorrência |  | `UNI-01636` |
| Quanto pagou por m² |  | `UNI-01636` |
| Mapa de compra | Contato, gerente, decisor, comprador e influenciador. | `UNI-01637` |
| Fidelização com a montadora atual |  | `UNI-01637` |
| Evolução da verba | Da última feira: mantida, maior ou menor. | `UNI-01637` |

**Relações:** Nasce da gravação do registro de visita

**Fonte:** DOC-091 §19; UNI-01635

## Reunião e ata

Reunião gravada pela IA, com transcrição, checklist e ata versionada.

**Módulos:** REU, PLA

| Campo | Detalhe | Origem |
|---|---|---|
| Tipo de reunião | Prospecção, briefing, verificação com o cliente (1ª na prévia, 2ª no render) e produção. | `UNI-00353.01`, `UNI-00495`, `UNI-00500`, `UNI-00407` |
| Gravação | Áudio e tela. | `UNI-00061` |
| Transcrição | Em português, com tópicos, pontos críticos e referências. | `UNI-00061` |
| Checklist | Do que o cliente pediu; itens ok riscados e pendentes abertos. | `UNI-00354`, `UNI-00501` |
| Ata da reunião de briefing | ATA-001, versionada por reunião. | `UNI-00047` |
| Ata da reunião de produção | ATA-002: o que está conforme, dúvidas e observações a validar com o cliente. | `UNI-00050`, `UNI-00408` |
| Itens a resolver | Checklist tratado pelo Comercial com o cliente, com a ata atualizada. | `UNI-00562` |
| Rafes | Arquivo do quadro compartilhado. | `UNI-00618` |

**Relações:** A reunião de briefing abre o cartão da demanda; A reunião de produção acontece depois do detalhamento

**Decisões aplicadas:** item-12

**Em aberto:** Ferramenta do assistente de reunião (UNI-00968).

**Fonte:** DOC-091 §3; UNI-00061; UNI-00047

## Termômetro da Reunião

Avaliação da reunião preenchida pela IA e conferida pelo vendedor.

**Módulos:** REU, COM

| Campo | Detalhe | Origem |
|---|---|---|
| Concorrência |  | `UNI-00655` |
| Percepção da Imagine |  | `UNI-00655` |
| Capacidade |  | `UNI-00655` |
| Projeto |  | `UNI-00655` |
| Relacionamento |  | `UNI-00655` |
| Por que nos procurou |  | `UNI-00655` |
| Probabilidade | De 0 a 100%; alimenta o funil. | `UNI-00655`, `UNI-01100.01` |
| Satisfação |  | `UNI-00655` |
| Próximos passos |  | `UNI-00655` |

**Relações:** Pertence a uma reunião e alimenta o funil do vendedor

**Em aberto:** A §4 traz só a probabilidade como resultado; DOC-007 acrescenta satisfação e próximos passos. O nome e a escala são proposta (UNI-00837, UNI-01100).

**Fonte:** DOC-091 §4; DOC-007 §04; UNI-00655

## Apresentação ao cliente

Apresentação institucional oficial ou versão personalizada pela IA para o cliente.

**Módulos:** APR, COM

| Campo | Detalhe | Origem |
|---|---|---|
| Versão oficial | Só a versão aprovada pelo Diego fica disponível. | `UNI-01469`, `UNI-01470` |
| Data de apresentação | Registrada no histórico do cliente. | `UNI-01469` |
| Versão personalizada | Gerada a partir da gravação, do Termômetro e do formulário de entrada, com textos, cases e imagens do segmento. | `UNI-01549`, `UNI-01550`, `UNI-01551`, `UNI-01553` |
| Ok do vendedor | Nada sai sem esse ok. | `UNI-01472` |
| Registro de envio e de abertura |  | `UNI-01552` |

**Relações:** Fica no histórico do cliente

**Fonte:** DOC-091; UNI-01469; UNI-01552

## Formulário de entrada

Formulário de entrada do cliente, em blocos comuns a todas as categorias.

**Módulos:** COM, CRM

| Campo | Detalhe | Origem |
|---|---|---|
| Bloco Cliente e contatos | Razão social, CNPJ, segmento, porte e mapa de compra. | `UNI-00003.01`, `UNI-00679` |
| Bloco Origem | Prospecção, aberto pelo vendedor, indicação ou cliente antigo. | `UNI-00003.02`, `UNI-00679` |
| Bloco Feira | Nome, cidade, pavilhão, datas de montagem, evento e desmontagem e link do manual. | `UNI-00003.03` |
| Bloco Estande | Metragem, número, tipo (ilha, esquina, corredor) e planta da área. | `UNI-00003.04` |
| Bloco Histórico | Montadora anterior, valor pago total e por m², o que gostou e não gostou, fotos da última edição. | `UNI-00003.05` |
| Bloco Verba e prazos | Verba prevista, forma de pagamento, data limite da proposta e concorrência. | `UNI-00003.06`, `UNI-00679` |
| Bloco Necessidades do projeto | Objetivo na feira, pessoas recebidas, ambientes, produtos, audiovisual, comunicação visual e identidade da marca. | `UNI-00003.07` |
| Bloco Marca | Manual, vetores, fontes e cores. | `UNI-00679` |
| Bloco Extras | Collabs, peças 3D, tecnologia de leads e mapa de calor, itens para levar após a feira e selo Reuse. | `UNI-00003.08`, `UNI-00679` |
| Categoria principal e complementares | O ERP monta o formulário juntando o bloco comum com os da categoria. | `UNI-00679.01`, `UNI-00679.02`, `UNI-00723` |
| Campos obrigatórios | Marcados com asterisco; sem eles o briefing não vai ao Planejamento. | `UNI-00723`, `UNI-01642` |
| Uso dos dados | Vale para cliente da Prospecção e aberto pelo vendedor e alimenta dashboards e estatísticas comerciais. | `UNI-01641` |

**Relações:** Pertence a um cliente e a uma demanda; Soma-se ao briefing da categoria

**Decisões aplicadas:** item-15

**Em aberto:** O formulário será definido depois e os dados ficam guardados: quantos blocos e quem preenche (item-15). Divergência: 12 blocos no fluxo V03, 8 no ERP-002, 6 comuns mais os da categoria no COM-BRF-001 (UNI-00883).

**Fonte:** DOC-091 §20; DOC-019 Parte A; UNI-00003.01

## Briefing por categoria

Bloco próprio de perguntas que cada categoria acrescenta ao formulário de entrada.

**Módulos:** COM, AUD, TIN, D3F, EVT, DCO

| Campo | Detalhe | Origem |
|---|---|---|
| Estande | Feira e manual, espaço (m² e tipo), histórico da edição anterior, objetivos, programa de necessidades, audiovisual e comunicação visual, serviços. | `UNI-00680`, `UNI-00680.01` |
| Cenografia e decoração | Local, área e altura, normas, tema ou conceito, público e uso, período, circulação, itens artesanais, segurança e operação. | `UNI-00681`, `UNI-00680.01` |
| Audiovisual, som e luz | Tipo de evento, público, palco ou estande, vídeo (LED, telas, projeção), som, luz, conteúdos, operação e energia. | `UNI-00682`, `UNI-00682.01` |
| Tecnologia | Objetivo e tipo, usuário e volume por dia, dados coletados e responsável LGPD, integrações, internet e plano B, duração e suporte. | `UNI-00683`, `UNI-00682.01` |
| Estúdio 3D Farm | Peças (tipo, quantidade, tamanho, material, cor), arquivos, uso e entrega com data, embalagem e pacote anual. | `UNI-00684`, `UNI-00684.03` |
| Produção de evento | Evento, formato, local e datas, escopo Imagine, projetos exigidos, terceiros (quem contrata e paga), documentos e licenças, orçamento com taxa de gestão, governança e operação. | `UNI-00685`, `UNI-00684.03` |
| Serviço de arquitetura | Objeto, local, programa de necessidades, conceito, normas, etapas do escopo, complementares, entregáveis, rodadas de revisão, RRT e prazo. | `UNI-00686`, `UNI-00063.01` |
| Gestão de obra | Obra, projetos disponíveis, escopo Imagine, disciplinas e fornecedores, documentos, orçamento com cronograma físico-financeiro e medições, diário no app e entrega. | `UNI-00687` |
| Trade marketing | Produto, pontos de venda, quantidade de lojas, tipo de peça, regras das redes, objetivo, vida útil, série, logística e foto de instalação por loja. | `UNI-00688`, `UNI-00064.01` |

**Relações:** Cada demanda usa os blocos da categoria principal e das complementares

**Decisões aplicadas:** item-15

**Em aberto:** Quantos blocos e quem preenche (item-15). Os modelos detalhados estão a desenvolver (UNI-00679.03).

**Fonte:** DOC-019 Parte B; DOC-091 §41; UNI-00680

## Ficha de entrada

Registro da demanda na entrada, usado em especial na entrada pelo WhatsApp.

**Módulos:** CRM, COM

| Campo | Detalhe | Origem |
|---|---|---|
| Origem | CRM ou WhatsApp. | `UNI-00691` |
| Cliente |  | `UNI-00691` |
| Evento |  | `UNI-00691` |
| Local |  | `UNI-00691` |
| Data do evento | Sem ela a IA cobra do vendedor. | `UNI-00691`, `UNI-00509` |
| Prazo pedido | Sem ele a IA cobra do vendedor. | `UNI-00691`, `UNI-00509` |
| Anexos | Texto, projeto, arquivos ou fotos de referência. | `UNI-00691`, `UNI-00506` |
| Triagem de tempo hábil | E20. | `UNI-00691`, `UNI-00587` |
| Decisão da Diretoria | G2 com custo de urgência quando não há tempo hábil. | `UNI-00691`, `UNI-00588` |
| Prazo limite de aceite conferido | E23; a correção fica registrada. | `UNI-00691`, `UNI-00512` |

**Relações:** Abre o cartão da demanda; Vale só o número corporativo integrado ao ERP

**Decisões aplicadas:** item-6, item-12

**Em aberto:** Significados de G1 e G2 (item-12). Como se calcula o custo de urgência (UNI-00970). Ferramenta de WhatsApp com IA (UNI-00972).

**Fonte:** DOC-032 §06; UNI-00691

## Cartão da demanda

Cartão aberto pela IA ou pelo sistema para acompanhar a demanda até o aceite.

**Módulos:** COM, REU, PLC

| Campo | Detalhe | Origem |
|---|---|---|
| Dados do evento |  | `UNI-00495` |
| Ata |  | `UNI-00495` |
| Prints de imagens e rafes | E o arquivo do quadro compartilhado com a gravação. | `UNI-00495`, `UNI-00618` |
| Briefing |  | `UNI-00495` |
| Envolvidos | Vendedor, assistente comercial, Projetos e Custos. | `UNI-00510` |
| Validação do vendedor | Quem participou da reunião confere e corrige. | `UNI-00496`, `UNI-01116` |
| Dias sem retorno | Comparados ao prazo limite. | `UNI-00513` |
| Motivo de encerramento | Cliente não fechou, declinado, declinada por prazo. | `UNI-00586`, `UNI-00588`, `UNI-00589` |

**Status:** cliente não fechou · declinado · declinada por prazo

**Relações:** Dele a IA abre as demandas dos setores; Tem um micro cronograma reverso

**Decisões aplicadas:** item-24

**Em aberto:** O status declinada por prazo ainda está a definir (UNI-00971) e UNI-00589 está a conferir. Até quando os avisos diários continuam (item-24).

**Fonte:** DOC-030; UNI-00495; UNI-00510

## Projeto

Projeto de um cliente em uma feira, do fechamento da demanda ao pós-feira.

**Módulos:** PRJ, PLA

| Campo | Detalhe | Origem |
|---|---|---|
| Código | Sua abreviatura abre o código do item. | `UNI-01428` |
| Cliente |  | `UNI-01428` |
| Feira |  | `UNI-01428` |
| Arquiteto | Definido pelo Planejamento. | `UNI-01428`, `UNI-00362` |
| Vendedor |  | `UNI-01428` |
| Unidade de produção | Definida no início do Planejamento. | `UNI-01447`, `UNI-01674`, `UNI-01530` |
| Categoria de serviço | Principal e complementares. | `UNI-00201` |
| Abas | Custos (previsto e realizado), documentos, aprovações do cliente, locações, credenciamento e histórico de quem fez o quê. | `UNI-01428`, `UNI-01484` |
| Pastas | Briefing, Referências, Projeto 3D, Renders, Memorial, Detalhamento e fichas, Prancha de amostras e Custos. | `UNI-00722` |
| Status por etapa | Linha do tempo de 12 etapas, com etapa atual e percentual geral. | `UNI-01428`, `UNI-01482` |
| Cronograma |  | `UNI-01428` |
| Data de carregamento e dias restantes |  | `UNI-01482` |
| Data de congelamento | Calculada a partir do carregamento; padrão D-10, configurável por projeto. | `UNI-00782.05` |
| Pendências | Com responsável, prazo e atrasos. | `UNI-01483` |
| Projeto-mãe e subprojetos | Em Produção de evento e Gestão de obra. | `UNI-00210`, `UNI-00210.01`, `UNI-00210.02` |
| Decisão sobre desconto | Fica registrada no projeto. | `UNI-00112.06` |

**Relações:** Entra no Planejamento a partir do aceite do cliente; O detalhamento técnico só começa depois do contrato assinado; Tem um memorial, uma planilha de custos e vários itens

**Decisões aplicadas:** item-8, ponto-1, item-9

**Em aberto:** O material não nomeia os status de cada etapa. Divergência no formato do código do projeto: P0123 (DOC-012, DOC-020), ID do job (DOC-032, DOC-072) e abreviatura do projeto (item-9); versão fixa ou não segue em aberto. O que o Planejamento faz entre o aceite e a assinatura (ponto-1).

**Fonte:** DOC-091 §4; UNI-01428; UNI-01482

## Item do projeto

Cada item do memorial, com código único que o acompanha até a montagem.

**Módulos:** PRJ, TRP, CUS, PLA

| Campo | Detalhe | Origem |
|---|---|---|
| Código do item | Abreviatura do projeto + versão + número da sessão + número do item. Nasce no memorial; nada é aceito ou validado sem ele; não muda até a montagem. | `UNI-00130`, `UNI-00131`, `UNI-00132`, `UNI-00133.01`, `UNI-00734`, `UNI-01107`, `UNI-01429` |
| Grupo |  | `UNI-00713` |
| Nome |  | `UNI-01429`, `UNI-00713` |
| Descrição |  | `UNI-00713` |
| Quantidade |  | `UNI-01429`, `UNI-00713` |
| Dimensões | Sem medida: um traço, conforme projeto/detalhamento ou A CONFIRMAR. | `UNI-00713`, `UNI-00234` |
| Material | Texto livre separado por ponto e vírgula, base do levantamento de custos. | `UNI-01429`, `UNI-00648` |
| Código do material | Vem da biblioteca de materiais quando existir. | `UNI-00648` |
| Setor produtivo | Setores que receberão o item na decupagem. | `UNI-00713`, `UNI-00405` |
| Origem | Define se gera ordem de compra, ordem de serviço ou nenhuma compra. | `UNI-00713`, `UNI-00646` |
| Tipo ou destino | A produzir, a locar, a comprar pronto ou de estoque. | `UNI-01647`, `UNI-00787` |
| Transporte | Carregado pela Imagine ou entregue pelo fornecedor na feira; sugerido pela ordem de compra ou de locação. | `UNI-00789.06` |
| Sequência de montagem | Alimenta romaneio e checklist de montagem. | `UNI-00648`, `UNI-00713` |
| Rastreio, alteração, versão e observação | Colunas internas do memorial; a de alteração fica sem sigla. | `UNI-00713` |
| Fornecido pelo cliente ou opcional | Marcação no memorial. | `UNI-00235`, `UNI-00236` |
| Situação de produção | A produzir, em produção, concluído e embalado. | `UNI-01483`, `UNI-01477` |
| Letra da arte | Em comunicação visual: código do item mais letra, que também nomeia o arquivo de arte. | `UNI-01654`, `UNI-01655` |

**Status:** ativo · alterado · cancelado

**Relações:** Item nunca é apagado: retirado fica cancelado; A alteração aparece em todos os documentos que usam o item; Custos, proposta, fichas, compras, qualidade, carga e montagem leem o mesmo código

**Decisões aplicadas:** item-9, item-12

**Em aberto:** Se a versão fica fixa no código (item-9). A §4 ainda traz P0123-015-02, que o item-9 substitui. Item novo ou adicional recebendo código novo é inferência a conferir (UNI-01107). UNI-00713 cita ainda acabamento e cor na proposta MEM-001.

**Fonte:** DOC-091 §4; DOC-072; UNI-01429; UNI-00713

## Memorial descritivo

Lista mestre de itens do projeto, fonte única dos códigos.

**Módulos:** PRJ

| Campo | Detalhe | Origem |
|---|---|---|
| Entradas | Prancha em PDF, áudio ou texto, modelo, logo e dados de cliente e evento. | `UNI-00699` |
| Linha de identificação | Evento, cliente, contato, local, período, referência, documento, versão e data, com logo. | `UNI-00713` |
| Ambientes | Cada um com título, linha ÁREA, cabeçalho de colunas e itens. | `UNI-00729`, `UNI-00519` |
| Observações | Fechamento da planilha. | `UNI-00519` |
| Resumo | Por setor e origem, em cada ambiente, com total, válidos e cancelados. | `UNI-00735`, `UNI-00647` |
| Histórico de versões | ID, título, local, versão, data, autor e alteração, sem a sigla ALT. | `UNI-00735`, `UNI-00523` |
| Listas | Setor, origem e status. | `UNI-00735` |
| Formato de entrega | Planilha no modelo Imagine, com logo e formatação padrão. | `UNI-00054`, `UNI-00728` |

**Relações:** Gerado pelo sistema a partir do projeto e conferido pelo arquiteto; Existe antes do contrato; Detalhamento e levantamento usam os mesmos códigos e quantidades

**Decisões aplicadas:** item-9, item-12

**Em aberto:** Versão fixa ou não no código (item-9). UNI-00699 descreve o memorial feito a partir de áudio; UNI-00372 o descreve gerado pelo Portal.

**Fonte:** DOC-033; DOC-072; UNI-00734; UNI-00735

## Item da biblioteca

Item reutilizável de projeto, usado na modelagem 3D.

**Módulos:** BIB, PRJ

| Campo | Detalhe | Origem |
|---|---|---|
| Código | Único por item. | `UNI-00657`, `UNI-00163` |
| Nome |  | `UNI-00657`, `UNI-00657.01` |
| Tipo |  | `UNI-00657`, `UNI-00657.01` |
| Medidas |  | `UNI-00657`, `UNI-00657.01` |
| Imagem |  | `UNI-00657`, `UNI-00657.01` |
| Arquivo 3D |  | `UNI-00657`, `UNI-00657.01` |
| Padrão Imagine | Peças do estoque da empresa, segundo o glossário. | `UNI-01350` |
| Marcação de item novo ou alterado | Cadastrado no projeto e usado no 3D; entra na biblioteca depois da validação do Diego. | `UNI-00368`, `UNI-00102`, `UNI-00375` |

**Relações:** Integrada à biblioteca de referências e à base histórica de custos

**Decisões aplicadas:** item-9

**Em aberto:** O código BIB-CATEGORIA-NNNN da §4 está em aberto (item-9). Item não aprovado ficar só no projeto é inferência (UNI-01104).

**Fonte:** DOC-091 §4; DOC-008 §03; UNI-00657.01

## Item de locação

Item do catálogo de locações terceirizadas.

**Módulos:** BIB, PRJ

| Campo | Detalhe | Origem |
|---|---|---|
| Código | LOC-CATEGORIA-NNNN, em aberto. | `UNI-00659.01` |
| Padrão locadora | Mobiliário alugado sem modelo definido, segundo o glossário. | `UNI-01350` |

**Relações:** O catálogo é importado e usado na modelagem 3D e no memorial

**Decisões aplicadas:** item-9

**Em aberto:** O formato LOC- está em aberto (item-9). O material não dá outros campos do catálogo.

**Fonte:** DOC-091 §4; UNI-00659.01

## Material do cadastro mestre

Material com nome padrão, usado em custos, compras e fichas.

**Módulos:** BIB, CUS, CMP

| Campo | Detalhe | Origem |
|---|---|---|
| Código | Item novo só entra no custo depois de ganhar código. | `UNI-01353`, `UNI-00163` |
| Grupo |  | `UNI-01353` |
| Nome padrão | Maiúsculas, sem acento, ordem fixa material + tipo/acabamento + cor + medida. | `UNI-01353`, `UNI-00156`, `UNI-00157` |
| Unidade de compra | Embalagem e formato ficam aqui, não no nome. | `UNI-01353`, `UNI-00159` |
| Aparece em |  | `UNI-01353` |
| Número de grafias e grafias encontradas |  | `UNI-01353` |
| Marcação de item novo |  | `UNI-01353` |
| Especificação elétrica | Fitas LED (tensão, potência por metro, temperatura de cor, proteção, corte mínimo), neon flex, módulos, fontes, cabos e demais, com fornecedor e custo. | `UNI-01488` |
| Rendimento e perda | Rendimento de cada produto e marca e percentual de perda, ajustáveis pela pintura. | `UNI-00900.02` |

**Relações:** Fornecedor guarda histórico de preços por material; Item de estoque tem quantidade mínima

**Em aberto:** O cadastro mestre é proposta. Rendimentos de tintas pendentes (UNI-00900).

**Fonte:** DOC-074; DOC-091 §34; UNI-01353

## Padrão construtivo

Modo de produzir um tipo de item, consultado pela IA ao gerar fichas.

**Módulos:** BIB, PRD

| Campo | Detalhe | Origem |
|---|---|---|
| Código e versão | A ficha indica o padrão usado. | `UNI-00486`, `UNI-01666` |
| Tipo de item | Ex.: parede, testeira, sanca, moldura de LED. | `UNI-00790.01`, `UNI-00485.02` |
| Passo a passo | Com materiais, medidas citadas e foto de cada etapa. | `UNI-00485.03` |
| Desenhos e regras |  | `UNI-00790.01` |
| Vídeos | Nome SETOR_ITEM_ETAPA_DATA; ficam também como treinamento. | `UNI-00135`, `UNI-00211` |
| Validador | Do setor. | `UNI-00485.04`, `UNI-00485` |
| Regras de elétrica | Instalação de LED, emenda, alimentação e passagem de cabos. | `UNI-01489` |
| Lista de gravação | Viva; recebe item sem padrão, padrão com erro, peça reprovada e técnica nova. | `UNI-00628.01`, `UNI-00486` |

**Status:** rascunho · aprovado

**Relações:** Só depois do ok do validador entra na biblioteca e é usado nas fichas

**Em aberto:** As primeiras gravações ainda não foram feitas (UNI-00902).

**Fonte:** DOC-091; UNI-00485.03; UNI-00486

## Referência de projeto

Registro da biblioteca de referências, para pesquisa e reaproveitamento.

**Módulos:** BIB, PRJ

| Campo | Detalhe | Origem |
|---|---|---|
| Segmento |  | `UNI-01474` |
| Feira |  | `UNI-01474` |
| Tipo de estande | Fechado, aberto, outdoor, só estrutura aérea. | `UNI-01474` |
| Porte | Por faixa de m². | `UNI-01474` |
| Estilo |  | `UNI-01474` |
| Material predominante |  | `UNI-01474` |
| Expositores específicos |  | `UNI-01474` |
| Arquivos guardados | Imagens de referência, renders, fotos do estande montado, arquivos 3D, pranchas e memorial. | `UNI-01475` |
| Custos realizados |  | `UNI-01475` |
| Avaliação do cliente no pós-feira |  | `UNI-01475` |

**Relações:** Entra depois da fila de aprovação da curadoria

**Em aberto:** UNI-00785.04 (ok de curadoria) está a conferir.

**Fonte:** DOC-091 §24; UNI-01474; UNI-01475

## Foto do banco de imagens

Foto salva no ERP e no app, usada nas apresentações personalizadas.

**Módulos:** BIB, MKT

| Campo | Detalhe | Origem |
|---|---|---|
| Projeto | Ligada pelo código. | `UNI-00785.02` |
| Segmento |  | `UNI-01473` |
| Feira |  | `UNI-01473` |
| Cliente |  | `UNI-01473` |
| Tipo de imagem | Fachada, interior, detalhe, audiovisual, 3D Farm, collabs, bastidores da fábrica e montagem. | `UNI-01473` |
| Etiquetas | Sugeridas pela IA e conferidas pelo Marketing. | `UNI-00785.03` |

**Relações:** Integrada ao acervo do Marketing

**Decisões aplicadas:** item-18

**Em aberto:** Responsável de Marketing será definido depois (item-18).

**Fonte:** DOC-091 §23; UNI-01473

## Mood board e storytelling

Referências e conceito do projeto, antes da modelagem 3D.

**Módulos:** PRJ

| Campo | Detalhe | Origem |
|---|---|---|
| Categorias do mood board | Piso, parede, móveis, iluminação, expositores, comunicação visual, texturas, vegetação, estofados, cadeiras, mesas, equipamentos, tapetes, neon e fita LED. | `UNI-00658` |
| Materiais e inspirações | Na aba Referências do projeto. | `UNI-00364` |
| Storytelling | Justificativa, inspiração e argumento de venda, gerados pela IA. | `UNI-00365` |

**Relações:** Sem sigla; Validação do Comercial libera a etapa seguinte

**Decisões aplicadas:** item-12

**Em aberto:** Significado de G1 (item-12).

**Fonte:** DOC-008 §05; UNI-00658

## Apresentação de prévia e render

Documento PRJ-002, mostrado ao cliente nas verificações.

**Módulos:** PRJ, CLI, APR

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla | PRJ-002. | `UNI-00048` |
| Renders e mood board | Com storytelling e argumentação de venda. | `UNI-00373` |
| Comentários do cliente | Cada imagem pode ser comentada, com comparação de versões. | `UNI-01459` |
| Resumo do incluso e do adicional |  | `UNI-01459` |

**Relações:** Cada vendedor que abriu a demanda aprova a prévia

**Decisões aplicadas:** item-2, item-12

**Em aberto:** Se o prazo de 1 dia da prévia continua (item-2). Significados de G1 e G2 (item-12).

**Fonte:** DOC-032 §04; UNI-00048

## Pedido de alteração

Registro de mudança pedida em projeto ou proposta, sem sigla.

**Módulos:** COM, PRJ

| Campo | Detalhe | Origem |
|---|---|---|
| Tipo | Projeto (E2) ou proposta (E9). | `UNI-00692` |
| Origem |  | `UNI-00692` |
| Itens afetados |  | `UNI-00692` |
| O que muda | Na proposta: pagamento, valor, prazos, itens adicionais, prazo de fechamento. | `UNI-00692`, `UNI-00503` |
| Impacto em prazo e custo |  | `UNI-00692` |
| Aprovação | Basta um aprovador, Financeiro ou Diretoria. | `UNI-00692`, `UNI-00105` |
| Contraproposta | Feita por quem recusou. | `UNI-00692`, `UNI-00584` |
| Documentos com nova versão |  | `UNI-00692` |

**Relações:** Bloqueado após o congelamento, salvo exceção aprovada pelo Diego; Todo pedido é feito pelo sistema

**Decisões aplicadas:** item-12

**Em aberto:** Significado de G1 (item-12). O material não nomeia status; UNI-00584 cita aprovar ou recusar.

**Fonte:** DOC-032 §06; UNI-00692

## Detalhamento técnico

Documento DT com plantas e detalhes, gerado depois do contrato.

**Módulos:** PRJ, PLA

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla | DT, no lugar de PRJ-001. | `UNI-00050` |
| Formato | PDF A3 com várias folhas, carimbo e logo. | `UNI-00055` |
| Folhas | De 6 a 7: planta baixa com isométrica e legenda de todos os códigos, elétrica e iluminação, vistas externas e detalhes. | `UNI-00619` |
| Folha 01 | Lista os códigos do memorial, com descrição curta e medida em cm. | `UNI-00249` |
| Carimbo de cada folha | Logo, título, projeto, feira, medidas, documento, versão, data, número da folha, escala e quadro de especificação. | `UNI-00700` |

**Relações:** A demanda abre depois do contrato assinado; Dele saem as fichas técnicas; Se a feira não aprovar, o engenheiro refaz detalhamento, cargas e pontos aéreos

**Decisões aplicadas:** item-12, ponto-1, item-3

**Em aberto:** Como fica a janela de 25 dias (ponto-1).

**Fonte:** DOC-033 §2.3; UNI-00055; UNI-00700

## Manual de comunicação visual

Tabela gerada no detalhamento técnico com os itens de comunicação visual.

**Módulos:** CVI

| Campo | Detalhe | Origem |
|---|---|---|
| Foto ou render do item |  | `UNI-01654` |
| Descrição | Com medidas e material. | `UNI-01654` |
| Código do item mais letra | A, B, C e assim por diante. | `UNI-01654` |

**Relações:** Gerado no detalhamento técnico

**Decisões aplicadas:** item-9

**Em aberto:** Versão fixa ou não no código (item-9).

**Fonte:** DOC-091 §27; UNI-01654

## Levantamento de materiais

Planilha de materiais por categoria, com os códigos do memorial.

**Módulos:** PRJ, CUS

| Campo | Detalhe | Origem |
|---|---|---|
| Formato de entrega | Planilha com códigos do memorial, fórmulas e matriz de rastreabilidade. | `UNI-00056` |
| Nome do arquivo | Identificação do projeto, ORC-001 e versão. | `UNI-00139` |
| Categorias | Tapeçaria, comunicação visual, locação de móveis, marcenaria, vidraçaria, audiovisual, elétrica e documentação, mais 09 fornecido pelo cliente quando houver. | `UNI-00795`, `UNI-00636` |
| Dados copiados do memorial | Código, nome, descrição, quantidade e dimensões, sem alteração. | `UNI-00701`, `UNI-00151` |
| Serviço, unidade e quantidade para orçamento |  | `UNI-00701` |
| Memória de cálculo |  | `UNI-00701`, `UNI-00151` |
| Fornecedor e custo unitário |  | `UNI-00701`, `UNI-00240` |
| Custo total | Por fórmula. | `UNI-00701`, `UNI-00637` |
| Observação |  | `UNI-00701` |
| Itens complementares | Código NN-Ck. | `UNI-00241` |
| Aba Resumo | Categoria, escopo, linhas, complementares, total e %; categoria vazia é NÃO SE APLICA. | `UNI-00702`, `UNI-00242` |
| Aba Matriz | Item por categorias, com todos presentes. | `UNI-00702` |
| Aba Histórico |  | `UNI-00702` |

**Relações:** Ganha nova versão quando o memorial muda, com os mesmos códigos

**Em aberto:** Vem do processo por projeto de DOC-033. O material não diz como convive com a planilha de custos gerada pela IA no Portal.

**Fonte:** DOC-033 §2.4; UNI-00701; UNI-00702

## Planilha de custos

Planilha única do projeto, com versões, gerada pela IA e aprovada por Custos.

**Módulos:** CUS

| Campo | Detalhe | Origem |
|---|---|---|
| Código e versão | ORC-NNN_VNN; toda mudança de projeto ou preço gera nova versão. | `UNI-00660.01`, `UNI-00041`, `UNI-00129`, `UNI-00137.01` |
| Bloco de materiais | Item, tipo de material, especificação, unidade, quantidade lida do 3D, valor unitário e valor total. | `UNI-00659`, `UNI-00379` |
| Tipo do item | A produzir, a locar, a comprar pronto ou de estoque. | `UNI-01647` |
| Bloco de logística e operação | Mão de obra, frete, hotel, RRT e outros, proposto pela IA pelo histórico e validado pela Maitê. | `UNI-00660`, `UNI-01499`, `UNI-01519` |
| Resumo | Custo total e preço de venda sugerido. | `UNI-00660`, `UNI-00660.01` |
| Preço de venda | Custos + logística e operação + margem inicial de 35% + impostos; só Maitê e Diego aprovam. | `UNI-00750.01`, `UNI-01574` |
| Maior valor entre as unidades | A IA usa o maior valor, item a item, até a unidade ser definida. | `UNI-01609` |
| Comparação com a última feira | Valor total e R$/m²: muito acima, dentro ou muito abaixo. | `UNI-01575`, `UNI-01610` |

**Relações:** Nasce do memorial e do histórico; Dela nasce a pré-comanda; Diretoria e Custos veem a área; Compras só sabe o valor do item comprado

**Decisões aplicadas:** item-1, item-19, item-14, ponto-5

**Em aberto:** Acesso do Financeiro à área de Custos (item-14). O formato do código BIB ou LOC no bloco de materiais (item-9; UNI-00659). Alíquotas exatas (UNI-01629). O material não nomeia status; a régua geral (UNI-00171) é proposta.

**Fonte:** DOC-091 §4; DOC-009 §04; UNI-00660.01

## Planilha mãe e base de preços

Base de preços de mercado usada pela IA para gerar custos.

**Módulos:** CUS

| Campo | Detalhe | Origem |
|---|---|---|
| Materiais novos, especificações e itens fora do escopo | Atualizados todo mês. | `UNI-00074`, `UNI-00762` |
| Preços de mercado |  | `UNI-00074`, `UNI-00041` |
| Valores por unidade | Separados entre São Paulo e Rio Grande do Sul. | `UNI-01608`, `UNI-00074.01` |

**Relações:** Ficam no Portal; A atualização vale para a próxima planilha

**Em aberto:** De onde vêm os preços de mercado (UNI-00909).

**Fonte:** DOC-009; UNI-00041; UNI-01608

## Planilha de custos do audiovisual

Planilha própria do audiovisual de cada projeto.

**Módulos:** CUS, AUD

| Campo | Detalhe | Origem |
|---|---|---|
| Equipes |  | `UNI-01444` |
| Diárias |  | `UNI-01444` |
| Deslocamento |  | `UNI-01444` |
| Hospedagem |  | `UNI-01444` |
| Alimentação |  | `UNI-01444` |
| Locação de equipamentos |  | `UNI-01444` |
| Atendimento e plantão |  | `UNI-01444` |
| Estoque ou sublocação | Definido no planejamento financeiro do AV. | `UNI-01533` |

**Relações:** Validada com o Financeiro; Compõe a previsão orçamentária

**Fonte:** DOC-091 §5; UNI-01444

## Previsão orçamentária

Previsão única do projeto, antes de qualquer compra.

**Módulos:** FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Planilha de custos validada |  | `UNI-00005.01`, `UNI-01579` |
| Planilha do audiovisual |  | `UNI-00005.01`, `UNI-01579` |
| Aprovação | Só a Maitê, antes de qualquer compra. | `UNI-01576`, `UNI-01579` |

**Relações:** Gerada pela IA a partir das duas planilhas

**Fonte:** DOC-091 §5; UNI-00005.01

## Base histórica de custos realizados

Base única com o custo realizado de cada projeto, norteadora do preço de venda.

**Módulos:** CUS, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Grupos de custo | Hospedagem, alimentação, passagens aéreas e de ônibus, combustível, pedágio, diárias, despesas de viagem e de veículo, frete, mão de obra e materiais. | `UNI-01441` |
| Critérios de comparação | Cidade e unidade, m², número de estandes, tamanho da equipe, dias de montagem e complexidade. | `UNI-00750.03` |
| Marcação de valor fora do padrão | Revisado antes de entrar; média só com 5 projetos parecidos ou mais. | `UNI-00750.04` |
| Previsto, comprado e realizado | Por projeto e por código. | `UNI-01558` |

**Relações:** Recebe de custos, compras, frete, logística, verbas de viagem, equipes terceirizadas e frota

**Decisões aplicadas:** item-19

**Fonte:** DOC-091 §5; UNI-01441

## Adicional

Item pedido pelo cliente durante a produção, com planilha e proposta próprias.

**Módulos:** CUS, COM

| Campo | Detalhe | Origem |
|---|---|---|
| Pedido do cliente | Feito no Portal. | `UNI-00389` |
| Avaliação de prazo | Pelo cronograma, feita pelo Comercial. | `UNI-01500`, `UNI-00075` |
| Planilha própria | A planilha do projeto aprovado segue finalizada. | `UNI-01430`, `UNI-00076`, `UNI-01501` |
| Preço validado | Por Maitê e Diego. | `UNI-00390` |
| Proposta própria |  | `UNI-01430`, `UNI-00390` |

**Status:** aprovado · recusado

**Relações:** Aprovado, entra no projeto e na produção e todos os setores são avisados; Bloqueado após o congelamento, salvo exceção do Diego

**Decisões aplicadas:** ponto-5

**Em aberto:** Sem a sigla ADI: como será identificado nos documentos e nos nomes de arquivo (ponto-5). A §4 ainda traz ADI-NNN.

**Fonte:** DOC-091 §4; UNI-01430

## Decisão de desconto

Registro de cada desconto pedido e da decisão tomada.

**Módulos:** COM, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Desconto pedido ou proposto | Registrado pelo vendedor. | `UNI-00112.01` |
| Margem recalculada | Na hora, pela IA; piso de 25%. | `UNI-00112.01`, `UNI-00112.02` |
| Saída escolhida | Empresa absorve, vendedor absorve ou cliente ajusta o projeto. | `UNI-01577`, `UNI-00112.03`, `UNI-00112.04`, `UNI-00112.05` |

**Relações:** Fica registrada no projeto e entra no fechamento do mês; Cliente ajusta: gera nova versão da planilha

**Fonte:** DOC-091; UNI-00112.01; UNI-00112.06

## Proposta

Proposta comercial enviada ao cliente, com aceite eletrônico.

**Módulos:** COM

| Campo | Detalhe | Origem |
|---|---|---|
| Versão |  | `UNI-00693.01` |
| Cabeçalho | Cliente, evento e validade. | `UNI-00730` |
| Escopo por item | Com renders, na tabela de itens: projeto e montagem, cenografia e locação. | `UNI-00693`, `UNI-00730`, `UNI-00058` |
| Valores | Total e por bloco, sem custo aberto. | `UNI-00693`, `UNI-00693.01` |
| Condições |  | `UNI-00693`, `UNI-00693.01` |
| Validade | 7 dias. | `UNI-00730`, `UNI-00693` |
| Prazo limite de aceite |  | `UNI-00693` |
| Exclusões |  | `UNI-00693` |
| Premissas |  | `UNI-00730` |
| Bloco interno | Removido antes do envio. | `UNI-00730` |
| Autorização de envio | O assistente envia só com autorização do vendedor que fez a proposta. | `UNI-00880` |
| Status do aceite | Aceite eletrônico por e-mail pelo sistema. | `UNI-00693.01`, `UNI-00693`, `UNI-00219` |
| Motivo da perda | Sem ele o status não muda. | `UNI-01611` |

**Status:** a finalizar · aguardando aceite · enviada · aceita · perdida

**Relações:** A §4 junta Proposta e contrato; aqui foram separados; O aceite leva o projeto ao Planejamento e gera o contrato; Pedido de ajuste volta ao vendedor e a Custos

**Decisões aplicadas:** item-7, item-4, item-24, item-9

**Em aberto:** A expiração no 3º aviso continua? (item-7). Quantas cobranças e com que frequência (item-4). Até quando os avisos diários continuam (item-24). A lista de status foi reunida de UNI-00017, UNI-01443 e UNI-01611, sem lista fechada em nenhum item. UNI-00693 está a conferir e usa IT como referência do item.

**Fonte:** DOC-091 §4; DOC-032 §06; DOC-036; UNI-00693; UNI-00730

## Simulação de crédito CBS/IBS

Simulador do modelo de proposta para mostrar ao cliente o crédito de CBS/IBS.

**Módulos:** COM

| Campo | Detalhe | Origem |
|---|---|---|
| Valor do contrato sem CBS/IBS | Padrão R$ 50.000. | `UNI-00708` |
| Alíquota CBS+IBS | 26,5%. | `UNI-00708` |
| Alíquota efetiva do DAS | 10%. | `UNI-00708` |
| Parte do DAS que é CBS/IBS | 40%, só ponto de partida. | `UNI-00708`, `UNI-01026` |
| Regime da empresa |  | `UNI-00708` |
| Cartões por regime e texto automático | Para o cliente. | `UNI-00730` |

**Relações:** Faz parte da proposta

**Em aberto:** Parte do DAS a confirmar com o contador (UNI-01026). Alíquotas no ERP ficam configuráveis (UNI-00891.01).

**Fonte:** DOC-036 §Simulação; UNI-00708

## Contrato

Contrato gerado da proposta aceita, validado e assinado digitalmente.

**Módulos:** COM, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Valores | Preenchidos com os dados da proposta aceita. | `UNI-00077`, `UNI-00910.01` |
| Pagamento |  | `UNI-00077` |
| Cláusulas |  | `UNI-00077` |
| Pontos duvidosos | Cláusulas fora do padrão, pagamento, prazos, escopo e adicionais, validados pela Maitê. | `UNI-00751.01`, `UNI-00751.07` |
| Assinatura | Digital; contrato assinado é registrado. | `UNI-00693.01`, `UNI-00399`, `UNI-01529` |
| Cronograma de recebimentos | FIN-001. | `UNI-00049` |

**Status:** minuta · liberado · assinado

**Relações:** Assinado, libera o detalhamento técnico; A §4 junta Proposta e contrato; aqui foram separados

**Decisões aplicadas:** item-13, ponto-1

**Em aberto:** Contratos usam a razão social? (item-13). Plataforma de assinatura e quem envia (UNI-00918, UNI-01445). Status reunidos de UNI-00751.01 e UNI-01529, sem lista fechada em nenhum item.

**Fonte:** DOC-091 §4; UNI-00077; UNI-00693.01

## Cronograma

Cronogramas do projeto: micro reverso, macro, timeline do cliente e interno de produção.

**Módulos:** PLA, PLC

| Campo | Detalhe | Origem |
|---|---|---|
| Tipo | CRO-001 micro reverso, CRO-002 macro e timeline do cliente, e cronograma interno de produção. | `UNI-00694`, `UNI-00047`, `UNI-00050`, `UNI-00412` |
| Âncora | Data do evento. | `UNI-00694` |
| Marcos | Proposta, aceite, artes, compras, produção, amostras, carga e montagem. | `UNI-00694` |
| Dono e data |  | `UNI-00694` |
| Folga e alerta |  | `UNI-00694` |
| Versão do cliente | Sem datas internas. | `UNI-00694` |
| Prazo limite de aprovação e início da produção | No micro cronograma. | `UNI-00511` |
| Datas de corte | De cada etapa e cada setor. | `UNI-00403` |
| Vencimento por ficha e setor | No cronograma interno, em cadência. | `UNI-00411` |

**Relações:** Parte de um modelo padrão editável; A timeline macro é a referência única de datas

**Decisões aplicadas:** item-11, item-8, ponto-1

**Em aberto:** Prazos fixos são proposta até 30 dias e produção até 20 dias antes do evento (item-11). Como fica a janela de 25 dias (ponto-1). A tabela de tempo por tipo de item está a definir (UNI-00973).

**Fonte:** DOC-032 §06; UNI-00694

## Planilha de horas do projetista

Horas estimadas e realizadas de cada projetista em um projeto.

**Módulos:** FIN, PLA

| Campo | Detalhe | Origem |
|---|---|---|
| Projetista | Vale para todos os projetistas e freelancers. | `UNI-00751.04` |
| Horas estimadas | Acumuladas por projeto. | `UNI-00751.02`, `UNI-00751.04` |
| Horas realizadas | Lançadas ao concluir; base do pagamento. | `UNI-00751.05`, `UNI-00751.03` |
| Valor da hora | Negociado e parametrizado por pessoa. | `UNI-00751.03` |
| Valor a pagar | Gerado pelo sistema; a Maitê valida e paga. | `UNI-00751.06`, `UNI-00395.01` |

**Relações:** Uma por projeto

**Decisões aplicadas:** item-20, ponto-4

**Em aberto:** Valor do projetista da filial SP: decisão adiada (ponto-4; UNI-01338 a conferir).

**Fonte:** DOC-091; UNI-00751.02; UNI-01504

## Pré-comanda

Lista automática de materiais do projeto, conferida pelos setores, que substitui a listagem manual.

**Módulos:** CMP, PRD, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Item e código | Convertida da planilha de custos, item a item, pelo mesmo código. | `UNI-01556` |
| Unidade de produção | Separada por unidade. | `UNI-01556` |
| Ajuste do setor | Os setores só conferem e ajustam. | `UNI-01557` |
| Diferença em relação ao orçado | Toda diferença passa pelo Financeiro. | `UNI-00103.02` |
| Listas somadas à base de compras | Itens prontos, tintas, elétrica, embalagem, decoração e filamento. | `UNI-01559`, `UNI-00195.02`, `UNI-00197.03`, `UNI-00789.01`, `UNI-01667`, `UNI-01565` |

**Relações:** Nasce da planilha de custos; A ordem de compra nasce da pré-comanda aprovada; O comprador não vê os valores previstos

**Decisões aplicadas:** item-21, ponto-2, ponto-3, ponto-1

**Em aberto:** O que pode acontecer entre o aceite e o contrato (ponto-1). UNI-00393.03 está a conferir. O material não nomeia status.

**Fonte:** DOC-091; UNI-01556; UNI-01557

## Comanda

Lista de materiais ou de logística e equipe de um setor, aprovada pelo Financeiro.

**Módulos:** FIN, CMP

| Campo | Detalhe | Origem |
|---|---|---|
| Item e código |  | `UNI-00661`, `UNI-00661.01` |
| Setor |  | `UNI-00661`, `UNI-00661.01` |
| Previsto no custo | Não aparece para o comprador. | `UNI-00661`, `UNI-00661.01` |
| Pedido para a produção |  | `UNI-00661`, `UNI-00661.01` |
| Diferença | Sem tolerância; o Portal cruza previsto e pedido item a item. | `UNI-00661`, `UNI-00661.01`, `UNI-00103.01`, `UNI-00763.04` |
| Comanda de logística e equipe | Mão de obra, dias de produção, viagem e montagem, alimentação, combustível, hotéis, fretes e transportes. | `UNI-00392` |

**Status:** aprovado · devolvido · em compra · comprado · entregue

**Relações:** Toda comanda passa pelo Financeiro; reprovada, volta ao setor; Comanda aprovada vai a Compras da unidade

**Decisões aplicadas:** item-21, ponto-3, ponto-2

**Em aberto:** A §4 e UNI-00661 trazem setor que pediu e pedido, de antes da pré-comanda; podem ainda valer para os ajustes (item-21). UNI-00661 e UNI-00661.01 estão a conferir. Como pré-comanda e comanda se separam não está dito.

**Fonte:** DOC-091 §4; DOC-010 §04; UNI-00661

## Fornecedor

Fornecedor de material, serviço ou locação, cadastrado por unidade.

**Módulos:** CMP, EVT

| Campo | Detalhe | Origem |
|---|---|---|
| Código |  | `UNI-00690` |
| CNPJ |  | `UNI-00690` |
| Pagamento |  | `UNI-00690` |
| Frete | CIF ou FOB. | `UNI-00690` |
| Unidade | Cada unidade tem o seu cadastro. | `UNI-01597`, `UNI-01394.02` |
| Histórico de preços por material |  | `UNI-01451` |
| Tipo de relação | Serviço Imagine, intermediado ou gerenciado, conforme quem contrata e paga. | `UNI-00199`, `UNI-00200`, `UNI-00199.02`, `UNI-00200.01` |
| Avaliação | No fechamento do job e no encerramento do evento. | `UNI-00053`, `UNI-00271.08` |
| Status na produção de evento | O Portal mostra cronograma e status. | `UNI-00791` |

**Relações:** Recebe ordens de compra da unidade; Pagamento direto pelo cliente exige aprovação do cliente

**Em aberto:** Código, CNPJ, pagamento e frete vêm do bloco fornecedor da ordem de compra. Avaliação de fornecedor é proposta, sem campos definidos.

**Fonte:** DOC-091 §5; DOC-032 §05; UNI-01451; UNI-01597

## Solicitação de compra

Pedido formal de compra (SOL), inclusive de reposição.

**Módulos:** CMP, ALM

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla | SOL. | `UNI-00051` |
| Sem projeto | Reposição de embalagens e consumíveis abre SOL sem job, com custo rateado nos jobs que consumirem. | `UNI-00226` |
| Item de reposição confirmado | Itens marcados sim pelo responsável do almoxarifado. | `UNI-01515`, `UNI-01573` |

**Relações:** Vai a Compras da unidade, no fluxo normal

**Em aberto:** Compras não foi ditado; SOL é proposta (UNI-00977). Estoque mínimo pendente (UNI-00897). O material não dá campos gerais da SOL.

**Fonte:** DOC-032 §04; UNI-00051; UNI-00226

## Cotação

Mapa de cotação (COT) com os fornecedores da unidade.

**Módulos:** CMP

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla | COT. | `UNI-00051` |
| Cotações registradas | De fornecedores do cadastro da unidade. | `UNI-00752.01`, `UNI-01451` |
| Fornecedor escolhido | A opção mais barata, registrada em cada ordem de compra. | `UNI-01451`, `UNI-00752.07` |
| Validade | Cotação vencida volta para COT em repetir compra. | `UNI-00227` |

**Relações:** Precede a ordem de compra

**Em aberto:** Número mínimo de cotações e valor a partir do qual vale (UNI-00975).

**Fonte:** DOC-032 §04; DOC-091 §Respostas; UNI-01451

## Pesquisa paralela de preços

Comparação automática de preços em três fontes, feita em paralelo à cotação do comprador.

**Módulos:** CMP

| Campo | Detalhe | Origem |
|---|---|---|
| Fonte histórico | Último preço pago e média dos últimos meses do mesmo material. | `UNI-00752.09` |
| Fonte cotação automática | Pedido a três ou mais fornecedores da unidade, por e-mail ou WhatsApp. | `UNI-00752.10` |
| Fonte internet | Menor preço com frete. | `UNI-00752.11` |
| Alerta de preço | Limite de 10%, configurável. | `UNI-00881.01`, `UNI-00752` |
| Justificativa ou renegociação do comprador |  | `UNI-00881.01` |

**Relações:** O alerta vale só para o preço de compra; Locações têm a mesma pesquisa

**Decisões aplicadas:** item-5, ponto-2, ponto-3

**Em aberto:** Quem aprova depois do alerta (item-5, ponto-2). Quem vê o resultado da comparação entre orçado e comprado (ponto-2).

**Fonte:** DOC-091 §5; UNI-00752.08; UNI-00881.01

## Ordem de compra

Ordem emitida por Compras da unidade, do envio ao pagamento.

**Módulos:** CMP, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Número, versão, comprador e projeto | Cabeçalho. Mudança de valor para cima gera nova versão. | `UNI-00690`, `UNI-00108` |
| Fornecedor | Com pagamento e frete CIF ou FOB. | `UNI-00690`, `UNI-00690.01` |
| Itens | Material, item, quantidade, preço e entrega. | `UNI-00690`, `UNI-00690.01` |
| Prazo |  | `UNI-00690.01` |
| Data e horário de entrega | Obrigatório; sem isso a ordem não é enviada. | `UNI-01598` |
| Entrega ou coleta | Obrigatório: entrega pelo fornecedor ou coleta com veículo da Imagine; coleta com endereço, horário e material. | `UNI-01599` |
| Forma de pagamento |  | `UNI-00690.01` |
| IBS/CBS |  | `UNI-00690.01` |
| Cotações e fornecedor escolhido |  | `UNI-01451` |
| Controle orçado x comprado | Não aparece para o comprador. | `UNI-00690` |
| Fechamento | Recebimento, nota fiscal e pagamentos. | `UNI-00690`, `UNI-00690.01` |
| Motivo do cancelamento |  | `UNI-00635` |
| OC aberta | Contrato com preço, validade e teto; chamadas conferem preço e saldo. | `UNI-00225` |

**Status:** rascunho · em aprovação · aprovada · enviada · confirmada · recebida parcial · recebida · faturada · paga · encerrada · cancelada

**Relações:** Nasce da pré-comanda aprovada; Também nasce dos formulários de frete, deslocamento e equipes e da lavagem de veículos; Aprovada, entra na agenda de chegadas; O fornecedor confirma por link; Nenhum pagamento sai sem ordem aprovada e recebimento conferido

**Decisões aplicadas:** ponto-2, item-5, item-14, item-21

**Em aberto:** Origem diverge: comanda aprovada (UNI-00393, UNI-00597.01) ou pré-comanda aprovada (UNI-00393.03, a conferir). Quem vê o resultado da comparação entre orçado e comprado; quem aprova depois do alerta de preço (ponto-2). Compras só sabe o valor do item comprado (item-14). A §4 traz só situação; os valores vêm de UNI-00635, proposta. Validade e teto padrão da OC aberta (UNI-00976).

**Fonte:** DOC-091 §4; DOC-032 §05; UNI-00690

## Ordem de serviço a terceiros

Documento OS para serviços contratados de terceiros.

**Módulos:** CMP

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla | OS. | `UNI-00051` |
| Item de origem | A origem do item define se gera ordem de serviço. | `UNI-00646` |
| Aprovação e recebimento | Nenhum pagamento sai sem OS aprovada e recebimento conferido. | `UNI-00228` |

**Relações:** Precede o recebimento conferido

**Em aberto:** Compras não foi ditado; OS é proposta (UNI-00977). O material não dá os campos da OS.

**Fonte:** DOC-032 §04; UNI-00051

## Ordem de locação

Ordem de itens locados, com conferência na chegada e na devolução.

**Módulos:** BIB, LOG, MON, AUD

| Campo | Detalhe | Origem |
|---|---|---|
| Solicitação de locação | Compilada pelo sistema a partir dos itens de locação do projeto; móveis e demais itens, ou equipamentos de audiovisual. | `UNI-01395.02` |
| Cotação | Histórico de fornecedores de locação da unidade e pesquisa paralela com alerta acima de 10%. | `UNI-00752.12`, `UNI-01634` |
| Data e horário de entrega | Exigidos. | `UNI-01541` |
| Aprovação | Da Maitê, em 1 dia. | `UNI-01541` |
| Data e hora de devolução |  | `UNI-00006.01` |
| Conferência com foto | Na chegada e na devolução, pelo produtor de montagem. | `UNI-00006.01`, `UNI-00006` |
| Avarias | Com aviso. | `UNI-00006.01`, `UNI-01634` |

**Relações:** Entra na agenda de chegadas e na conciliação com Compras

**Em aberto:** O material não lista os demais campos da ordem de locação.

**Fonte:** DOC-091; UNI-01541; UNI-00006.01

## Recebimento conferido

Documento REC que confere o que chegou contra a ordem.

**Módulos:** CMP, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla | REC. | `UNI-00051` |
| Conferência | Ordem x recebimento x nota fiscal. | `UNI-00228` |

**Relações:** Condição para pagamento; Fecha a ordem de compra

**Em aberto:** Quem confere na fábrica e quando a entrega é direto no pavilhão (UNI-00976). O material não dá outros campos.

**Fonte:** DOC-032 §04; UNI-00051; UNI-00228

## Centro de custos do projeto

Acompanhamento financeiro de cada projeto.

**Módulos:** FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Itens e valores |  | `UNI-00662` |
| Fornecedor |  | `UNI-00662` |
| Pagamento |  | `UNI-00662` |
| Impostos | IBS e CBS. | `UNI-00662` |
| Nota fiscal | Sobe no Portal em até 2 dias após a entrega. | `UNI-00662`, `UNI-00078` |
| Situação | Nota não emitida, compra não concluída, pagamento pendente e prazo vencendo. | `UNI-00662`, `UNI-00394` |
| Logística e viagem |  | `UNI-00662` |
| Margem extra | Diferença entre orçado e real ao definir a unidade. | `UNI-01518` |

**Relações:** Contas a pagar e fluxo de caixa ficam no sistema financeiro integrado

**Decisões aplicadas:** item-14

**Em aberto:** Nome do sistema financeiro (UNI-00891, UNI-01445).

**Fonte:** DOC-010 §05; UNI-00662

## Agenda de chegada de materiais

Lista por unidade das chegadas previstas, em ordem de data e horário.

**Módulos:** CMP, ALM

| Campo | Detalhe | Origem |
|---|---|---|
| Data e horário previstos |  | `UNI-01435` |
| Fornecedor |  | `UNI-01435` |
| Material | Com quantidade e volume. | `UNI-01435` |
| Tipo de veículo |  | `UNI-01435` |
| Local de descarga |  | `UNI-01435` |
| Quem descarrega |  | `UNI-01435` |
| Destino do material |  | `UNI-01435` |
| Coleta destacada | Com endereço, horário e material. | `UNI-01599` |
| Baixa na chegada | No app, por quem recebe; dá entrada no estoque. | `UNI-00752.05`, `UNI-01511` |

**Status:** previsto · chegou · descarregado · atrasado

**Relações:** Toda ordem de compra aprovada entra automaticamente; Cruzada com os carregamentos da Expedição para apontar conflitos

**Fonte:** DOC-091 §5; UNI-01435; UNI-00752.03

## Conciliação diária

Planilha diária por unidade que concilia saídas da Expedição e chegadas de material.

**Módulos:** ALM, CMP, EXP

| Campo | Detalhe | Origem |
|---|---|---|
| Horário |  | `UNI-01436` |
| Tipo | Chegada ou saída. | `UNI-01436` |
| Projeto |  | `UNI-01436` |
| Fornecedor ou destino |  | `UNI-01436` |
| Material ou volumes |  | `UNI-01436` |
| Veículo |  | `UNI-01436` |
| Local |  | `UNI-01436` |
| Responsável |  | `UNI-01436` |
| Conflitos apontados pela IA |  | `UNI-01436` |
| Coleta destacada | Com endereço, horário e material. | `UNI-01599` |

**Relações:** Gerada por agente de IA todo dia de manhã

**Fonte:** DOC-091 §5; UNI-01436; UNI-00752.06

## Estoque

Situação de cada item do almoxarifado, por unidade.

**Módulos:** ALM

| Campo | Detalhe | Origem |
|---|---|---|
| Item | Embalagens, consumíveis e material comprado. | `UNI-00226`, `UNI-01511` |
| Unidade |  | `UNI-00226.01` |
| Quantidade mínima | Cadastrada por unidade. | `UNI-00226.01`, `UNI-00226` |
| Saldo | Calculado pela IA comparando compras e consumo. | `UNI-01513` |
| Reserva para projeto | Item de estoque é reservado, com baixa na saída. | `UNI-01560` |
| Confirmação do responsável | Sim ou não em cada item da lista de segunda-feira. | `UNI-01573`, `UNI-01514` |

**Relações:** Descontado das listas de tinta e embalagem; Item confirmado vira solicitação de compra de reposição

**Em aberto:** Valores de estoque mínimo não definidos (UNI-01600, UNI-00897). Se Almoxarifado recebe fichas (UNI-00932). UNI-00036 cita controle de estoque de embalagens pela Expedição; UNI-01511 põe o estoque no Almoxarifado.

**Fonte:** DOC-091 §5; UNI-00226.01; UNI-01513

## Movimento de almoxarifado

Entrada ou retirada de material registrada no app.

**Módulos:** ALM

| Campo | Detalhe | Origem |
|---|---|---|
| Entrada | Quando a chegada é baixada na agenda. | `UNI-01511` |
| Material |  | `UNI-01512` |
| Quantidade |  | `UNI-01512` |
| Projeto |  | `UNI-01512` |
| Setor que retirou |  | `UNI-01512` |

**Relações:** Alimenta o saldo do estoque

**Fonte:** DOC-091 §5; UNI-01511; UNI-01512

## Ficha técnica de produção

Documento FT de cada item a produzir, gerado do detalhamento técnico.

**Módulos:** PLA, PRD

| Campo | Detalhe | Origem |
|---|---|---|
| Código | Mesmo código do item; sigla FT. | `UNI-00663`, `UNI-00409.02`, `UNI-00695` |
| Setor |  | `UNI-00695` |
| Detalhamento técnico | Desenho do DT. | `UNI-00663`, `UNI-00695` |
| Lista de materiais | Material e quantidades, inclusive embalagem e litros de tinta. | `UNI-00663`, `UNI-00695`, `UNI-01657`, `UNI-00195.01` |
| Complexidade e tempo | Horas previstas, por grupo de itens e por setor. | `UNI-00663`, `UNI-00695`, `UNI-00410` |
| Sequência de setores |  | `UNI-00663` |
| Vencimento por setor |  | `UNI-00663`, `UNI-00411` |
| Conclusão | Foto obrigatória, data, hora, usuário e setor; só fecha com o ok do líder. | `UNI-00663`, `UNI-00167`, `UNI-00167.02`, `UNI-00695` |
| Qualidade | Ok ou erro com observação; critério de qualidade. | `UNI-00663`, `UNI-00164`, `UNI-00695` |
| Prazo | No prazo, antecipado, atrasado em dias; novo prazo informado. | `UNI-00664`, `UNI-00571` |
| Horas reais |  | `UNI-00695` |
| QR code | Ficha impressa por setor, com código e QR. | `UNI-00444.01`, `UNI-00787` |
| Padrão usado | Código e versão. | `UNI-01666` |
| Como embalar | Mostrado à Expedição. | `UNI-00789.02` |
| Bloco de pintura | Substrato, preparação, tipo de tinta, cor, acabamento e número de demãos. | `UNI-01486` |
| Modelo de marcenaria | Móveis ou estrutural, com modelos diferentes. | `UNI-01677` |
| Quantidade em itens idênticos | Uma ficha por item com código próprio; idênticos podem ficar numa ficha com quantidade. | `UNI-00196.01` |

**Relações:** Nenhuma ficha é gerada antes do contrato; Nenhuma ficha começa sem material formalizado; Item com amostra só começa com o ok do cliente

**Decisões aplicadas:** item-12, item-9, item-21

**Em aberto:** Versão fixa ou não no código (item-9). Significados de G1 e G2 (item-12). O material não dá status fechado da ficha; UNI-00605.01 cita etapa concluída.

**Fonte:** DOC-091 §4; DOC-012 §05; DOC-032 §06; UNI-00663; UNI-00695

## Ficha técnica de comunicação visual

Ficha própria de cada item de comunicação visual.

**Módulos:** CVI

| Campo | Detalhe | Origem |
|---|---|---|
| Projeto |  | `UNI-00724` |
| Código do item | Código mais letra. | `UNI-00724`, `UNI-00689.01` |
| Unidade e prazos |  | `UNI-00724` |
| Imagem com cotas e corte |  | `UNI-00724`, `UNI-00689.01` |
| Descrição |  | `UNI-00689`, `UNI-00689.01` |
| Medidas |  | `UNI-00689`, `UNI-00689.01` |
| Face e corpo lateral |  | `UNI-00689` |
| Material e acabamento |  | `UNI-00689.01` |
| Processo |  | `UNI-00689.01` |
| Iluminação |  | `UNI-00689`, `UNI-00689.01` |
| Fixação |  | `UNI-00689`, `UNI-00689.01` |
| Instalação | Máscara 1:1. | `UNI-00689`, `UNI-00689.01` |
| Arte vinculada | Com status CVI-E7. | `UNI-00689`, `UNI-00689.01`, `UNI-00724` |
| Quantidade e embalagem |  | `UNI-00689` |
| Sequência de setores |  | `UNI-00724`, `UNI-00689.01` |
| Baixa | Foto, responsável e QR. | `UNI-00724`, `UNI-00724.01` |
| Arquivo final | Vetor, faca e arquivo de impressão. | `UNI-01581` |
| Ok por etapa | Com data, hora e usuário; guarda arquivos e provas de cada etapa. | `UNI-01580`, `UNI-01652` |

**Relações:** Gerada depois do contrato, do detalhamento técnico

**Decisões aplicadas:** item-9, item-12

**Em aberto:** DOC-020 traz o formato projeto-setor-número, que o item-9 substitui; versão fixa ou não segue em aberto. Critérios técnicos da verificação (UNI-00934).

**Fonte:** DOC-020; DOC-091 §27; UNI-00689; UNI-00724

## Ficha de marcenaria estrutural

Modelo de ficha para paredes, sancas, testeiras e outras estruturas.

**Módulos:** PRD

| Campo | Detalhe | Origem |
|---|---|---|
| Estrutura interna | Bitola e espaçamento do sarrafo. | `UNI-01487` |
| Chapeamento |  | `UNI-01487` |
| Acabamento |  | `UNI-01487` |
| Fita de borda |  | `UNI-01487` |
| Fixação e travamento |  | `UNI-01487` |
| Divisão em partes | Para transporte e montagem. | `UNI-01487` |
| Vista explodida com medidas |  | `UNI-01487` |

**Relações:** Variante da ficha técnica de produção

**Decisões aplicadas:** item-12

**Em aberto:** Margem das molduras de LED pendente (UNI-00900).

**Fonte:** DOC-091 §33; UNI-01487; UNI-01677

## Ficha da peça 3D

Ficha de cada peça do Estúdio 3D Farm, gerada pela IA.

**Módulos:** D3F

| Campo | Detalhe | Origem |
|---|---|---|
| Código | O mesmo do projeto. | `UNI-01491` |
| Material |  | `UNI-01491` |
| Quantidade |  | `UNI-01491` |
| Tempo | Entra no cronograma, com a fila de cada impressora. | `UNI-01491`, `UNI-01563` |
| Custo de material e máquina |  | `UNI-01491` |
| Acabamento posterior |  | `UNI-01491` |
| Sequência de setores |  | `UNI-01491` |
| Dados importados da farm | Arquivo 3D, impressora, material e cor, filamento, tempo, placas e configurações. | `UNI-01490` |

**Relações:** Variante da ficha técnica de produção; Consumo de filamento alimenta custos e compras

**Decisões aplicadas:** item-12

**Em aberto:** Modelo das impressoras e gerenciador de farm (UNI-00901).

**Fonte:** DOC-091 §36; UNI-01491

## Ficha de decoração

Ficha de cada item de decoração.

**Módulos:** DCO

| Campo | Detalhe | Origem |
|---|---|---|
| Medidas |  | `UNI-01493` |
| Materiais | Calculados pela IA por item. | `UNI-01493`, `UNI-01667` |
| Cores e acabamentos |  | `UNI-01493` |
| Quantidade |  | `UNI-01493` |
| Foto de referência |  | `UNI-01493` |
| Processo artesanal |  | `UNI-01493` |
| Quem executa | Costureira, decorador ou montagem de objetos. | `UNI-01493` |

**Relações:** Variante da ficha técnica de produção

**Decisões aplicadas:** item-12

**Fonte:** DOC-091 §37; UNI-01493

## Ficha técnica da solução

Ficha da solução de tecnologia ou experiência interativa.

**Módulos:** TIN

| Campo | Detalhe | Origem |
|---|---|---|
| Objetivo da experiência |  | `UNI-01494` |
| Roteiro do usuário |  | `UNI-01494` |
| Telas |  | `UNI-01494` |
| Integrações | WhatsApp, Instagram e IA. | `UNI-01494` |
| Equipamentos |  | `UNI-01494` |
| Fornecedores |  | `UNI-01494` |
| Custos |  | `UNI-01494` |

**Relações:** Pertence à demanda de tecnologia do projeto

**Decisões aplicadas:** item-12

**Em aberto:** Desenvolver ou contratar está a decidir (UNI-00013.03).

**Fonte:** DOC-091 §39; UNI-01494

## Prancha de amostras

Prancha que mostra cada material aplicado no projeto.

**Módulos:** PRJ, PLA

| Campo | Detalhe | Origem |
|---|---|---|
| Categorias | As mesmas do mood board. | `UNI-00658` |
| Material com marca e modelo |  | `UNI-00377` |

**Relações:** Com o memorial, é base da decupagem no Planejamento

**Fonte:** DOC-008 §05; UNI-00377; UNI-00658

## Validação de amostra

Aprovação pelo cliente da amostra de um item (AMO).

**Módulos:** CLI, PRD

| Campo | Detalhe | Origem |
|---|---|---|
| Sigla | AMO. | `UNI-00052` |
| Item e foto da amostra |  | `UNI-00782.01` |
| Decisão | Aprova ou reprova cada item. | `UNI-00581.01` |
| Comentário | Ao reprovar. | `UNI-00581.01` |

**Status:** aprovado · reprovado

**Relações:** Item reprovado volta a Projetos e Produção, com nova amostra; Referência do checklist de qualidade

**Fonte:** DOC-091 §12; UNI-00782.01; UNI-00581.01

## Arquivo do cliente

Arte ou conteúdo enviado pelo cliente na aba do cliente.

**Módulos:** CLI, CVI, AUD

| Campo | Detalhe | Origem |
|---|---|---|
| Arte ou conteúdo | Logos, artes, imagens ou conteúdos audiovisuais; a letra do item nomeia a arte. | `UNI-01431`, `UNI-00433`, `UNI-00440`, `UNI-01655` |
| Resultado da verificação da IA | Formato, resolução, cor, medidas, sangria, fontes e corte. | `UNI-01431`, `UNI-00434.01`, `UNI-00626` |
| Teste de conteúdo | Qualidade e resolução nos equipamentos. | `UNI-00441` |
| Prova |  | `UNI-01431`, `UNI-00436` |
| Validação | Do cliente, na aba do cliente. | `UNI-01431`, `UNI-00436`, `UNI-00568` |
| Versões e correções |  | `UNI-01670` |

**Status:** apto · não apto

**Relações:** Nenhum arquivo segue sem estar apto; O sistema avisa se faltar arte de algum item

**Em aberto:** Data limite do primeiro envio (UNI-00933, UNI-00936). Critérios técnicos (UNI-00934).

**Fonte:** DOC-091 §4; UNI-01431

## Rider técnico

Pedido de material do Audiovisual, com equipamentos do projeto.

**Módulos:** AUD

| Campo | Detalhe | Origem |
|---|---|---|
| Equipamento |  | `UNI-00669`, `UNI-00669.01` |
| Quantidade |  | `UNI-00669` |
| Especificação |  | `UNI-00669`, `UNI-00669.01` |
| Uso | Combinado com o cliente. | `UNI-00669`, `UNI-00669.01` |
| Conteúdo | Com status do teste. | `UNI-00669`, `UNI-00669.01` |
| Posição na montagem | Onde fica e quem programa e testa. | `UNI-00669`, `UNI-00669.01` |

**Relações:** É o pedido de material do setor; Pode ser corrigido após a conferência de medidas

**Fonte:** DOC-091 §4; DOC-014 §05; UNI-00669

## Conferência de medidas do audiovisual

Checklist com foto feito com a equipe de montagem.

**Módulos:** AUD

| Campo | Detalhe | Origem |
|---|---|---|
| Telas e nichos |  | `UNI-00670` |
| Suportes e fixações |  | `UNI-00670` |
| Elétrica e cabos |  | `UNI-00670` |
| Som e luz |  | `UNI-00670` |
| Acesso e ventilação |  | `UNI-00670` |
| Foto | De cada item. | `UNI-00670`, `UNI-00439` |

**Relações:** Incompatível, gera correção e nova conferência

**Em aberto:** Quem da montagem confere e quando (UNI-00937).

**Fonte:** DOC-014 §05; UNI-00670

## Etiqueta

Etiqueta com QR code da peça: simples na produção e final na Expedição.

**Módulos:** EXP, PRD

| Campo | Detalhe | Origem |
|---|---|---|
| Etapa | Simples, colada no primeiro setor; final, colada na embalagem pela Expedição. | `UNI-00920.01`, `UNI-00449.02`, `UNI-00450` |
| Código | Código do item. | `UNI-00671`, `UNI-00671.01` |
| Nome do produto |  | `UNI-00671`, `UNI-00671.01` |
| Foto |  | `UNI-00671`, `UNI-00671.01` |
| QR code |  | `UNI-00671`, `UNI-00671.01` |
| Projeto e feira | Inferido no original. | `UNI-00671`, `UNI-00671.01` |
| Volume | 1 de N, a validar. | `UNI-00671`, `UNI-00671.01` |
| Tamanho | Legível de longe; proposta 10 x 15 cm. | `UNI-00671`, `UNI-00449.01` |

**Relações:** O código é o mesmo da ficha, do carregamento e da montagem; Impressão integrada ao sistema

**Decisões aplicadas:** item-9

**Em aberto:** Versão fixa ou não no código (item-9). Tipo de impressora e volume 1 de N a validar (UNI-00671). UNI-00671.01 está a conferir. Campos da etiqueta simples não são detalhados além do QR code.

**Fonte:** DOC-091 §4; DOC-015 §03; UNI-00671; UNI-00920.01

## Leitura de QR code

Registro de cada passagem da peça lida no app.

**Módulos:** EXP, PRD, MON

| Campo | Detalhe | Origem |
|---|---|---|
| Peça |  | `UNI-00672.02` |
| Evento | Peça pronta, recebimento, verificação de qualidade, etiqueta colada, carregamento, descarregamento, desembalada e instalada. | `UNI-00672.02`, `UNI-00672` |
| Usuário |  | `UNI-00672.02`, `UNI-00672` |
| Data e hora |  | `UNI-00672.02` |

**Relações:** Nenhuma baixa, conferência ou carregamento é validado sem código; Código não reconhecido pede confirmação

**Decisões aplicadas:** item-9, item-22

**Em aberto:** No SET13 o QR é lido só ao desembalar e a instalação vem do checklist; o SET12 traz leitura também na instalação (UNI-00941). Descarregamento é proposta. UNI-00672 está a conferir. Número de cada setor em aberto (item-22).

**Fonte:** DOC-091 §4; DOC-015 §04; UNI-00672.02

## Checklist de qualidade

Documento CHK-001 de conferência de cada item.

**Módulos:** EXP

| Campo | Detalhe | Origem |
|---|---|---|
| Item | Citado como IT no original. | `UNI-00696` |
| Medidas |  | `UNI-00696` |
| Acabamento |  | `UNI-00696` |
| Funcionamento |  | `UNI-00696` |
| Conformidade com a amostra aprovada |  | `UNI-00696` |
| Embalagem e etiqueta |  | `UNI-00696` |
| Foto |  | `UNI-00696`, `UNI-00447` |
| Responsável e data |  | `UNI-00696` |

**Relações:** Peça reprovada volta à produção, que tem 3 dias para corrigir; Alimenta o relatório de conformidade

**Decisões aplicadas:** item-9, item-22

**Em aberto:** UNI-00696 está a conferir. Número de cada setor em aberto (item-22).

**Fonte:** DOC-032 §06; UNI-00696

## Relatório de conformidade

Relatório visual, com fotos de cada item.

**Módulos:** EXP, PLA, COM

| Campo | Detalhe | Origem |
|---|---|---|
| Fotos de cada item |  | `UNI-00415`, `UNI-00415.01` |
| Quem alimenta | Qualidade e Produção, até o carregamento. | `UNI-00415`, `UNI-00087` |
| Envio ao cliente | Só quando o cliente pede, pelo Comercial. | `UNI-00416`, `UNI-00286` |

**Relações:** Vai para o dossiê do evento

**Fonte:** DOC-012 PLA-E22; UNI-00415

## Romaneio

Documento de carga ROM-001 e de retorno ROM-002.

**Módulos:** LOG, EXP

| Campo | Detalhe | Origem |
|---|---|---|
| Volume | Número de total. | `UNI-00697` |
| Item | Citado como IT no original. | `UNI-00697` |
| Descrição |  | `UNI-00697` |
| Peso |  | `UNI-00697` |
| Dimensões |  | `UNI-00697` |
| Ordem de carga e descarga |  | `UNI-00697` |
| Veículo |  | `UNI-00697` |
| Motorista |  | `UNI-00697` |
| Horário |  | `UNI-00697` |
| Conferência na saída e na chegada |  | `UNI-00697` |
| Retorno | ROM-002, no pós-evento. | `UNI-00053` |

**Relações:** Carregado versus previsto alerta sem bloquear a saída

**Decisões aplicadas:** item-9, item-22

**Em aberto:** UNI-00697 está a conferir. Bloqueio da saída diverge: UNI-00299.01 alerta sem bloquear; UNI-01539 ainda pergunta se o Portal bloqueia quando falta item. Transporte e motorista não foram detalhados (UNI-00939).

**Fonte:** DOC-032 §06; UNI-00697

## Estimativa de carga

Cálculo de volume, peso e veículos do projeto.

**Módulos:** LOG

| Campo | Detalhe | Origem |
|---|---|---|
| Volume e peso total | Em m³, com medidas e peso de cada item da ficha, já com embalagem. | `UNI-01660` |
| Itens frágeis ou não empilháveis |  | `UNI-01660` |
| Estimativa preliminar | Antes do contrato, do memorial e de projetos parecidos, para o custo de frete. | `UNI-01661` |
| Tipo e quantidade de veículos | Com distribuição da carga e capacidades configuráveis. | `UNI-00900.01` |
| Veículos realmente usados | Comparados depois do carregamento. | `UNI-01662` |
| Confirmação de itens fora do caminhão |  | `UNI-01663` |

**Relações:** Preenche o formulário de frete; Itens entregues pelo fornecedor saem do cálculo

**Em aberto:** Capacidades dos veículos pendentes (UNI-00900).

**Fonte:** DOC-091 §31; UNI-01660

## Solicitação de frete

Formulário padrão de frete preenchido pelo responsável da unidade.

**Módulos:** LOG

| Campo | Detalhe | Origem |
|---|---|---|
| Transportadora |  | `UNI-01448` |
| Origem e destino |  | `UNI-01448` |
| Data de carregamento |  | `UNI-01448` |
| Horário de chegada na feira |  | `UNI-01448` |
| Quantidade de veículos |  | `UNI-01448` |
| Tipo de transporte |  | `UNI-01448` |
| Valor negociado |  | `UNI-01448` |
| Data limite da nota fiscal de remessa |  | `UNI-01448` |

**Relações:** Gera uma ordem de compra para o Financeiro

**Fonte:** DOC-091 §Respostas; UNI-01448; UNI-01625

## Formulário de deslocamento

Formulário de deslocamento da equipe para a feira.

**Módulos:** LOG, CRD, AUD

| Campo | Detalhe | Origem |
|---|---|---|
| Custo de deslocamento |  | `UNI-01450` |
| Diárias de hotel |  | `UNI-01450` |
| Quantidade e nome de cada pessoa |  | `UNI-01450` |
| Quem será credenciado |  | `UNI-01450` |

**Relações:** Vai ao Financeiro: gera ordem de compra de hotel e deslocamento; Vai ao Credenciamento: gera os documentos da equipe

**Fonte:** DOC-091 §Respostas; UNI-01450

## Formulário semanal de equipe terceirizada

Registro por projeto de quem trabalhou, para pagamento semanal.

**Módulos:** FIN, PRD

| Campo | Detalhe | Origem |
|---|---|---|
| Projeto |  | `UNI-01449` |
| Pessoas que trabalharam |  | `UNI-01449`, `UNI-01627` |
| Número de diárias |  | `UNI-01449` |
| Valor da diária |  | `UNI-01449` |
| Diária de alimentação |  | `UNI-01449` |
| Descontos de diária | Com motivo. | `UNI-01449` |
| Relatório completo | Com observações. | `UNI-01449` |

**Relações:** Gera ordem de compra, validada pelo Financeiro e colocada no fluxo semanal

**Fonte:** DOC-091 §Respostas; UNI-01449

## Veículo

Veículo da frota da Imagine, por unidade.

**Módulos:** LOG

| Campo | Detalhe | Origem |
|---|---|---|
| Placa |  | `UNI-01439` |
| Modelo |  | `UNI-01439` |
| Unidade |  | `UNI-01439` |
| Quilometragem atual | Lançada no app uma vez por semana. | `UNI-01439`, `UNI-00009.01`, `UNI-01601` |
| Plano de manutenção | Troca de óleo e preventivas por quilometragem ou data. | `UNI-01439` |
| Consumo | Km por litro, usado no cálculo do combustível. | `UNI-01605` |
| Solicitação de lavagem | Mensal, conferida; gera ordem de compra. | `UNI-00009.04`, `UNI-01602` |

**Relações:** Alertas de manutenção por unidade; Relatório semanal de quilometragem

**Fonte:** DOC-091 §5; UNI-01439

## Verba de viagem

Verba de combustível, pedágio e estacionamento, com controles antifraude.

**Módulos:** LOG, FIN

| Campo | Detalhe | Origem |
|---|---|---|
| Solicitante | Cada um na sua unidade; terceirizado só acessa a própria verba. | `UNI-01604`, `UNI-01517` |
| Rota | Origem, destino e km por mapa, calculados pelo sistema, não digitados. | `UNI-00009.07` |
| Combustível | Km ÷ consumo × preço do litro, pela tabela padrão. | `UNI-00009.05`, `UNI-01605` |
| Pedágio e estacionamento | Valor previsto da rota. | `UNI-00009.05`, `UNI-01605` |
| Valor liberado | Pelo Financeiro. | `UNI-00009.05`, `UNI-00009.06` |
| Foto do hodômetro | Na saída e na volta. | `UNI-00009.08` |
| Preço do litro e justificativa | Limitado pela média da região (ANP); acima exige justificativa. | `UNI-00009.09` |
| Cartão e tag | Preferência por cartão de combustível e tag de pedágio. | `UNI-00009.10` |
| Notas fiscais | Em até 5 dias; a IA confere data, posto, placa e horário. | `UNI-00009.06`, `UNI-00009.11`, `UNI-00009.12` |
| Valor realizado | Comparado ao liberado. | `UNI-00009.06` |
| Diferença | Devolução ou reembolso. | `UNI-01606` |
| Reembolso de terceirizado | Sem adiantamento nem cartão, limitado à rota e à tabela padrão. | `UNI-01607` |

**Relações:** Sem comprovantes, nova verba fica bloqueada; Grava o realizado na base histórica

**Em aberto:** O material não nomeia status; o fluxo cita solicitada, validada e liberada (UNI-00009.05). Descontos em folha a validar com a Maitê (UNI-00009.13).

**Fonte:** DOC-091 §5; UNI-00009.05; UNI-00009.07

## Documento de credenciamento

Cada documento exigido pela feira ou emitido pela Imagine, no checklist.

**Módulos:** CRD

| Campo | Detalhe | Origem |
|---|---|---|
| Tipo | Projeto aprovado, estrutural, detalhamento parcial, planta elétrica, pontos de carga e cabos, laudo, cálculo de carga, RRTs, termo de responsabilidade, documentos dos funcionários e caminhão, além das exigências da feira. | `UNI-00666.02`, `UNI-00665`, `UNI-00665.01`, `UNI-00422` |
| Responsável | Notificado pelo Portal. | `UNI-00666.02`, `UNI-00606` |
| Prazo |  | `UNI-00666.02`, `UNI-00667` |
| Resultado da conferência | Conforme ou não conforme, contra os padrões da Maitê. | `UNI-00426.01`, `UNI-00565.01` |

**Status:** pendente · solicitado · recebido · conferido · publicado · aprovado

**Relações:** Conferido é pela Maitê; aprovado é pela feira; Feira não aprova: o engenheiro refaz detalhamento, cargas e pontos aéreos

**Decisões aplicadas:** item-3

**Em aberto:** Divergência de texto no checklist: cálculo de carga e dados do caminhão (UNI-00665); carga aérea e caminhão e placa (UNI-00665.01). Se o laudo é sempre exigido (UNI-00923). Prazos de devolução e de conferência (UNI-00924, UNI-00928). Quem fornece cada documento é inferido (UNI-01108).

**Fonte:** DOC-091 §4; DOC-013 §04; UNI-00666.02; UNI-00625

## Pasta do credenciamento

Dossiê do projeto na feira (CRD-001), usado pela Montagem.

**Módulos:** CRD, MON

| Campo | Detalhe | Origem |
|---|---|---|
| Formulário do evento | Cliente, evento, prazos da feira e informações úteis. | `UNI-00417` |
| Dados do cliente | Razão social, CNPJ, endereço e contatos. | `UNI-00666`, `UNI-00419` |
| Acesso ao portal do expositor | Login e senha do cliente, com acesso restrito. | `UNI-00666`, `UNI-00117`, `UNI-00420` |
| Checklist | Precisa estar 100% resolvido, com o ok da Maitê. | `UNI-00666`, `UNI-00206` |
| Pasta final | Credenciais, documentos e projeto aprovado. | `UNI-00428`, `UNI-00666` |

**Relações:** Fica bloqueada até o checklist completo; A Montagem apresenta no pavilhão pelo app, junto com memorial validado, projeto e 3D, detalhamento, resumo das fichas e etiquetas com leituras (UNI-00042)

**Em aberto:** Quem pede o login ao cliente (UNI-00925). Taxas da feira (UNI-00926).

**Fonte:** DOC-013; UNI-00666; UNI-00428

## Cronograma compatibilizado

Cronograma da feira compatibilizado com o da Imagine.

**Módulos:** CRD

| Campo | Detalhe | Origem |
|---|---|---|
| Prazos da feira |  | `UNI-00667` |
| Cronograma macro da Imagine |  | `UNI-00667`, `UNI-00423` |
| Prazo de cada documento por responsável |  | `UNI-00667` |
| Alertas antes de cada vencimento |  | `UNI-00667` |

**Relações:** Publicação no portal da feira respeita esses prazos

**Em aberto:** Quantos dias antes o Portal alerta (UNI-00927).

**Fonte:** DOC-013 §04; UNI-00667

## Formulário pré-evento

Formulário preenchido pelo cliente no Portal antes da feira.

**Módulos:** CLI, MON

| Campo | Detalhe | Origem |
|---|---|---|
| Responsáveis do cliente |  | `UNI-00782.03` |
| Validador da montagem | Nome e dados para autenticação eletrônica no app. | `UNI-00782.03`, `UNI-01462` |
| Cronograma do cliente na feira |  | `UNI-00782.03` |
| Fornecedores terceirizados |  | `UNI-00782.03` |
| Itens de cortesia |  | `UNI-00782.03` |

**Relações:** Preenchido até 15 dias antes do início da feira; O validador assina o termo de aceite

**Fonte:** DOC-091 §12; UNI-00782.03

## Item de cortesia

Item que fica com o cliente ao fim do evento.

**Módulos:** CLI, COM, MON

| Campo | Detalhe | Origem |
|---|---|---|
| Item apontado | No Portal; definido pelo Comercial, validado pelo Diego. | `UNI-00011.05`, `UNI-01578` |
| Aceite do cliente | Fica registrado; depois da retirada, a responsabilidade é dele. | `UNI-00011.05` |
| Retirada | Consta no termo de aceite. | `UNI-00043.01` |

**Relações:** Listado no formulário pré-evento e no termo de aceite

**Fonte:** DOC-091 §12; UNI-00011.05

## Entrega de fornecedor na feira

Agenda de itens entregues pelo fornecedor direto na feira.

**Módulos:** LOG, MON

| Campo | Detalhe | Origem |
|---|---|---|
| Fornecedor |  | `UNI-00789.07` |
| Data |  | `UNI-00789.07` |
| Horário |  | `UNI-00789.07` |
| Conferência com foto | Pelo produtor de montagem. | `UNI-00789.07` |

**Relações:** Item com transporte entregue pelo fornecedor sai do cálculo de carga

**Em aberto:** Quem confere recebimento quando a entrega é direto no pavilhão (UNI-00976).

**Fonte:** DOC-091 §31; UNI-00789.07

## Checklist de montagem

Conferência item a item no app (CHK-002), na montagem, na entrega e na desmontagem.

**Módulos:** MON, CLI

| Campo | Detalhe | Origem |
|---|---|---|
| Item do memorial | Com código; inclui equipamentos de AV programados. | `UNI-01432`, `UNI-00458`, `UNI-00442` |
| Ok | Sem foto não há ok, e foto sem ok não conta. | `UNI-01432`, `UNI-00166` |
| Foto |  | `UNI-01432`, `UNI-00166` |
| Conferência com o cliente | Cliente e produtor, item a item. | `UNI-00460` |
| Destino na desmontagem | Peças que voltam e descartadas. | `UNI-00464` |

**Relações:** Sequência vem do item do projeto; Alimenta o dashboard de montagem e o termo de aceite

**Decisões aplicadas:** item-9

**Em aberto:** A lista de peças que voltam deve ser feita no Planejamento, ajuste pendente no SET07 (UNI-00940).

**Fonte:** DOC-091 §4; UNI-01432; UNI-00458

## Termo de aceite

Termo de entrega do estande (TER-001), gerado pelo app e assinado eletronicamente.

**Módulos:** MON, CLI

| Campo | Detalhe | Origem |
|---|---|---|
| Identificação | Cliente, feira, estande e código do projeto. | `UNI-00674`, `UNI-00674.01`, `UNI-00043.01` |
| Itens conferidos | Itens do memorial com ok e foto. | `UNI-00674`, `UNI-00674.01`, `UNI-00043.01` |
| Ressalvas | Com correção e foto; decisão digitada quando inviável. | `UNI-00674`, `UNI-00674.01`, `UNI-00208` |
| Cortesias retiradas |  | `UNI-00043.01` |
| Data, horário e local |  | `UNI-00674`, `UNI-00043.01` |
| Assinatura | Validador do cliente, com autenticação própria, e produtor pela Imagine. | `UNI-00674`, `UNI-00674.01`, `UNI-00043.02` |
| Destino | Jurídico, financeiro e comercial; também ao cliente por e-mail. | `UNI-00674`, `UNI-00043`, `UNI-00461.02` |
| PDF | Gerado automaticamente, com valor jurídico. | `UNI-00461.01` |

**Relações:** Fica no histórico do projeto e no dossiê do evento

**Em aberto:** A §4 traz menos campos que DOC-016 e DOC-091 §12: cortesias e local aparecem só em UNI-00043.01. A plataforma deve garantir validade jurídica, a validar (UNI-01463).

**Fonte:** DOC-091 §4; DOC-016 §05; UNI-00674

## Termo de entrega de PDV

Modelo de termo para entrega de material de ponto de venda.

**Módulos:** EXP

| Campo | Detalhe | Origem |
|---|---|---|
| Identificação das partes |  | `UNI-00733` |
| Dados da entrega | Pedido ou OS, campanha, vigência, data e hora, tipo, nota fiscal ou romaneio, equipe Imagine e promotor do cliente. | `UNI-00709` |
| Itens entregues | Material, especificação, local, quantidade pedida e entregue, e status. | `UNI-00710` |
| Amostra aprovada | Peça, material, espessura, impressão ou acabamento, medidas finais e aprovador com data. | `UNI-00711` |
| Vistoria na loja | Quantidades, danos, cores e artes, preços e validade, firmeza, locais, corredores, regras da rede, limpeza e fotos. | `UNI-00733`, `UNI-00177` |
| Ressalvas |  | `UNI-00733` |
| Condições |  | `UNI-00733`, `UNI-00265`, `UNI-00266` |
| Registro fotográfico |  | `UNI-00733` |
| Assinaturas | Imagine, contratante e loja, com nome, cargo, local e data. | `UNI-00712`, `UNI-00733` |

**Status:** entregue · instalado · com ressalva · não entregue

**Relações:** Usado em Trade marketing; Os status são de cada item entregue

**Em aberto:** Prazos de reclamação e garantia em branco no modelo (UNI-01070). O material não diz como este termo se relaciona com o termo de aceite do estande.

**Fonte:** DOC-060; UNI-00733

## Chamado do plantão

Pedido de manutenção do cliente durante a feira.

**Módulos:** MON, CLI

| Campo | Detalhe | Origem |
|---|---|---|
| Cliente e estande |  | `UNI-00675` |
| Pedido |  | `UNI-00675`, `UNI-00675.01` |
| Foto | Opcional na abertura. | `UNI-00675`, `UNI-00675.01` |
| Data |  | `UNI-00675` |
| Notificados | Plantonista, comercial e coordenadores. | `UNI-00675`, `UNI-00675.01`, `UNI-00610` |
| Quem atendeu | Com quando. | `UNI-00675`, `UNI-00675.01` |
| Conclusão com foto | Data, horário e item executado. | `UNI-00675`, `UNI-00675.01`, `UNI-00611` |
| Aviso push ao cliente |  | `UNI-00675`, `UNI-00611` |

**Relações:** Entra só pela aba Plantão técnico, não pelo WhatsApp; Forma o relatório histórico do estande

**Fonte:** DOC-091 §4; DOC-016 §06; UNI-00675

## Dossiê do evento

Reunião dos documentos do evento na aba Pós-feira.

**Módulos:** POS

| Campo | Detalhe | Origem |
|---|---|---|
| Termo de aceite e ressalvas |  | `UNI-00044`, `UNI-00466` |
| Relatório do plantão técnico |  | `UNI-00044`, `UNI-00466` |
| Relatório de conformidade |  | `UNI-00044` |
| Relatórios de produção e erros |  | `UNI-00044` |
| Observações do cliente |  | `UNI-00044`, `UNI-00466` |
| Pesquisa de satisfação |  | `UNI-00044` |
| Revisão do responsável | O que foi bem, ressalva ou retrabalho. | `UNI-00467` |
| Fotos do Marketing |  | `UNI-00480` |

**Relações:** A desmontagem abre o dossiê

**Decisões aplicadas:** item-18

**Em aberto:** Responsável pelo Pós-feira (item-18; UNI-00893).

**Fonte:** DOC-017 §03; UNI-00044

## Pesquisa de satisfação

Pesquisa enviada ao cliente depois da feira, por link sem login.

**Módulos:** POS

| Campo | Detalhe | Origem |
|---|---|---|
| NPS | De 0 a 10. | `UNI-00676`, `UNI-00676.01` |
| Nota por etapa | De 1 a 5. | `UNI-00676`, `UNI-00676.01` |
| Esforço | De 1 a 5. | `UNI-00676`, `UNI-00676.01` |
| Três palavras |  | `UNI-00676`, `UNI-00676.01` |
| Ponto forte e ponto de melhoria |  | `UNI-00676`, `UNI-00676.01` |
| Próxima feira ou recompra |  | `UNI-00676`, `UNI-00676.01` |
| Autorização de depoimento |  | `UNI-00676`, `UNI-00676.01` |
| Análise da IA | Temas, palavras-chave e sentimento. | `UNI-00470` |
| Tratamento do detrator | Nota de 0 a 6; contato em até 48 horas registrado. | `UNI-00575` |

**Relações:** Respostas ficam no histórico do cliente

**Decisões aplicadas:** item-18

**Em aberto:** DOC-017 diz próxima feira; a §4 diz recompra. Quem liga ao detrator (UNI-00943). Link sem login a confirmar (UNI-00942).

**Fonte:** DOC-091 §4; DOC-017 §04; UNI-00676

## Plano de ação

Plano 5W2H que nasce da reunião de melhoria.

**Módulos:** POS

| Campo | Detalhe | Origem |
|---|---|---|
| O quê, por quê, quem, quando, onde, como e quanto | Com responsável, prazo e indicador. | `UNI-00677`, `UNI-00474` |
| Resultado medido | Na rodada seguinte. | `UNI-00677`, `UNI-00474` |

**Relações:** Segue o ciclo PDCA

**Fonte:** DOC-091 §4; DOC-017 §05; UNI-00677

## Fechamento do job

Comparação final do projeto (REL-001 e REL-002).

**Módulos:** CUS, POS

| Campo | Detalhe | Origem |
|---|---|---|
| Previsto x realizado | REL-001. | `UNI-00053` |
| Por item | Orçado, comprado e horas reais; citado como IT no original. | `UNI-00698` |
| OC e OS fora do orçado | Com motivo. | `UNI-00698` |
| Recebido x previsto |  | `UNI-00698` |
| Margem prevista x real |  | `UNI-00698` |
| Lições para a biblioteca de custos |  | `UNI-00698` |
| Avaliação de fornecedor |  | `UNI-00053` |

**Relações:** Alimenta a base histórica de custos

**Decisões aplicadas:** item-9, ponto-2

**Em aberto:** UNI-00698 está a conferir. Pós-evento é proposta (UNI-00977). Quem vê orçado x comprado (ponto-2).

**Fonte:** DOC-032 §04 e §06; UNI-00698

## Roteiro de captação

Roteiro do Marketing, por momento do projeto.

**Módulos:** MKT

| Campo | Detalhe | Origem |
|---|---|---|
| Momento | Bastidores, montagem, abertura, drone, stand pronto, vídeo do stand, evento acontecendo e depoimento. | `UNI-00678` |
| O que captar |  | `UNI-00678` |
| Formato |  | `UNI-00678` |

**Relações:** Recebe as datas do projeto

**Decisões aplicadas:** item-18

**Em aberto:** Quem capta (UNI-00944). Autorização de drone (UNI-00946). Responsável de Marketing (item-18).

**Fonte:** DOC-018 §03; UNI-00678

## Material do acervo

Foto ou vídeo do projeto guardado no acervo de Marketing.

**Módulos:** MKT

| Campo | Detalhe | Origem |
|---|---|---|
| Projeto | Pasta pelo código. | `UNI-01433`, `UNI-00479` |
| Tipo | Etiquetas: bastidores, evento, portfólio, vídeo, depoimento. | `UNI-01433`, `UNI-00479` |
| Autorização de imagem |  | `UNI-01433`, `UNI-00478` |
| Acessos e downloads | Cada visualização e download fica registrado. | `UNI-01433`, `UNI-00482` |

**Relações:** Só o Marketing vê; os outros setores pedem acesso

**Decisões aplicadas:** item-18

**Em aberto:** Prazo para o material entrar no acervo (UNI-00947). Responsável de Marketing (item-18).

**Fonte:** DOC-091 §4; UNI-01433

## Pedido de acesso ao acervo

Pedido de um setor para usar material do acervo.

**Módulos:** MKT

| Campo | Detalhe | Origem |
|---|---|---|
| Material |  | `UNI-00120` |
| Motivo |  | `UNI-00120`, `UNI-00481` |
| Prazo | Expira sozinho. | `UNI-00120`, `UNI-00120.02` |
| Motivo da negativa |  | `UNI-00121.01` |
| Termo de uso | Finalidade, prazo, uso interno, apagar downloads no fim e aceite registrado. | `UNI-00121` |

**Status:** liberado · negado · expirado

**Relações:** Refere-se a um material do acervo

**Em aberto:** Prazo padrão e marca d'água (UNI-00948).

**Fonte:** DOC-018; UNI-00120; UNI-00121

## Indicação

Empresa indicada por um cliente no programa de indicação.

**Módulos:** FID, CRM

| Campo | Detalhe | Origem |
|---|---|---|
| Empresa indicada |  | `UNI-00859.03` |
| Contato |  | `UNI-00859.03` |
| Feira |  | `UNI-00859.03` |
| Origem do indicador | Entra no RD Station. | `UNI-00859.03` |
| Indicação fechada | Só conta depois do contrato assinado e do primeiro pagamento. | `UNI-00859.04` |

**Relações:** Vira origem de cliente; A recompensa vai à empresa como upgrade, nunca em dinheiro

**Em aberto:** Validação da Maitê: indicação (UNI-00898, UNI-00859.02). Pontos e níveis de fidelidade sugeridos em UNI-00858 são outra proposta, ainda a validar (UNI-00950).

**Fonte:** DOC-091; UNI-00859.03; UNI-00859.04

## Item de upgrade

Item do portfólio da biblioteca de fidelização.

**Módulos:** FID, BIB

| Campo | Detalhe | Origem |
|---|---|---|
| Foto |  | `UNI-01466` |
| Descrição |  | `UNI-01466` |
| Nível mínimo |  | `UNI-01466` |

**Relações:** Oferecido nas campanhas mensais

**Em aberto:** Itens ainda a definir (UNI-01466).

**Fonte:** DOC-091; UNI-01466

## Item de collab

Item do catálogo de collabs na biblioteca macro.

**Módulos:** BIB, MKT

| Campo | Detalhe | Origem |
|---|---|---|
| Marca parceira |  | `UNI-01467` |
| Foto |  | `UNI-01467` |
| Descrição |  | `UNI-01467` |
| Personalização possível |  | `UNI-01467` |
| Prazo de produção |  | `UNI-01467` |

**Relações:** Oferecido como adicional vendido ou benefício de upgrade

**Fonte:** DOC-091; UNI-01467; UNI-00754.01

## Movimento do usuário

Registro do que cada usuário faz no Portal, base da medição.

**Módulos:** INC

| Campo | Detalhe | Origem |
|---|---|---|
| Tipo | Notificação, resposta, devolução, retrabalho, prazo cumprido ou perdido. | `UNI-00488` |
| Usuário |  | `UNI-00488` |

**Relações:** Alimenta o placar

**Decisões aplicadas:** item-23

**Em aberto:** Assunto não é prioridade (item-23).

**Fonte:** DOC-023; UNI-00488

## Placar do incentivo

Apuração do programa de incentivo por setor e pessoa.

**Módulos:** INC

| Campo | Detalhe | Origem |
|---|---|---|
| Pilares | Prazo, qualidade e eficiência; pesos sugeridos. | `UNI-00490`, `UNI-00629` |
| Níveis | Gatilho da empresa, setor 50%, feira 30%, individual 20%. | `UNI-00630`, `UNI-00630.01` |
| Período | Por feira ou por trimestre. | `UNI-00490` |
| Contestações | Atraso de outro setor não conta. | `UNI-00491` |
| Forma de pagamento | Prêmio, PLR ou bônus. | `UNI-00493.01`, `UNI-00492` |

**Relações:** Convive com o Índice de Desempenho do Setor

**Decisões aplicadas:** item-23

**Em aberto:** Qual é o uso de cada um (item-23). Pesos, período, tamanho do bônus e administração (UNI-00952, UNI-00953, UNI-00956, UNI-00957).

**Fonte:** DOC-023; UNI-00490; UNI-00630

## Índice de Desempenho do Setor

Nota do setor calculada pelo sistema com os registros de cada setor.

**Módulos:** INC, TRP

| Campo | Detalhe | Origem |
|---|---|---|
| Nota | De 0 a 100. | `UNI-00781.01` |
| Prazo | Peso 25%: etapas entregues até a data de corte. | `UNI-01583` |
| Assertividade | Peso 25%: entregas aprovadas de primeira. | `UNI-01584` |
| Produtividade | Peso 20%: concluído em relação ao planejado. | `UNI-01585` |
| Custo | Peso 15%: previsto x realizado, sem custos adicionais causados pelo setor. | `UNI-01586` |
| Satisfação | Peso 15%: nota do cliente e feedback dos setores que recebem. | `UNI-01587` |

**Relações:** Convive com o placar do incentivo; Alimentado pelas mesmas informações da tela inicial

**Decisões aplicadas:** item-23

**Em aberto:** Qual é o uso de cada um (item-23). UNI-00781.01 está a conferir.

**Fonte:** DOC-091 §5; UNI-00781.01

## Solução digital registrada

Aplicação desenvolvida em um projeto, guardada para reaproveitar.

**Módulos:** TIN

| Campo | Detalhe | Origem |
|---|---|---|
| Nome |  | `UNI-00342` |
| Descrição |  | `UNI-00342` |
| Mídia |  | `UNI-00342` |
| Ferramentas |  | `UNI-00342` |
| Custo real e tempo |  | `UNI-00342` |
| Reaproveitamento |  | `UNI-00342` |
| Sugestão de preço como adicional |  | `UNI-00342` |

**Relações:** Oferecida em novos projetos como adicional

**Fonte:** DOC-091; UNI-00342; UNI-00342.01

## Plano de produção de evento

Dados de gestão do projeto-mãe de Produção de evento.

**Módulos:** EVT

| Campo | Detalhe | Origem |
|---|---|---|
| Cronograma mestre | Pré-produção, montagem, evento e desmontagem. | `UNI-00271.02`, `UNI-01571` |
| Orçamento geral por rubrica |  | `UNI-00271.02` |
| Matriz de responsabilidades |  | `UNI-00271.02` |
| Mapa de riscos |  | `UNI-00271.02` |
| Documentos e licenças | Alvarás, Bombeiros, prefeitura, ECAD, seguros, laudos e manuais. | `UNI-00271.04` |
| Roteiro minuto a minuto e ocorrências | Ocorrências no app com foto. | `UNI-00271.07` |
| Pagamentos feitos pelo cliente | Acompanhados. | `UNI-00271.06` |
| Taxa de gestão | Valor fixo ou percentual, definida em contrato. | `UNI-00895.01` |

**Relações:** Pertence a um projeto-mãe, com subprojetos das demais categorias

**Em aberto:** Modelo da taxa de gestão e responsável pelo módulo (UNI-00895, UNI-01672).

**Fonte:** DOC-091; UNI-00271.02; UNI-01571

## Plano de gestão de obra

Dados de gestão do projeto-mãe de Gestão de obra.

**Módulos:** COM, PRJ

| Campo | Detalhe | Origem |
|---|---|---|
| Cronograma físico-financeiro |  | `UNI-00687.01`, `UNI-00063` |
| Medições |  | `UNI-00687.01` |
| Diário de obra | No app, com fotos. | `UNI-00687.01`, `UNI-00063` |
| Documentos | ART/RRT, alvarás e regras do condomínio. | `UNI-00687.01` |
| Taxa de gestão |  | `UNI-00687.01` |

**Relações:** Pertence a um projeto-mãe, com serviços da Imagine e fornecedores de obra

**Em aberto:** Responsáveis do módulo (UNI-00894).

**Fonte:** DOC-091 §41; UNI-00687.01

