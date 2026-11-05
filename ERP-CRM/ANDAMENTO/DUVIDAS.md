# Dúvidas para Diego ou o Pedro

Uma linha por dúvida. Não apague: quando responder, preencha `Resposta` e `Situação`. As dúvidas de DUV-005 em diante foram levantadas pelos agentes ao montar fluxos e perfis.

## Decisões gerais

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-001 | Ordem de construção | Qual é a primeira entrega do sistema? São 31 módulos sem ordem definida. Há só uma sugestão antiga de implantação em ondas. | `UNI-00846`, `UNI-00847` | Aberta | |
| DUV-002 | Arquitetura | Linguagem, hospedagem, login, backup e auditoria já foram definidos pela IA que desenvolve? Os itens técnicos não tratam disso. | `UNI-00001` | Aberta | |
| DUV-003 | Regra de uso | A outra IA pode tratar os itens `proposto` como requisito provisório? Essa regra é proposta do Claude. | `ERP-CRM/00_COMECE-AQUI.md` | Aberta | |
| DUV-004 | Organização | O código do sistema fica em outro repositório? O Claude recomenda que sim, porque este bloqueia imagens, planilhas e CSV. | `AGENTS.md` | Aberta | |

## Comercial e proposta

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-005 | Fluxo | Qual é o "prazo limite" dos avisos: 10 dias (Especificação), validade de 7 dias ou micro cronograma? Até quando vão os avisos diários? A expiração no 3º aviso continua? | `item-24`, `item-7`, `ACM-D2`, `ENT-D1`, `E24` | Aberta | |
| DUV-006 | Fluxo | O que acontece quando o vendedor não autoriza o envio, e quando o cliente recusa a proposta? Os documentos não trazem esses caminhos. | `ACM-D1`, `ACM-E6` | Aberta | |
| DUV-007 | Fluxo | Com o número corporativo integrado ao ERP, o encaminhamento manual pelo vendedor continua, ou a captura fica automática? | `E17a`, `item-6` | Aberta | |
| DUV-008 | Fluxo | O registro de prospecção na feira é pelo WhatsApp (§5) ou pelo app do vendedor (§19)? Um substitui o outro? | `PRO-E8`, `PRO-E9` | Aberta | |

## Projetos e custos

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-009 | Fluxo | O Planejamento define o arquiteto antes do aceite, mas pela decisão o projeto entra nele só a partir do aceite. Quem define o arquiteto antes disso? | `PRJ-E1`, `item-8` | Aberta | |
| DUV-010 | Fluxo | O Planejamento recebe a prancha de amostras, que só é feita depois do contrato. O que ele recebe no aceite? | `PRJ-E15`, `PLA-E1`, `ponto-1` | Aberta | |
| DUV-011 | Fluxo | O preço sugerido antes da conferência de Custos continua, além do preço gerado depois da validação financeira? | `CUS-E4`, `CUS-E6` | Aberta | |
| DUV-012 | Acesso | O preço de venda precisa da aprovação das duas diretorias ou basta uma? Em que ordem? O que acontece se for recusado? | `CUS-E6`, `item-1` | Aberta | |
| DUV-013 | Fluxo | Itens novos da biblioteca são validados depois de abrir Custos (Especificação) ou na conclusão do projeto (SET03)? | `PRJ-E16` | Aberta | |

## Planejamento e prazos

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-014 | Fluxo | O que o Planejamento faz entre o aceite e a assinatura? Como fica a janela de 25 dias, que põe comandas antes de a pré-comanda poder existir? | `ponto-1`, `UNI-01613` | Aberta | |
| DUV-015 | Configuração | Os prazos de `PLA-E4` a `PLA-E13` somam cerca de 20 dias, e o fluxo geral prevê cerca de 10 entre proposta e produção. Qual vale? | `item-11` | Aberta | |
| DUV-016 | Fluxo | O cliente entrega arquivos até 20 dias antes da feira, o mesmo limite da produção, e conferência, prova e testes vêm depois. A data continua? | `CVI-E1`, `AUD-E7`, `item-11` | Aberta | |
| DUV-017 | Fluxo | Quem pede o detalhamento, quem gera a ficha técnica e quem dá baixa na peça? As etapas de Planejamento e a seção 25 divergem. | `PLA-E7`, `PLA-E12`, `PLA-E18` | Aberta | |
| DUV-018 | Fluxo | O checklist do Credenciamento pede detalhamento parcial em 3 dias. Se o Credenciamento correr antes da assinatura, esse item não cabe. Como fica? | `CRD-E9`, `ponto-1` | Aberta | |
| DUV-019 | Fluxo | Quando a feira reprova, o material volta à Diretoria financeira? E as exigências de outro tipo, que não sejam de engenharia? | `CRD-D1`, `item-3` | Aberta | |

## Financeiro, compras e materiais

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-020 | Acesso | Quem aprova depois do alerta de preço? Quem vê a comparação entre orçado e comprado? | `item-5`, `ponto-2`, `CMP-D2`, `CMP-D3` | Aberta | |
| DUV-021 | Acesso | O Financeiro acessa a área de Custos? A decisão deixou em aberto, mas o Financeiro precisa cruzar previsto e orçado. Hoje a mesma pessoa ocupa os dois perfis, então a dúvida não aparece. | `item-14`, `UNI-00103.01`, `UNI-00103.02` | Aberta | |
| DUV-022 | Acesso | Os setores veem os valores previstos na pré-comanda? A regra do orçado vale também para Locações e Logística, cujos formulários geram ordem de compra? | `FIN-D1`, `ponto-2` | Aberta | |
| DUV-023 | Fluxo | A comanda de logística e equipe segue como está? A decisão cobre só materiais. | `FIN-E4`, `item-21` | Aberta | |
| DUV-024 | Fluxo | A pré-comanda nasce com contrato assinado, mas os setores só entram depois do cronograma publicado. Quando eles conferem? Como a lista de `PLA-E12` a ajusta? | `FIN-D1`, `FIN-D2`, `PRD-E1`, `PLA-E12` | Aberta | |

## Audiovisual

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-025 | Fluxo | A planilha do Audiovisual vem no fim das etapas, mas a previsão orçamentária depende dela antes de qualquer compra. Em que momento ela é feita? | `AUD-E10`, `AUD-E11`, `FIN-E3` | Aberta | |
| DUV-026 | Fluxo | O rider técnico continua sendo pedido de material, ou entra na pré-comanda? | `AUD-E3`, `item-21` | Aberta | |

## Qualidade, expedição e montagem

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-027 | Fluxo | `EXP-E3` e `EXP-E4` ficam no Controle de qualidade, antes da Expedição, como foi lido, ou são uma segunda conferência dentro dela? | `item-22`, `PRD-E10`, `EXP-E3` | Aberta | |
| DUV-028 | Fluxo | Qual é o fluxo da Logística? O carregamento conferido libera a Montagem antes do transporte? | `EXP-D1`, `EXP-E9` | Aberta | |
| DUV-029 | Fluxo | Onde a peça reprovada e corrigida reentra? | `EXP-E4`, `PLA-E20` | Aberta | |
| DUV-030 | Configuração | Bloqueio do caminhão e prazo de 3 dias: as Respostas de 31/10 definem, mas a seção 11 e os itens ainda os trazem como pendentes. Isso fecha as pendências? | `EXP-E4`, `EXP-E9`, `UNI-00938`, `UNI-01539` | Aberta | |
| DUV-031 | Acesso | Quem escala as equipes terceirizadas de montagem? Em São Paulo, os terceirizados não têm app: quem lê o QR code ao desembalar? | `MON-E1`, `MON-E4`, `UNI-01622` | Aberta | |
| DUV-032 | Fluxo | Termo de aceite: quando é gerado e quem assina? Os documentos divergem. | `MON-E10` | Aberta | |

## Pós-feira, marketing e cliente

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-033 | Acesso | Quem responde por Marketing e por Pós-feira? | `item-18` | Aberta | |
| DUV-034 | Acesso | O Portal do cliente e a aba do cliente são o mesmo acesso? A aba fecha no fim da feira, mas há relatório final e extrato de pontos depois. Quando o login termina? | `UNI-00011.01`, `UNI-01461`, `UNI-00673`, `UNI-00090` | Aberta | |
| DUV-035 | Configuração | A recompensa por indicação é paga no contrato ou no contrato com o 1º pagamento? A indicação entra como origem de cliente? | `MKT-E15`, `COM-E6` | Aberta | |

## Perfis e pessoas

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-036 | Acesso | Falta a planilha de pessoas corrigida: nomes que podem ser a mesma pessoa, funções sem ocupante e quem é administrador do sistema. | `item-16`, `ERP-CRM/08_PERFIS-E-PERMISSOES.md` | Aberta | |
| DUV-037 | Acesso | "Acesso a tudo" da Diretoria inclui editar? E o acervo que só o Marketing vê? | `UNI-00120`, `ERP-CRM/08_PERFIS-E-PERMISSOES.md` | Aberta | |
| DUV-038 | Acesso | Montador terceirizado tem usuário no app só para a própria verba, ou nenhum acesso? O plantonista conclui o chamado no app? Como ficam os terceirizados do RS? Freelancer tem regra própria? | `UNI-01517`, `UNI-01622`, `UNI-00463` | Aberta | |
| DUV-039 | Acesso | A matriz de `ERP-CRM/08_PERFIS-E-PERMISSOES.md` foi deduzida do que os fluxos dizem que cada função faz, porque a Especificação só traz o acesso principal. Quem valida? | `ERP-CRM/08_PERFIS-E-PERMISSOES.md` | Aberta | |
| DUV-044 | Acesso | Em São Paulo, a mesma pessoa acumula Compras, Planejamento, Produção e Logística, e o Planejamento lida com valores previstos. O bloqueio do orçado vale por campo, acima da soma dos perfis? | `ponto-2`, `PERF-COMPRAS`, `PERF-PLANEJAMENTO` | Aberta | |

## Escopo, dados e estados

| Código | Trava o quê | Dúvida | Referência | Situação | Resposta |
|---|---|---|---|---|---|
| DUV-040 | Escopo | Os memoriais de cliente estão fora do escopo. O memorial como documento gerado pelo sistema continua? Ele é a origem do código do item e de vários fluxos. | `REGISTROS/escopo__20261104-0826-memorial-fora-do-escopo-z26t.md`, `PRJ-E11`, `UNI-00734` | Aberta | |
| DUV-041 | Configuração | "Produção até 20 dias antes do evento" é o início da produção? O fluxo geral V03 diz que ela começa no máximo 20 dias antes. | `item-11`, `PLA-E3` | Aberta | |
| DUV-042 | Dados | Pré-comanda e comanda são uma entidade com dois momentos ou duas? Há uma comanda por setor, por projeto ou por unidade? O status é do cabeçalho ou de cada item? | `FIN-D1`, `FIN-D2`, `PRD-E3`, `UNI-00661` | Aberta | |
| DUV-043 | Dados | O sistema não aceita linha sem código, mas tinta, elétrica e embalagem somam consumo sem um item único. Essas linhas usam código de material ou rateio por item? | `UNI-00131`, `UNI-00195.02`, `UNI-00197.03`, `UNI-00789.01` | Aberta | |
| DUV-045 | Regra de uso | Os itens com contexto `rotina-anterior` descrevem como o trabalho era feito antes do ERP. Eles valem como requisito? Em especial, quem aprova o detalhamento: Diego ou o arquiteto? | `ERP-CRM/TAXONOMIA.md`, `UNI-00530`, `UNI-01649`, `REGISTROS/escopo__20261104-0826-rotina-no-projeto-48ym.md` | Aberta | |
| DUV-046 | Estados | Quem valida `ERP-CRM/10_ESTADOS-PRINCIPAIS.md` e dá nome aos estados que faltam? E quais estados têm as demais entidades? | `ERP-CRM/10_ESTADOS-PRINCIPAIS.md` | Aberta | |
| DUV-047 | Fluxo | A falta de resposta do cliente aparece em dois fluxos, a entrada pelo WhatsApp e o assistente comercial. Vira um único controle de prazo? Qual é o estado final? | `E24`, `E27`, `ENT-D1`, `ACM-D2` | Aberta | |
| DUV-048 | Fluxo | A previsão orçamentária precisa de aprovação antes de qualquer compra, mas não tem etapa com código. Em que ponto do fluxo ela entra? | `FIN-D1`, `CMP-E1`, `UNI-01556` | Aberta | |
