---
id: ERP-PERFIS
titulo: Perfis e permissões
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Perfis e permissões

**Proposta provisória do Claude.** Junta a seção 8 da Especificação, os itens `ESC-PERFIL` e `REG-ACESSO` e as decisões de Diego. **Construa as permissões por perfil, nunca por nome de pessoa.** Os ocupantes podem mudar, e a lista oficial depende da correção de Diego (item-16). 41 perfis.

## Matriz

`V` vê, `E` edita, `A` aprova. **Célula vazia significa "o material não informa", e não "sem acesso".** Na dúvida, registre em `ERP-CRM/ANDAMENTO/DUVIDAS.md` e deixe fechado.

| Perfil | CRM | PLC | DIS | REU | PRJ | BIB | APR | CUS | COM | FIN | CMP | PLA | CRD | PRD | CVI | AUD | GRA | DCO | D3F | TIN | ALM | EXP | LOG | MON | POS | MKT | CLI | FID | INC | EVT | TRP |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `PERF-DIRETORIA-COMERCIAL` | VA | VA | VA | V | VA | VA | VA | VA | VA | V | V | V | V | V | V | V | V | V | V | VA | V | V | V | V | VA | VA | VA | V | VA | V | V |
| `PERF-DIRETORIA-FINANCEIRA` |  | A |  |  | A |  |  | VA | VA | VA |  |  | VA | V |  |  |  |  |  |  |  |  |  |  | A |  |  |  | VA |  | V |
| `PERF-FINANCEIRO` |  |  |  |  |  |  |  |  | VA | VEA | VA |  |  |  |  |  |  |  |  |  |  |  | VA |  |  |  |  |  |  |  |  |
| `PERF-VENDEDOR` | VE | E |  | EA | A |  | E |  | VEA |  |  |  |  | A |  |  |  |  |  | A |  |  |  | VE | VE |  | E | V |  |  |  |
| `PERF-ASSISTENTE-COMERCIAL` |  |  |  |  |  |  |  |  | VEA |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | E |  |  |  |  |  |  |
| `PERF-PROSPECCAO` | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-ARQUITETO` |  |  |  |  | VE | V |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-FREELANCER` |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-CUSTOS` |  |  |  |  |  |  |  | VEA |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-COMPRAS` |  |  |  |  |  |  |  |  |  | E | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-LOCACOES` |  |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-PLANEJAMENTO` |  |  |  |  |  |  |  |  |  | E |  | VE |  |  |  |  |  |  |  |  |  |  |  | E |  |  |  |  |  |  |  |
| `PERF-PRODUCAO-GERAL` |  |  |  |  |  | E |  |  |  |  |  | VE |  | VE |  |  |  |  |  |  | V | V |  |  |  |  |  |  |  |  |  |
| `PERF-COORD-PRODUCAO` |  |  |  |  |  |  |  |  |  |  |  |  |  | V |  |  |  |  |  |  |  |  |  | V |  |  |  |  |  |  |  |
| `PERF-LIDER-SETOR` |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-APONTAMENTO-PRODUCAO` |  |  |  |  |  |  |  |  |  |  |  |  |  | E |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-VALIDADOR-PADROES` |  |  |  |  |  | VA |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-CVI` |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VEA |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-CRIACAO-GRAFICA` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-AUDIOVISUAL` |  |  |  |  |  |  |  |  |  |  |  |  | E |  |  | VEA |  |  |  |  |  |  | A |  |  |  |  |  |  |  |  |
| `PERF-DECORACAO` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-IMPRESSAO-3D` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-TECNOLOGIA` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VEA |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-CREDENCIAMENTO` |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-ENGENHEIRO` |  |  |  |  | E |  |  |  |  |  |  |  | E |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-QUALIDADE` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VEA |  |  |  |  |  |  |  |  |  |
| `PERF-EXPEDICAO` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |  |  |
| `PERF-LOGISTICA` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VEA |  |  |  |  |  |  |  |  |
| `PERF-ALMOXARIFADO` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  | E |  |  |  |  |  |  |  |  |
| `PERF-MONT-ENCARREGADO` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |
| `PERF-MONT-RESPONSAVEL` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |
| `PERF-MONT-PRODUTOR` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VEA |  |  |  |  |  |  |  |
| `PERF-MONT-COORDENADOR` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |
| `PERF-MONT-PLANTONISTA` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |  |
| `PERF-TERCEIRIZADO` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | E |  |  |  |  |  |  |  |  |
| `PERF-POS-FEIRA` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VE |  |  |  |  |  |  |
| `PERF-MARKETING` |  |  |  |  |  | A |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | VEA |  |  |  |  |  |
| `PERF-CLIENTE` |  |  |  |  |  |  |  |  | A |  |  |  |  |  |  |  |  |  |  | A |  |  |  | VEA |  |  | VEA |  |  |  |  |
| `PERF-EXIBICAO-TV` |  |  |  |  |  |  |  |  |  |  |  |  |  | V |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-ADMIN` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| `PERF-OPERACOES` |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

## `PERF-DIRETORIA-COMERCIAL` · Diretoria comercial e operação

Diretoria que responde por comercial, planejamento e operação, com visão de todo o sistema e aprovação de preço, peças, vendedores e itens novos.

- **Ocupantes citados hoje:** Diego
- **Vê:** todo o sistema (acesso a tudo); área de Custos; fila de cada pessoa e de cada setor, com gargalos e atrasos; dados do monitoramento de equipamentos e contas da empresa
- **Aprova:** preço de venda, com a diretoria jurídica e financeira; novo preço da V2 e preço de adicional; peças de comunicação da Prospecção; pauta e linha de comunicação da Prospecção; vendedor sugerido na distribuição de clientes; itens novos da biblioteca; versão oficial da apresentação institucional; itens de cortesia definidos pelo Comercial; proposta de experiência interativa, com o Comercial; exceção de alteração depois do congelamento; alteração da proposta (basta Financeiro ou Diretoria); demanda sem tempo hábil de produção (G2 da entrada), como Diretoria; conceito criativo, como Diretoria; feira do cliente fora do calendário, como Diretoria; prioridades da reunião de melhoria do pós-feira, como Diretoria; valores e enquadramento do incentivo, com a diretoria jurídica e financeira; detalhamento técnico (ver em aberto)
- **Limites e regras:** O preço de venda só esta diretoria e a jurídica e financeira aprovam (item-1); Entra na validação de preço como diretoria, e não como usuário do Financeiro (inferido no documento); Os dados de monitoramento só Diego e Maitê acessam
- **Decisões aplicadas:** item-1, item-14, item-24
- **Em aberto:** Acesso a tudo não separa ver de editar: aqui só o V e os A citados estão sustentados. O item-1 não diz se o preço exige os dois diretores ou basta um; UNI-00557.02 ainda descreve Maitê na operação e Diego no preço. UNI-00120 diz que só o Marketing vê o acervo, o que não combina com acesso a tudo. UNI-00530 e UNI-00174 dão a Diego a aprovação do detalhamento, e UNI-01649 fala em conferência pelo arquiteto. O prazo de resposta da Diretoria na G2 não foi informado (UNI-00970).
- **Itens:** `UNI-01388`, `UNI-01388.01`, `UNI-00027`, `UNI-00122`, `UNI-00122.01`, `UNI-00749`, `UNI-00557.01`, `UNI-00557.02`, `UNI-00386`, `UNI-00390`, `UNI-00549`, `UNI-00906.01`, `UNI-00553`, `UNI-00015.02`, `UNI-00102`, `UNI-00375`, `UNI-01470`, `UNI-01578`, `UNI-00335`, `UNI-00100`, `UNI-00782.07`, `UNI-00105`, `UNI-00584`, `UNI-00588`, `UNI-00970`, `UNI-00578`, `UNI-01594`, `UNI-00473`, `UNI-00492`, `UNI-00530`, `UNI-00174`, `UNI-01649`, `UNI-00116`, `UNI-00185`, `UNI-01480`, `UNI-00120`, `UNI-01528`, `UNI-00513`

## `PERF-DIRETORIA-FINANCEIRA` · Diretoria jurídica e financeira

Diretoria que responde por contratos, preço, comandas, credenciamento e incentivo, e valida a logística e a operação proposta pela IA.

- **Ocupantes citados hoje:** Maitê
- **Vê:** área de Custos; fila de cada pessoa e de cada setor, com gargalos e atrasos; dados do monitoramento de equipamentos e contas da empresa
- **Aprova:** logística e operação proposta pela IA: valida ou pede alteração (item-19); preço de venda, com a diretoria comercial e operação; novo preço da V2 e preço de adicional; contrato: valida cada ponto duvidoso e libera; validação final dos documentos do credenciamento; valores e enquadramento do incentivo, com a diretoria comercial e operação; alteração da proposta (basta Financeiro ou Diretoria); demanda sem tempo hábil de produção (G2 da entrada), como Diretoria; conceito criativo, como Diretoria; feira do cliente fora do calendário, como Diretoria; prioridades da reunião de melhoria do pós-feira, como Diretoria
- **Limites e regras:** O preço de venda só esta diretoria e a comercial e operação aprovam (item-1); Os dados de monitoramento só Diego e Maitê acessam
- **Decisões aplicadas:** item-1, item-14, item-19
- **Em aberto:** A Maitê ocupa este perfil e o de Financeiro, e o item-14 deixa em aberto o acesso do Financeiro à área de Custos; com função e pessoa separadas, a resposta muda quem vê os custos. O material não diz quem valida se ela estiver ausente. O item-1 não diz se o preço exige as duas diretorias ou basta uma.
- **Itens:** `UNI-01389`, `UNI-01389.01`, `UNI-00027`, `UNI-00122`, `UNI-00122.01`, `UNI-00749`, `UNI-00557.01`, `UNI-01499`, `UNI-01519`, `UNI-00383.01`, `UNI-00750.01`, `UNI-00386`, `UNI-00390`, `UNI-00751.01`, `UNI-00751.07`, `UNI-00179`, `UNI-00206`, `UNI-00492`, `UNI-00105`, `UNI-00584`, `UNI-00588`, `UNI-00578`, `UNI-01594`, `UNI-00473`, `UNI-00185`, `UNI-01480`

## `PERF-FINANCEIRO` · Financeiro e Jurídico

Setor que aprova comandas, confere ordens de compra e locação, valida contratos e controla recebimentos e pagamentos.

- **Ocupantes citados hoje:** Maitê
- **Vê:** comandas com o previsto × pedido item a item; ordens de compra das duas unidades, em dois caminhos diários; ordens de frete, equipes terceirizadas e viagem por unidade; notificações de preço validado, aceite, comandas, ordens de compra, nota fiscal e adicional aprovado
- **Faz ou edita:** contratos: cria e revisa o modelo e elabora e libera o contrato; pagamentos e recebimentos
- **Aprova:** toda comanda, sem tolerância de diferença; toda comanda, inclusive a diferença da pré-comanda em relação ao orçado; previsão orçamentária do projeto, antes de qualquer compra; conferência da ordem de compra contra comanda e custo; ordem de locação; ordens geradas por deslocamento, frete, verba e equipes terceirizadas; valor do repasse aos projetistas, que depois paga; alteração da proposta (basta Financeiro ou Diretoria)
- **Limites e regras:** Nenhum pagamento sai sem ordem aprovada e recebimento conferido, com conferência da ordem contra o recebimento e a nota; Comanda reprovada volta ao setor que pediu
- **Decisões aplicadas:** ponto-3, item-5, item-14, item-20
- **Em aberto:** Acesso do Financeiro à área de Custos (item-14), embora UNI-00103.01 e UNI-00103.02 mandem cruzar previsto e orçado item a item. Quem aprova depois do alerta de preço e quem vê o resultado da comparação (item-5, ponto-2); UNI-00104 ainda diz aprovação da Maitê. Documentos citam o Financeiro como Maitê e Diego (UNI-00386, UNI-00599), e o UNI-00116 diz, como inferido, que só a Maitê usa o módulo. UNI-00910 ainda registra como não informado quem cria o modelo de contrato; UNI-00077.02 diz Maitê. Quem envia o contrato não está definido (UNI-00918).
- **Itens:** `UNI-00031`, `UNI-00116`, `UNI-00747`, `UNI-00103`, `UNI-00103.01`, `UNI-00103.02`, `UNI-00104`, `UNI-00104.01`, `UNI-00393.01`, `UNI-00763.03`, `UNI-00559`, `UNI-00228`, `UNI-01576`, `UNI-01579`, `UNI-00077.02`, `UNI-00398`, `UNI-00598`, `UNI-01507`, `UNI-01538`, `UNI-01394.01`, `UNI-01541`, `UNI-01535`, `UNI-01625`, `UNI-01627`, `UNI-01517`, `UNI-01504`, `UNI-00395.01`, `UNI-00105`, `UNI-00584`, `UNI-00881.01`, `UNI-00122`, `UNI-00386`, `UNI-00599`, `UNI-00910`, `UNI-00918`

## `PERF-VENDEDOR` · Vendedor

Comercial que atende só os próprios clientes, aprova a prévia da demanda que abriu e autoriza o envio da proposta que fez.

- **Ocupantes citados hoje:** Simone, Luca, Rita, Fran
- **Vê:** só os próprios clientes, com o relatório da Prospecção; funil e Termômetro da Reunião; histórico de pesquisas do cliente na próxima venda; nível de fidelidade do cliente no CRM; chamados do plantão e termo de aceite
- **Faz ou edita:** login do Portal enviado ao cliente; planejamento comercial, junto com o time de vendas; apresentação personalizada antes de enviar; pedidos de ajuste e alteração pelo sistema; relatório de conformidade ao cliente: edita ou pede edição, só quando ele pede; decisão sobre ressalva inviável, com o produtor de montagem, digitada no termo
- **Aprova:** prévia da demanda que abriu (item-2); envio da proposta que fez (item-7); cartão da demanda gerado pela IA, quando participou da reunião; amostra, com o cliente; proposta e encerramento de experiência interativa, como Comercial
- **Limites e regras:** Vê só os próprios clientes; Sem a autorização do vendedor que fez a proposta, o assistente não envia (item-7); Nada da apresentação personalizada sai sem o ok do vendedor
- **Decisões aplicadas:** item-2, item-7, item-4, item-24
- **Em aberto:** Se o prazo de 1 dia da prévia continua (item-2). O item-2 trata só da prévia: G1 e G3 seguem no Comercial (UNI-01102.04), e os significados de G1 e G2 estão em aberto (item-12). Fran também é arquiteta e assistente de Diego; Francine no cadastro de equipe (UNI-01405) parece ser a mesma pessoa, a confirmar no item-16. UNI-00029 chama de Comercial os representantes: não está dito se eles usam este perfil. Quem liga ao detrator é só sugestão (UNI-00943).
- **Itens:** `UNI-00115`, `UNI-00115.01`, `UNI-00358.01`, `UNI-01402`, `UNI-01402.01`, `UNI-01623`, `UNI-00761`, `UNI-01391.01`, `UNI-00029`, `UNI-00760`, `UNI-00015`, `UNI-00360`, `UNI-00119`, `UNI-00496`, `UNI-01472`, `UNI-00579`, `UNI-00579.01`, `UNI-00101.01`, `UNI-01102.04`, `UNI-00505`, `UNI-00880`, `UNI-00585`, `UNI-00585.01`, `UNI-01528`, `UNI-00513`, `UNI-00469`, `UNI-00471`, `UNI-01464`, `UNI-00118`, `UNI-00610`, `UNI-00208`, `UNI-00573`, `UNI-00416`, `UNI-00581`, `UNI-00100`, `UNI-00335`, `UNI-01405`, `UNI-00943`

## `PERF-ASSISTENTE-COMERCIAL` · Assistente comercial

Elabora e envia a proposta, cobra o aceite e cuida do contrato e do painel de demandas.

- **Ocupantes citados hoje:** Anderson
- **Vê:** propostas, aceites, contratos e painel de demandas; só os itens do seu setor; aviso diário de aceite sem resposta depois do prazo
- **Faz ou edita:** proposta comercial: finaliza, ajusta e reenvia; régua de 7 dias e cobrança do aceite; registro do contrato assinado; entrada da demanda aprovada; pedido de resposta à pesquisa, com o vendedor
- **Aprova:** ficha de entrada ENT-001, com a Diretoria (matriz proposta)
- **Limites e regras:** Envia a proposta só com autorização do vendedor que a fez (item-7); Recebe a pré-proposta só depois de o preço ser aprovado
- **Decisões aplicadas:** item-7, item-4, item-24
- **Em aberto:** Anderson consta como a confirmar em UNI-01390 e UNI-01153.01, e como confirmado em UNI-01588. Quantas cobranças e com que frequência (item-4). A expiração no 3º aviso (item-7). Quem envia o contrato: Maitê ou assistente (UNI-00918). Quem pede o login do portal da feira ao cliente (UNI-00925).
- **Itens:** `UNI-01390`, `UNI-01390.01`, `UNI-00022`, `UNI-00032`, `UNI-01403`, `UNI-00599`, `UNI-00387`, `UNI-00914.01`, `UNI-00505`, `UNI-00880`, `UNI-00585`, `UNI-00915.01`, `UNI-01528`, `UNI-01529`, `UNI-01574`, `UNI-00109`, `UNI-00574`, `UNI-01153.01`, `UNI-01588`, `UNI-00918`, `UNI-00925`

## `PERF-PROSPECCAO` · Prospecção

Identifica decisores, faz contato e abre o lead no CRM, até o cliente aceitar o login do Portal.

- **Ocupantes citados hoje:** 2 pessoas mais representantes, sem nomes nos documentos do setor
- **Vê:** leads e pré-cadastros da prospecção
- **Faz ou edita:** lead e pré-cadastro no CRM; revisão da venda aberta automaticamente; condução pela pessoa que captou, de PRO-E7 a PRO-E15
- **Em aberto:** Márcia (SDR comercial no cadastro de equipe) pode pertencer a este perfil; a confirmar no item-16. Não está dito se os representantes têm usuário neste perfil ou no de Vendedor (UNI-00029 e UNI-01401). A Especificação não lista este perfil na seção 8.
- **Itens:** `UNI-00028`, `UNI-01401`, `UNI-00318`, `UNI-00349`, `UNI-00758`, `UNI-00551.01`, `UNI-00029`, `UNI-01411`

## `PERF-ARQUITETO` · Arquiteto

Projetista que acessa os projetos indicados a ele, faz conceito, modelagem, prévia, render, apresentação e memorial, e confere o detalhamento técnico.

- **Ocupantes citados hoje:** Paulão, Ertal, João, Amanda, Dani, Jessyka, Rodrigo, Fran
- **Vê:** projetos indicados a ele; briefing, anexos e pré-escopo do cliente; biblioteca de referências e de itens
- **Faz ou edita:** referências e mood board; modelagem 3D com itens da biblioteca; renders e apresentação; conferência do memorial e do detalhamento técnico; ajustes pedidos pelo sistema
- **Limites e regras:** Acesso só aos projetos indicados a ele, definidos pelo Planejamento
- **Decisões aplicadas:** ponto-1
- **Em aberto:** Lista oficial depende do item-16. João aparece como João e como João Pedro nos itens; Betão (diretor de arte, UNI-01413) e Beto (criação gráfica) podem ser a mesma pessoa. UNI-00030 inclui diretor de arte em Projetos, sem perfil próprio. O que o arquiteto fornece ao Credenciamento é inferido (UNI-01108).
- **Itens:** `UNI-00021`, `UNI-00021.01`, `UNI-01391`, `UNI-00030`, `UNI-00362`, `UNI-00363`, `UNI-00364`, `UNI-00366`, `UNI-00367.02`, `UNI-00369`, `UNI-00370`, `UNI-00372`, `UNI-01649`, `UNI-00004.01`, `UNI-01413`, `UNI-01408`, `UNI-01108`

## `PERF-FREELANCER` · Arquiteto freelancer

Projetista externo nomeado por demanda, com usuário no Portal e acesso só ao projeto indicado a ele.

- **Ocupantes citados hoje:** Nomeado por demanda
- **Vê:** projetos indicados a ele
- **Faz ou edita:** trabalho de projeto nos projetos indicados a ele
- **Limites e regras:** Acesso só aos projetos indicados a ele; Acessos removidos ao fim do projeto, pela regra geral
- **Em aberto:** O material trata o freelancer dentro do perfil Arquiteto e não informa diferença de acesso, como biblioteca de referências ou dados do cliente. Também não diz quem o nomeia nem quem libera o usuário.
- **Itens:** `UNI-00021`, `UNI-00021.01`, `UNI-00751.04`, `UNI-00202`

## `PERF-CUSTOS` · Custos

Confere e aprova a planilha de custos gerada pela IA e mantém a planilha mãe de preços.

- **Ocupantes citados hoje:** Carol
- **Vê:** área restrita de custos; diferenças apontadas pela IA contra o histórico; aviso de nova versão da planilha
- **Faz ou edita:** ajustes por item da planilha gerada pela IA; V2 da planilha: tira e inclui itens e muda quantidades; planilha mãe de preços, todo mês; custo de item em amarelo, com Diego, conforme quadro
- **Aprova:** planilha de custos (item-1)
- **Limites e regras:** Não aprova o preço de venda: só Maitê e Diego (item-1); Não elabora mais a planilha, que vem da IA
- **Decisões aplicadas:** item-1, item-14, item-4
- **Em aberto:** Carol também aparece em Comunicação visual; a lista do item-16 deve confirmar se é a mesma pessoa. Ela pede os preços de SP à Samanta (UNI-00074.01), e o material não diz o que a Samanta enxerga nesse pedido.
- **Itens:** `UNI-00022`, `UNI-00022.01`, `UNI-00122`, `UNI-00122.01`, `UNI-00749`, `UNI-00382.01`, `UNI-00382.02`, `UNI-00557.01`, `UNI-00379.01`, `UNI-00385`, `UNI-00384`, `UNI-00596`, `UNI-00074`, `UNI-00074.01`, `UNI-00240`, `UNI-01520`, `UNI-01521`, `UNI-00585`, `UNI-01396`

## `PERF-COMPRAS` · Compras da unidade

Cota, gera ordens de compra e acompanha entrega e nota fiscal da sua unidade, sem ver o valor orçado.

- **Ocupantes citados hoje:** RS: Osmar; SP: Samanta
- **Vê:** comanda aprovada da sua unidade; fornecedores e ordens de compra da sua unidade; valor do item que foi comprado; alerta de preço da sua ordem de compra; lista de chegadas e coletas da unidade; solicitação de reposição do Almoxarifado
- **Faz ou edita:** cotações; ordens de compra da unidade; justificativa ou renegociação depois do alerta de preço; nota fiscal no Portal
- **Limites e regras:** Não vê o valor orçado; o sistema compara orçado e comprado sem mostrar a ele (ponto-2); Só sabe o valor do item que foi comprado (item-14); Pré-comanda e ordem de compra não mostram os valores previstos ao comprador; Fluxos separados por unidade, cada um com seu cadastro de fornecedores; Nenhum pagamento é combinado fora da ordem de compra
- **Decisões aplicadas:** ponto-2, item-14, item-5
- **Em aberto:** Quem vê o resultado da comparação. Quem aprova depois do alerta de preço. A seção 8 só cita Osmar; Samanta acumula em SP Compras, Planejamento, Produção, Logística e Locações, e o material não diz se os outros perfis dela mostram o orçado. Quem confere o recebimento de material (UNI-00976).
- **Itens:** `UNI-00122`, `UNI-00393`, `UNI-00393.02`, `UNI-00393.03`, `UNI-00690`, `UNI-01556`, `UNI-00597.01`, `UNI-00752.01`, `UNI-00881`, `UNI-00881.01`, `UNI-00104`, `UNI-00078.01`, `UNI-01505`, `UNI-01506`, `UNI-01394`, `UNI-01394.01`, `UNI-01394.02`, `UNI-01394.03`, `UNI-01392.01`, `UNI-01510`, `UNI-01515`, `UNI-00976`

## `PERF-LOCACOES` · Locações da unidade

Setor próprio, no modelo de Compras, que recebe a solicitação de locação do projeto e cuida dos móveis e demais itens locados.

- **Ocupantes citados hoje:** RS: Érika; SP: Samanta
- **Vê:** solicitação de locação compilada pelo sistema; avisos de conferência com foto não registrada e de avaria
- **Faz ou edita:** locações de móveis e demais itens da unidade
- **Limites e regras:** Ordem de locação exige aprovação da Maitê; Equipamentos de audiovisual ficam com o Audiovisual
- **Em aberto:** O material não diz se a regra do comprador sem ver o orçado (ponto-2) vale para quem contrata locação. Os itens de locação estão em BIB e LOG, sem tela definida.
- **Itens:** `UNI-01395`, `UNI-01395.01`, `UNI-01395.02`, `UNI-01541`, `UNI-01543`, `UNI-00006.01`

## `PERF-PLANEJAMENTO` · Planejamento

Monta e publica os cronogramas, define a unidade de produção, libera os acessos da montagem e controla as horas dos projetistas.

- **Ocupantes citados hoje:** RS: Érika; SP: Samanta
- **Vê:** cronogramas e fichas; capacidade e prazos da fila de impressão 3D; avisos de prazo alterado pelos setores
- **Faz ou edita:** cronograma reverso, cronograma macro e cronograma de produção; unidade de produção do projeto; arquiteto de cada projeto; planilha de horas planejadas; horas estimadas e realizadas dos projetistas; liberação e encerramento dos acessos da equipe de montagem
- **Limites e regras:** Libera acesso de montagem só para a equipe nomeada e escalada para a feira
- **Decisões aplicadas:** item-8, ponto-1, item-20
- **Em aberto:** A seção 8 só cita Érika, e UNI-00455 só fala dela para liberar acessos: não está dito quem faz isso em SP. O que o Planejamento faz entre o aceite e a assinatura (ponto-1). Érika também aparece em Marketing, cujo responsável Diego ainda define (item-18).
- **Itens:** `UNI-01392`, `UNI-01392.01`, `UNI-01392.02`, `UNI-00023`, `UNI-00280`, `UNI-00403`, `UNI-00411`, `UNI-00412`, `UNI-01530`, `UNI-01674`, `UNI-00362`, `UNI-00085`, `UNI-01619`, `UNI-00751.04`, `UNI-00751.05`, `UNI-01504`, `UNI-00301`, `UNI-00455`, `UNI-00465`, `UNI-00792`, `UNI-00571`, `UNI-01563`, `UNI-00601`

## `PERF-PRODUCAO-GERAL` · Produção geral

Responde pela produção da unidade: gera fichas, prevê tempos, escala equipes terceirizadas e decide refazer peças com erro.

- **Ocupantes citados hoje:** RS: Eduardo, Marília; SP: Rômulo, Samanta
- **Vê:** fichas, tempos, erros e refação; alerta de itens não conferidos da unidade; agenda de chegadas e conciliação matinal
- **Faz ou edita:** fichas técnicas e listas de materiais por IA (Marília); tempo previsto de cada ficha (Eduardo); seleção e escala das equipes terceirizadas (Eduardo, Samanta); envio de vídeos e lista de gravação de padrões (Marília)
- **Em aberto:** A seção 8 só cita Eduardo e Marília. As divisões de tarefa entre as duas pessoas de cada unidade estão descritas por nome, e não por função. Quem apresenta as fichas na reunião não foi informado (UNI-00930).
- **Itens:** `UNI-00023`, `UNI-00023.01`, `UNI-01393`, `UNI-01392.01`, `UNI-00409`, `UNI-00410`, `UNI-00563`, `UNI-00025`, `UNI-00571`, `UNI-00452.01`, `UNI-01434`, `UNI-01509`, `UNI-01626`, `UNI-00485`, `UNI-00628.01`, `UNI-00790`, `UNI-00930`

## `PERF-COORD-PRODUCAO` · Coordenador de produção

Acompanha de longe os chamados do plantão e as filas de pessoas e setores.

- **Ocupantes citados hoje:** Não informado
- **Vê:** chamados do plantão e relatório de atendimento; fila de cada pessoa e de cada setor, com gargalos e atrasos
- **Em aberto:** O material diz coordenadores, sem dizer quem são nem se a visão de gestor inclui o coordenador de montagem. A tabela de categorias diz só acesso normal da Produção, sem detalhar.
- **Itens:** `UNI-00026`, `UNI-00118`, `UNI-00610`, `UNI-01480`

## `PERF-LIDER-SETOR` · Líder de setor produtivo

Recebe a demanda no app, confere e ajusta a pré-comanda e registra a conclusão das fichas do seu setor.

- **Ocupantes citados hoje:** A definir
- **Vê:** demanda do setor com código do projeto e de cada item; programação do setor, com data de cada material e de cada ficha; modo TV do seu setor e unidade
- **Faz ou edita:** conferência e ajuste da pré-comanda; conclusão da ficha por QR code, com foto e qualidade; novo prazo da ficha, quando atrasa
- **Limites e regras:** Os setores só conferem e ajustam a pré-comanda, sem listagem manual (item-21)
- **Decisões aplicadas:** item-21
- **Em aberto:** Quem são os líderes: UNI-01589 está pendente; UNI-01397 cita Marco, Wagner, Leonardo, Henrique e Alexandre como responsáveis e validadores, sem dizer se são líderes. Se o líder vê os valores previstos da pré-comanda não foi dito. Quem aprova pedido acima do previsto só está inferido (UNI-01111). Em SP os setores são terceirizados e não usam o app.
- **Itens:** `UNI-01589`, `UNI-00035`, `UNI-00429`, `UNI-00443`, `UNI-00444`, `UNI-00605.01`, `UNI-00566`, `UNI-01557`, `UNI-00571`, `UNI-01653`, `UNI-01397`, `UNI-01111`, `UNI-01620`

## `PERF-APONTAMENTO-PRODUCAO` · Assistente de produção da unidade

Imprime e cola a etiqueta no primeiro setor e, em SP, faz a leitura de QR code, a foto e a baixa no lugar das equipes terceirizadas.

- **Ocupantes citados hoje:** RS: assistente da Marília; SP: assistente do Rômulo, a contratar
- **Faz ou edita:** etiqueta simples no primeiro setor; leitura de QR code, foto e baixa das peças no app (SP)
- **Em aberto:** Nenhum dos dois assistentes tem nome. O assistente de SP acumula Expedição, Qualidade, Almoxarifado e frota, e cada um aparece no perfil próprio. O material não diz o que ele vê.
- **Itens:** `UNI-00920.02`, `UNI-00920.03`, `UNI-01621`, `UNI-01651`

## `PERF-VALIDADOR-PADROES` · Validador de padrões do setor

Aprova o rascunho do padrão construtivo antes de ele entrar na biblioteca de padrões.

- **Ocupantes citados hoje:** Marcenaria: RS: Marco, Wagner, Leonardo, Henrique; SP: Rômulo. Elétrica: Alexandre
- **Vê:** rascunho do padrão gerado pela IA; aviso de item sem padrão
- **Aprova:** padrão do setor, antes de entrar na biblioteca
- **Limites e regras:** O padrão só entra na biblioteca depois do ok do validador; Enquanto não houver responsável em SP, Alexandre valida os padrões de elétrica das duas unidades
- **Em aberto:** Marco (marcenaria) e seu Marcos (almoxarifado) têm nomes parecidos, a confirmar no item-16. Não há validador citado para os outros setores. Responsável por elétrica em SP a definir.
- **Itens:** `UNI-00485`, `UNI-00485.04`, `UNI-00486.01`, `UNI-01397`, `UNI-01397.01`, `UNI-01397.02`

## `PERF-CVI` · Comunicação visual da unidade

Controla as peças de comunicação visual e dá o ok de cada etapa, liberando a seguinte.

- **Ocupantes citados hoje:** RS: Carol, Adair
- **Vê:** etapas CVI das peças da unidade
- **Faz ou edita:** solicitações e planejamento das peças (Carol); solicitação ao setor de Criação Gráfica (Carol); execução das etapas (Adair)
- **Aprova:** ok de cada etapa, com data, hora e usuário; arquivo final da Criação Gráfica, conferido e liberado (Carol)
- **Limites e regras:** A peça só avança com o ok do responsável da unidade
- **Em aberto:** Responsável em SP a definir (UNI-00894). A divisão entre Carol e Adair está descrita por nome. UNI-00008 atribui a Christian a demanda de audiovisual dentro do mesmo item de comunicação visual.
- **Itens:** `UNI-01396`, `UNI-01396.01`, `UNI-01580`, `UNI-01581`, `UNI-01568`, `UNI-00008`, `UNI-00894`

## `PERF-CRIACAO-GRAFICA` · Criação gráfica

Atende as solicitações de comunicação visual com facas, preparação e correção de arquivos, nas duas unidades.

- **Ocupantes citados hoje:** Beto
- **Vê:** fila de demandas na tela inicial
- **Faz ou edita:** arquivo final na ficha do item, com o ok dele
- **Em aberto:** Beto e Betão (diretor de arte, UNI-01413) podem ser a mesma pessoa, a confirmar no item-16.
- **Itens:** `UNI-00756`, `UNI-00756.02`, `UNI-01396`, `UNI-01581`, `UNI-01669`, `UNI-01569`, `UNI-01413`

## `PERF-AUDIOVISUAL` · Audiovisual

Planeja o audiovisual dos projetos das duas unidades, com demanda, planilha e locação de equipamentos.

- **Ocupantes citados hoje:** Christian
- **Vê:** demanda de AV aberta pelo sistema; alertas de avaria e de conferência não registrada na locação de AV
- **Faz ou edita:** análise do projeto; planejamento financeiro do AV e planilha padrão; locação de equipamentos de AV nas duas unidades; formulário de deslocamento da equipe de AV
- **Aprova:** planilha de custos do AV, com o Financeiro; lista de itens de AV que não vão no caminhão
- **Limites e regras:** A montagem de AV é sempre de equipe terceirizada
- **Em aberto:** O cadastro de equipe traz Christian como atendimento técnico (UNI-01407) e Walter como produtor técnico audiovisual (UNI-01412), sem perfil na seção 8. Quem da montagem confere as medidas não está definido (UNI-00937).
- **Itens:** `UNI-00747`, `UNI-00747.01`, `UNI-01395`, `UNI-01395.02`, `UNI-00437.01`, `UNI-01532`, `UNI-01533`, `UNI-01534`, `UNI-01634`, `UNI-01617`, `UNI-01663`, `UNI-01407`, `UNI-01412`, `UNI-00937`

## `PERF-DECORACAO` · Decoração

Setor produtivo de itens artesanais e decorativos, com o mesmo código único e os prazos do cronograma reverso.

- **Ocupantes citados hoje:** André
- **Vê:** demanda de decoração do projeto
- **Faz ou edita:** QR code, foto e ok de cada etapa do item
- **Em aberto:** Os itens não dizem o que costureiras e decoradores terceirizados acessam, só que entram na escala e no pagamento como os demais terceirizados (UNI-01668).
- **Itens:** `UNI-00756`, `UNI-00756.01`, `UNI-01566`, `UNI-01567`, `UNI-01398`, `UNI-01668`

## `PERF-IMPRESSAO-3D` · Impressão 3D

Setor que produz as peças 3D e sobe os arquivos de impressão na ficha, só no RS.

- **Ocupantes citados hoje:** RS: Pedro
- **Vê:** demanda de 3D Farm do projeto
- **Faz ou edita:** ficha da peça, com o arquivo fatiado; QR code, foto e ok de cada etapa
- **Em aberto:** Pedro também consta como admin master no cadastro de equipe (UNI-01415): a confirmar no item-16 se é a mesma pessoa.
- **Itens:** `UNI-00755`, `UNI-00755.02`, `UNI-00755.03`, `UNI-01398`, `UNI-01564`, `UNI-01570`, `UNI-01415`

## `PERF-TECNOLOGIA` · Tecnologia e experiências interativas

Setor complementar que conduz as experiências interativas e dá o ok no fim de cada fase.

- **Ocupantes citados hoje:** Bruno
- **Vê:** demanda aberta pelo sistema, com prazo pelo cronograma reverso
- **Faz ou edita:** etapas da experiência interativa
- **Aprova:** ok de cada fase no ERP; proposta técnica sugerida pela IA: avalia, ajusta e decide
- **Em aberto:** O cadastro de equipe traz Bruno em Growth Solutions (UNI-01406); a função oficial depende do item-16.
- **Itens:** `UNI-00757`, `UNI-00757.01`, `UNI-00757.03`, `UNI-00100`, `UNI-00100.01`, `UNI-00333.01`, `UNI-01570`, `UNI-01406`

## `PERF-CREDENCIAMENTO` · Credenciamento

Cuida do portal da feira, dos documentos e da pasta do credenciamento, compartilhado entre as unidades.

- **Ocupantes citados hoje:** Alexandra
- **Vê:** aba do setor: pasta do projeto, dados do cliente, checklist e cronograma compatibilizado; login e senha do cliente no portal da feira
- **Faz ou edita:** checklist e status de cada documento; documentos não conformes, refeitos e reenviados; limite do formulário de deslocamento; publicação da pasta, depois do ok da Maitê
- **Limites e regras:** Login e senha do cliente no portal da feira ficam com acesso restrito; A pasta só é liberada com o checklist 100% resolvido e o ok da Maitê
- **Decisões aplicadas:** item-18
- **Em aberto:** UNI-00117 guarda o login na aba, e UNI-00202 pede senhas no cofre. Quem pede o login ao cliente não foi informado (UNI-00925). Alexandra e Alessandra (UNI-01414) têm nomes parecidos, a confirmar no item-16.
- **Itens:** `UNI-01154.01`, `UNI-01588`, `UNI-00747`, `UNI-00034`, `UNI-00666`, `UNI-00666.01`, `UNI-00117`, `UNI-00420`, `UNI-00421`, `UNI-00565.01`, `UNI-00924.01`, `UNI-01536`, `UNI-01628`, `UNI-00206`, `UNI-00202`, `UNI-00925`, `UNI-01414`

## `PERF-ENGENHEIRO` · Engenheiro

Fornece documentos técnicos ao Credenciamento e refaz detalhamento, cargas e pontos aéreos quando a feira não aprova o projeto.

- **Ocupantes citados hoje:** Não informado
- **Vê:** notificação dos documentos sob sua responsabilidade
- **Faz ou edita:** detalhamento, cargas e pontos aéreos, quando a feira não aprova (item-3)
- **Decisões aplicadas:** item-3
- **Em aberto:** Não está dito se o engenheiro é da casa ou terceirizado (UNI-01108), nem se tem usuário no sistema. Os documentos não têm perfil dele.
- **Itens:** `UNI-00580`, `UNI-00580.01`, `UNI-00034`, `UNI-00606`, `UNI-01108`

## `PERF-QUALIDADE` · Controle de qualidade

Cuida do relatório de conformidade e da verificação de qualidade das peças.

- **Ocupantes citados hoje:** RS: Suellen; SP: assistente do Rômulo, a contratar
- **Vê:** relatório de conformidade; conciliação matinal e agenda de chegadas (Suellen)
- **Faz ou edita:** relatório de conformidade, com a Produção
- **Aprova:** peça na verificação de qualidade (EXP-E3 e EXP-E4, por leitura do item-22)
- **Decisões aplicadas:** item-22
- **Em aberto:** O número do setor não está decidido (item-22). Os itens tratam Qualidade e Expedição juntos, com a mesma pessoa em cada unidade, mas o item-22 os põe como setores separados. Prazo de correção de peça reprovada não definido (UNI-00928.02).
- **Itens:** `UNI-00023.02`, `UNI-01393`, `UNI-01399`, `UNI-01621`, `UNI-00087`, `UNI-00415.01`, `UNI-00165`, `UNI-01497`, `UNI-01434`, `UNI-01509`, `UNI-00928.02`, `UNI-00447`, `UNI-00572`

## `PERF-EXPEDICAO` · Expedição

Recebe, verifica, embala, etiqueta e controla o carregamento das peças pelo código.

- **Ocupantes citados hoje:** RS: Suellen; SP: assistente do Rômulo, a contratar
- **Vê:** aba do setor
- **Faz ou edita:** recebimento, verificação, embalagem e etiqueta; carregamento
- **Decisões aplicadas:** item-22
- **Em aberto:** A seção 8 junta Credenciamento e Expedição, e aqui eles estão separados porque são setores diferentes. O material não diz se Suellen vê o Credenciamento.
- **Itens:** `UNI-01154.01`, `UNI-01588`, `UNI-00025`, `UNI-01399`, `UNI-01621`, `UNI-00672.01`, `UNI-00922.01`, `UNI-01497`

## `PERF-LOGISTICA` · Logística da unidade

Cuida de frete e deslocamento da unidade e confirma a lista de itens fora do caminhão antes do cálculo de carga.

- **Ocupantes citados hoje:** RS: Eduardo; SP: Samanta
- **Vê:** estimativa de carga; aviso antes do prazo do formulário de deslocamento; lista de coletas da unidade
- **Faz ou edita:** formulário de frete; formulário de deslocamento
- **Aprova:** lista de itens que não vão no caminhão da Imagine
- **Decisões aplicadas:** item-22
- **Em aberto:** Leandro aparece como logística no cadastro de equipe (UNI-01410) e como apoio operacional do Eduardo (UNI-01510): a confirmar no item-16. A seção 8 não lista este perfil. Os formulários geram ordem de compra: não está dito se quem preenche vê o orçado.
- **Itens:** `UNI-01394`, `UNI-01392.01`, `UNI-01625`, `UNI-01450`, `UNI-01537`, `UNI-00789.05`, `UNI-01663`, `UNI-01510`, `UNI-01410`

## `PERF-ALMOXARIFADO` · Almoxarifado da unidade

Cuida do almoxarifado pelo app e lança a quilometragem da frota da unidade.

- **Ocupantes citados hoje:** RS: Seu Marcos; SP: assistente do Rômulo, a contratar
- **Vê:** alertas de manutenção da frota (Seu Marcos)
- **Faz ou edita:** itens de reposição marcados para Compras; quilometragem da frota no app; conferência da lavagem
- **Em aberto:** A seção 8 não lista este perfil. Seu Marcos e Marco (marcenaria) têm nomes parecidos, a confirmar no item-16.
- **Itens:** `UNI-01399`, `UNI-01399.01`, `UNI-01515`, `UNI-00009.01`, `UNI-01603`, `UNI-01440`, `UNI-01516`

## `PERF-MONT-ENCARREGADO` · Encarregado de montagem

Quando é o primeiro a chegar, retira as credenciais no CAEX e libera a entrada da equipe no pavilhão.

- **Ocupantes citados hoje:** Por feira
- **Vê:** pasta do credenciamento e documentos do projeto
- **Faz ou edita:** retirada das credenciais
- **Limites e regras:** Só para quem foi nomeado e escalado para a feira; O acesso termina 5 dias após a desmontagem
- **Em aberto:** A pessoa pode acumular categorias. A lista oficial por feira depende do Planejamento.
- **Itens:** `UNI-00026`, `UNI-00026.01`, `UNI-00118`, `UNI-00118.02`, `UNI-00455`, `UNI-00456`, `UNI-00090`, `UNI-00465`

## `PERF-MONT-RESPONSAVEL` · Responsável pela montagem

Lidera a equipe que monta o estande e dá foto e ok nos itens do checklist.

- **Ocupantes citados hoje:** Por feira
- **Vê:** documentos do projeto e checklist de montagem
- **Faz ou edita:** ok e foto nos itens do checklist; checklist da desmontagem
- **Limites e regras:** Só para quem foi nomeado e escalado para a feira; O acesso termina 5 dias após a desmontagem
- **Em aberto:** UNI-00037 fala em montador responsável; não está dito se é a mesma categoria. Os documentos não dizem o que o montador comum vê no app (UNI-00454).
- **Itens:** `UNI-00026`, `UNI-00026.01`, `UNI-00118`, `UNI-00118.02`, `UNI-00037`, `UNI-00042`, `UNI-00458`, `UNI-00464`, `UNI-00454`, `UNI-00090`, `UNI-00465`

## `PERF-MONT-PRODUTOR` · Produtor de montagem

Coordena logística e operação na feira, retira credenciais, atende o cliente e assina o termo de aceite pela Imagine.

- **Ocupantes citados hoje:** Por feira; SP: a contratar
- **Vê:** tudo do responsável pela montagem, mais credenciamento e entrega ao cliente; avisos de chegada e devolução de itens locados
- **Faz ou edita:** checklist com foto; conferência do estande com o cliente, item a item; correção de ressalvas; conferência e devolução de locados, com foto e avarias; chamados de AV no app
- **Aprova:** termo de aceite, pela Imagine; decisão sobre ressalva inviável, com o Comercial
- **Limites e regras:** Só para quem foi nomeado e escalado para a feira; O acesso termina 5 dias após a desmontagem
- **Em aberto:** A pessoa pode acumular categorias. Em SP este produtor atende o plantão (UNI-01622); no restante, o plantão é do plantonista (UNI-00463). Conferência das medidas de AV sem responsável definido (UNI-00937).
- **Itens:** `UNI-00026`, `UNI-00026.01`, `UNI-00118`, `UNI-00118.02`, `UNI-00455`, `UNI-00456`, `UNI-00460`, `UNI-00208`, `UNI-00573`, `UNI-00043.02`, `UNI-00006.01`, `UNI-00789.07`, `UNI-01542`, `UNI-01543`, `UNI-01616`, `UNI-01622`, `UNI-01400`, `UNI-00463`, `UNI-00937`, `UNI-00090`, `UNI-00465`

## `PERF-MONT-COORDENADOR` · Coordenador de montagem

É notificado dos chamados do plantão técnico e acompanha a equipe.

- **Ocupantes citados hoje:** Por feira; SP, coordenador geral: Rômulo
- **Vê:** chamados do plantão e documentos do projeto; pasta do credenciamento
- **Faz ou edita:** retirada das credenciais
- **Limites e regras:** Só para quem foi nomeado e escalado para a feira; O acesso termina 5 dias após a desmontagem
- **Em aberto:** UNI-01480 dá a visão de gestor a coordenadores, sem dizer quais. Rômulo tem função fixa em SP, e o material diz que o acesso é por feira: o prazo de 5 dias pode não fazer sentido para ele.
- **Itens:** `UNI-00026`, `UNI-00026.01`, `UNI-00118`, `UNI-00118.02`, `UNI-00456`, `UNI-00610`, `UNI-01392.01`, `UNI-01400`, `UNI-01480`, `UNI-00090`, `UNI-00465`

## `PERF-MONT-PLANTONISTA` · Plantonista da feira

Fica no pavilhão durante a feira e executa os chamados do plantão técnico.

- **Ocupantes citados hoje:** Por feira
- **Vê:** chamados do plantão técnico
- **Faz ou edita:** conclusão do chamado com foto no app
- **Limites e regras:** Só para quem foi nomeado e escalado para a feira; O acesso termina 5 dias após a desmontagem; Em SP, o plantonista é terceirizado e não tem acesso ao app
- **Em aberto:** UNI-00463 faz o plantonista concluir no app, e UNI-01622 diz que em SP ele não acessa: o produtor atende. Para o RS o vínculo não foi informado.
- **Itens:** `UNI-00026`, `UNI-00118`, `UNI-00118.02`, `UNI-00091`, `UNI-00463`, `UNI-00610`, `UNI-01622`

## `PERF-TERCEIRIZADO` · Terceirizado

Membro de equipe externa de produção, montagem ou audiovisual, cujo único acesso citado é o usuário para pedir a própria verba.

- **Ocupantes citados hoje:** Por projeto; escolhidos na unidade por RS: Eduardo; SP: Samanta
- **Vê:** a própria verba
- **Faz ou edita:** solicitação de verba no app, com usuário terceirizado
- **Limites e regras:** O usuário terceirizado só acessa a própria verba; Em SP, as equipes de pintura, elétrica, marcenaria e serralheria não usam o app; Em SP, montadores e plantonista terceirizados não têm acesso ao app da montagem
- **Em aberto:** UNI-01517 dá aos montadores terceirizados um usuário no app para a verba, e UNI-01622 diz que eles estão sem acesso ao app: falta dizer se são coisas diferentes. Não está dito o que os terceirizados do RS e as equipes de AV acessam. UNI-01668 põe costureiras e decoradores terceirizados na mesma escala, sem falar de acesso.
- **Itens:** `UNI-01517`, `UNI-01620`, `UNI-01622`, `UNI-01626`, `UNI-01651`, `UNI-00747.01`, `UNI-01397`, `UNI-01668`

## `PERF-POS-FEIRA` · Pós-feira

Revisa o dossiê do evento e conduz a pesquisa e o plano de ação; o setor segue sem responsável.

- **Ocupantes citados hoje:** A definir
- **Vê:** dossiê do evento; painel de NPS
- **Faz ou edita:** revisão do dossiê; plano de ação 5W2H
- **Decisões aplicadas:** item-18
- **Em aberto:** Responsável pelo Pós-feira (item-18). UNI-00893 lista assistente comercial, vendedor do cliente ou outra pessoa como opções. Sem o responsável, o material só sustenta a revisão do dossiê; o plano de ação não diz quem o edita.
- **Itens:** `UNI-00893`, `UNI-00747`, `UNI-01153.01`, `UNI-00466`, `UNI-00467`, `UNI-00472`, `UNI-00474`, `UNI-00012.01`

## `PERF-MARKETING` · Marketing

Cuida do acervo, da curadoria e das autorizações de imagens, das peças e do calendário de campanhas.

- **Ocupantes citados hoje:** A definir por Diego (item-18)
- **Vê:** acervo de marketing; visualizações e downloads do acervo
- **Faz ou edita:** peças de cada canal; acervo: salva material com etiquetas; calendário anual de campanhas; curadoria do banco de imagens
- **Aprova:** pedido de acesso ao acervo: libera por um período ou nega com motivo; autorizações do banco de imagens; material do projeto concluído que entra na biblioteca de referências
- **Limites e regras:** Só o Marketing vê o acervo; os outros setores pedem acesso com material, motivo e prazo; O acesso liberado expira sozinho e os downloads ficam registrados
- **Decisões aplicadas:** item-18
- **Em aberto:** Diego define o responsável depois; Érika constava como responsável (UNI-00747.02, UNI-00785.04) e não está mais fixada. Prazo padrão do acesso e marca d'água (UNI-00948). Quem faz a captação (UNI-00944). Quem mantém a pauta (UNI-00904). Se a Diretoria, que tem acesso a tudo, escapa da regra do acervo.
- **Itens:** `UNI-00747.02`, `UNI-00747.03`, `UNI-00785.04`, `UNI-01555`, `UNI-00120`, `UNI-00120.01`, `UNI-00120.02`, `UNI-00121.01`, `UNI-00481`, `UNI-00482`, `UNI-00313`, `UNI-00346`, `UNI-00479`, `UNI-01633`, `UNI-00948`, `UNI-00944`, `UNI-00904`

## `PERF-CLIENTE` · Cliente

Pessoa do cliente, por projeto, que acompanha o projeto no Portal, aprova o que lhe cabe e usa a aba do cliente na montagem e na feira.

- **Ocupantes citados hoje:** Por projeto
- **Vê:** linha do tempo, quem é quem e produção em tempo real; renders 3D, versões e resumo do incluso e do adicional; checklist de prazos, guia do estande e relatório final; aba do cliente: imagens do estande e checklist do memorial
- **Faz ou edita:** comentários em cada imagem; formulário pré-evento, até 15 dias antes da feira; chamado no plantão técnico; ressalvas
- **Aprova:** cada item de amostra, com comentário ao reprovar; aceite eletrônico da proposta (inferido em UNI-01119); estande item a item e termo de aceite; desenho da experiência interativa; itens de cortesia
- **Limites e regras:** O login vem do vendedor; A aba do cliente fica liberada só durante a montagem e a feira; Se a pessoa do cliente mudar durante a feira, o outro login vale só para a etapa de montagem e feira; Depois do congelamento não abre novos pedidos de alteração e adicional, salvo aprovação do Diego; A pesquisa de satisfação vai por link sem login
- **Decisões aplicadas:** item-15
- **Em aberto:** O Portal cobre o projeto inteiro (UNI-00011.01, UNI-01461), e a aba fecha no fim da feira (UNI-00090): falta dizer quando o login do Portal termina e se é o mesmo acesso. Quem preenche o briefing está em aberto (item-15). Quantos usuários por cliente não foi informado.
- **Itens:** `UNI-00119`, `UNI-00119.01`, `UNI-00011`, `UNI-00011.01`, `UNI-00011.02`, `UNI-00011.03`, `UNI-00011.04`, `UNI-00011.05`, `UNI-00360`, `UNI-00459`, `UNI-00460`, `UNI-00461`, `UNI-00462`, `UNI-00043.02`, `UNI-00208`, `UNI-00673`, `UNI-00673.01`, `UNI-00026`, `UNI-00118`, `UNI-00090`, `UNI-00581.01`, `UNI-00782.02`, `UNI-00782.04`, `UNI-00782.07`, `UNI-01119`, `UNI-00109`, `UNI-00100`, `UNI-00336`, `UNI-01459`, `UNI-01460`, `UNI-01461`, `UNI-00468`, `UNI-00942`, `UNI-00003.05`

## `PERF-EXIBICAO-TV` · Exibição em TV

Login de exibição, só leitura, das TVs de cada setor produtivo nas duas unidades.

- **Ocupantes citados hoje:** Aparelho, sem pessoa
- **Vê:** o seu setor e a sua unidade, com projetos por data de carregamento e totais de peças
- **Limites e regras:** Só leitura, sem permitir alterações; Cada TV mostra só o seu setor e unidade
- **Em aberto:** Os itens não dizem quem cria nem quem administra esse login.
- **Itens:** `UNI-00783.01`, `UNI-00783.03`, `UNI-01653`

## `PERF-ADMIN` · Administrador do sistema

Função citada só no cadastro de equipe, como admin master com acesso total.

- **Ocupantes citados hoje:** Pedro, a confirmar
- **Vê:** acesso total, segundo o cadastro de equipe
- **Em aberto:** O cadastro (EQP-017, fora do repositório) não diz se esse acesso é do ERP, e a seção 8 não traz o perfil; por isso os módulos não foram preenchidos. Pode conflitar com os dados de monitoramento, que só Diego e Maitê acessam (UNI-00185). Não está claro se é o Pedro da Impressão 3D (item-16). Também não está dito quem cria usuários.
- **Itens:** `UNI-01415`, `UNI-00185`, `UNI-00755`

## `PERF-OPERACOES` · Operações

Função citada só no cadastro de equipe, sem módulo nem acesso informado.

- **Ocupantes citados hoje:** Júlia; Alessandra, assistente operacional
- **Em aberto:** O material não diz o que elas fazem no sistema. Alessandra tem dados incompletos e nome parecido com Alexandra (item-16). Pode não ser um perfil próprio.
- **Itens:** `UNI-01409`, `UNI-01414`

