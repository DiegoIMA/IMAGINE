---
id: ERP-MOD-CRM
titulo: Módulo CRM e prospecção
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# CRM · CRM e prospecção

71 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-6** (WhatsApp na entrada): Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- **item-15** (Formulário de briefing): O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. _(Adiado por Diego)_ Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`

## Fluxo macro (8)

- `UNI-00223` `FLX-MACRO` `vigente` Toda demanda que entra via WhatsApp passa pela reunião de briefing gravada e pela validação do vendedor (E1/E12) e segue o fluxo principal até a proposta (E14/E15). _[DOC-031 · E23, linha de continuação · ITM-00751]_
- `UNI-00274` `FLX-MACRO` `proposto` Prospecção ativa tem quatro fases: linha de comunicação (PRO-E1 a E2), kit e peças (E3 a E6), captação do lead (E7 a E9) e condução no CRM (E10 a E15), terminando em Entrada de demanda. _[DOC-005 · §01 Fluxo macro · ITM-00101]_
- `UNI-00318` `FLX-MACRO` `proposto` Captação: da planta da feira à pesquisa de expositor e decisores, contato, lead aberto no CRM, filtro de categorização e atendimento pelo representante. _[DOC-030 · §02 Fase 1 Captação · ITM-00687]_
- `UNI-00325` `FLX-MACRO` `substituido-parcial` Entrada alternativa via WhatsApp (E17–E27, G2): leva ao Portal a demanda de cliente conhecido recebida no WhatsApp pessoal do vendedor, checa tempo hábil de produção e evita cartão parado sem retorno. _[DOC-031 · Cabeçalho e Início e fim · ITM-00736]_
  - **Continua valendo:** Existe entrada alternativa pelo WhatsApp para cliente conhecido, com checagem de tempo hábil e controle de cartão parado.
  - **Mudou:** Vale só o número corporativo integrado ao ERP; o número pessoal é proibido (item-6).
- `UNI-00326` `FLX-MACRO` `vigente` Fase W1 Recepção: cliente envia a demanda, vendedor encaminha ao número da IA com data do evento e prazo, a IA registra no Portal e confere os dados de prazo. _[DOC-031 · Fase W1 Recepção · ITM-00737]_
- `UNI-00327` `FLX-MACRO` `vigente` Fase W2 Triagem de prazo: checa tempo hábil, Diretoria decide os casos sem tempo, abre o cartão, monta o micro cronograma reverso e a assistente confere o prazo limite. _[DOC-031 · Fase W2 Triagem de prazo · ITM-00738]_
- `UNI-00328` `FLX-MACRO` `a-conferir` Fase W3 Acompanhamento do retorno, em paralelo do E21 até o aceite: o sistema vigia dias sem retorno, alerta vendedor e assistente e decide pelo aceite ou pelo encerramento. _[DOC-031 · Fase W3 Acompanhamento · ITM-00739]_
  - **Atenção (leitura do Claude):** item 24: Diz que o alerta vai ao vendedor e ao assistente. Pode ser um aviso anterior ao prazo limite.
- `UNI-00551.01` `FLX-MACRO` `proposto` Prospecção passa ao Comercial quando o cliente aceita o login do Portal (PRO-E15) e entra na área de organização de clientes (COM-E6). _[DOC-091 · §2 Fluxo entre setores, gatilho 1; §5 Prospecção, PRO-E15 · ITM-01588 · parte de UNI-00551]_

## Etapas do fluxo (20)

- `UNI-00002.05` `FLX-MICRO` `proposto` `conf:media` A IA lê a foto do cartão de visita e preenche nome, cargo, empresa, telefone e e-mail do contato no pré-cadastro. _[DOC-091 · §19 Prospecção na feira pelo app, leitura do cartão · ITM-02237 · parte de UNI-00002]_
- `UNI-00002.06` `FLX-MICRO` `proposto` `conf:media` O app mostra na tela, durante a visita, um roteiro com os pontos a perguntar, e ao fim a IA marca no pré-cadastro o que foi coletado e o que faltou, para completar no recontato. _[DOC-091 · §19 Prospecção na feira pelo app, roteiro na tela · ITM-02246 · parte de UNI-00002]_
- `UNI-00002.08` `FLX-MICRO` `proposto` `conf:media` Ao fim da visita, a IA cria o compromisso na agenda de prospecção do vendedor a partir da conversa gravada, com resumo da visita, fotos e pontos que faltaram. _[DOC-091 · §19 Prospecção na feira pelo app, fim da visita · ITM-02251 · parte de UNI-00002]_
- `UNI-00343` `FLX-MICRO` `inferido` Prospecção define a pauta e a linha de comunicação para o perfil de venda, em documento-guia; o responsável (marketing) é inferido. _[DOC-005 · PRO-E1 · ITM-00103]_
  - Requisitos separados deste item: `UNI-00343.01`
- `UNI-00343.01` `FLX-MICRO` `proposto` Prospecção: definir pauta e linha de comunicação, feito pelo Marketing. _[DOC-091 · §5 Prospecção, PRO-E1 · ITM-01644 · parte de UNI-00343]_
- `UNI-00344` `FLX-MICRO` `proposto` Aplicar a mesma linha, perfil e abordagem de comunicação nos seis canais. _[DOC-005 · PRO-E2 · ITM-00104]_
  - Requisitos separados deste item: `UNI-00344.01`
- `UNI-00344.01` `FLX-MICRO` `proposto` Prospecção: aplicar a linha de comunicação nos 6 canais (LinkedIn, Instagram, site, blog, newsletter pelo CRM e WhatsApp). _[DOC-091 · §5 Prospecção, PRO-E2 · ITM-01646 · parte de UNI-00344]_
- `UNI-00345` `FLX-MICRO` `proposto` Montar o kit básico de divulgação: apresentação da empresa em PDF ou link HTML no Portal. _[DOC-005 · PRO-E3 · ITM-00105]_
- `UNI-00347` `FLX-MICRO` `proposto` Publicação automática nos seis canais; o WhatsApp vai só para a lista segmentada no CRM. _[DOC-005 · PRO-E6 · ITM-00108]_
- `UNI-00348` `FLX-MICRO` `proposto` Captação à distância: planta da feira, expositores e decisores, com filtro por categoria, porte, verba, tipo de cliente e demanda (tráfego pago e representantes). _[DOC-005 · PRO-E7 · ITM-00109]_
- `UNI-00349` `FLX-MICRO` `proposto` Captação presencial: contato com o cliente na feira ou no evento pela Prospecção ou por representante. _[DOC-005 · PRO-E8 · ITM-00110]_
- `UNI-00350` `FLX-MICRO` `proposto` Quem fez o contato presencial envia mensagem ao agente de IA no WhatsApp, que gera o formulário do contato. _[DOC-005 · PRO-E9 · ITM-00111]_
  - Requisitos separados deste item: `UNI-00350.01`
- `UNI-00350.01` `FLX-MICRO` `proposto` Prospecção: mensagem ao agente de IA no WhatsApp, que gera o formulário do contato no mesmo dia. _[DOC-091 · §5 Prospecção, PRO-E9 · ITM-01653 · parte de UNI-00350]_
- `UNI-00351` `FLX-MICRO` `proposto` Nova venda aberta no CRM; no caminho presencial ela abre sozinha pelo formulário e a Prospecção revisa. _[DOC-005 · PRO-E10 · ITM-00113]_
- `UNI-00352` `FLX-MICRO` `proposto` Quem captou o lead faz o contato, envia o material e registra tudo no CRM. _[DOC-005 · PRO-E11 · ITM-00114]_
- `UNI-00591.01` `FLX-MICRO` `proposto` Prospecção: registrar prazos de retorno, de envio de material e de recontato. _[DOC-091 · §5 Prospecção, PRO-E14 · ITM-01658 · parte de UNI-00591]_
- `UNI-01544` `FLX-MICRO` `vigente` O lead da visita entra no RD Station com origem "visita em feira", vendedor responsável e data de recontato sugerida. _[DOC-091 · §19 Registro por estande · ITM-02240]_
- `UNI-01545` `FLX-MICRO` `vigente` `conf:media` A IA liga cada foto ao trecho da gravação em que o assunto aparece, e as fotos vão para o histórico do cliente e para o briefing de Projetos. _[DOC-091 · §19 Fotos com pontos da conversa · ITM-02245]_
- `UNI-01546` `FLX-MICRO` `vigente` Ao encerrar a visita, a IA mostra o que foi coletado e o que faltou, para o vendedor completar no estande ou no recontato. _[DOC-091 · §19 Roteiro do vendedor na visita · ITM-02250]_
- `UNI-01638` `FLX-MICRO` `vigente` No fechamento da visita, o vendedor oferece enviar o portfólio, marca uma conversa, pergunta o melhor contato e a melhor data e registra a data de recontato. _[DOC-091 · §19 Roteiro do vendedor na visita · ITM-02249]_

## Pontos de decisão (6)

- `UNI-00549` `FLX-DECISAO` `proposto` Diego aprova as peças de comunicação; se não aprovar, as peças voltam para ajuste na PRO-E4. _[DOC-005 · PRO-E5 · ITM-00107]_
- `UNI-00550` `FLX-DECISAO` `proposto` Se o cliente demonstrou interesse, segue para a reunião de prospecção gravada pela IA. _[DOC-005 · PRO-E12 · ITM-00115]_
- `UNI-00551` `FLX-DECISAO` `proposto` Se o cliente aceita o login do Portal, a venda passa à Entrada de demanda (Setor 02); sem retorno, recontato na data combinada, voltando à PRO-E11. _[DOC-005 · PRO-E15 · ITM-00119]_
  - Requisitos separados deste item: `UNI-00551.01`, `UNI-00551.02`
- `UNI-00551.02` `FLX-DECISAO` `proposto` Prospecção: se o cliente aceita o login do Portal, vai ao Comercial; sem retorno, recontato na data; se perdeu interesse, recontato na próxima feira dele. _[DOC-091 · §5 Prospecção, PRO-E15 · ITM-01659 · parte de UNI-00551]_
- `UNI-00758` `FLX-DECISAO` `vigente` `conf:media` Respondido em 28/10: fluxo de 22/10 vale na PRO-E7, venda abre sozinha e a Prospecção revisa (E10), quem captou conduz (E11) e levantar a mão é aceitar o login do Portal (E15). _[DOC-006 · §8 Respostas de 28/10 · ITM-00128]_
- `UNI-00759` `FLX-DECISAO` `vigente` `conf:media` Respondido em 28/10: marketing dedicado gera as peças e Diego aprova (E4/E5); reunião só com interesse e Comercial confere (E12/E13); seis canais com WhatsApp segmentado (E6). _[DOC-006 · §8 Respostas de 28/10 · ITM-00129]_

## Notificações (2)

- `UNI-00002.09` `FLX-NOTIF` `proposto` O lembrete do próximo contato chega ao vendedor antes da data do compromisso. _[DOC-091 · §19 Prospecção na feira pelo app, lembrete do próximo contato · ITM-02254 · parte de UNI-00002]_
- `UNI-00591` `FLX-NOTIF` `proposto` Quando um prazo combinado com o cliente vence, o CRM avisa quem conduz o lead. _[DOC-005 · Fim da §02 Fluxograma · ITM-00121]_
  - Requisitos separados deste item: `UNI-00591.01`

## Módulos e telas (4)

- `UNI-00002` `ESC-MODULO` `vigente` Prospecção usa 6 canais com kit de divulgação, agente de IA no WhatsApp, app na feira (fotos, cartão, gravação), roteiro de 10 perguntas e próximo contato automático. _[DOC-003 · Mapa, cartão 01 Prospecção · ITM-00070]_
  - Requisitos separados deste item: `UNI-00002.01`, `UNI-00002.02`, `UNI-00002.03`, `UNI-00002.04`, `UNI-00002.05`, `UNI-00002.06`, `UNI-00002.07`, `UNI-00002.08`, `UNI-00002.09`
- `UNI-00002.01` `ESC-MODULO` `proposto` Módulo CRM e prospecção (setores 01 e 02): leads, formulário do contato por IA no WhatsApp, vendas, prazos de recontato e publicação nos 6 canais. _[DOC-091 · §3 Módulos do ERP, CRM e prospecção · ITM-01600 · parte de UNI-00002]_
- `UNI-00002.03` `ESC-MODULO` `proposto` A seção de prospecção em feira do app é usada pelo vendedor ao visitar uma feira, com registro de cada estande visitado. _[DOC-091 · §19 Prospecção na feira pelo app · ITM-02235 · parte de UNI-00002]_
- `UNI-01468` `ESC-MODULO` `vigente` `conf:media` Área do app para fotografar partes do estande e marcar em cada foto o ponto da conversa, com categoria (crítica, objeção, desejo de melhoria, ponto positivo) e comentário por texto ou áudio. _[DOC-091 · §19 Fotos com pontos da conversa · ITM-02244]_

## Perfis e responsáveis (3)

- `UNI-00028` `ESC-PERFIL` `proposto` Prospecção ativa parte da planta da feira, identifica decisores, faz contato e abre o lead no CRM; equipe de 2 pessoas mais representantes. _[DOC-030 · §05 Setores, card 01 · ITM-00675]_
- `UNI-01401` `ESC-PERFIL` `vigente` O setor de Prospecção tem 2 pessoas, além dos representantes, que conduzem as etapas PRO-E7 a PRO-E15. _[DOC-006 · §6 Pessoas e responsáveis · ITM-00130]_
- `UNI-01411` `ESC-PERFIL` `vigente` `rotina-anterior` Márcia [PES-00013]: SDR comercial (EQP-013). _[DOC-033 · §5.6.2 EQP-013 · ITM-01039]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

## Documentos gerados (1)

- `UNI-00691` `ESC-DOC` `proposto` ENT-001 Ficha de entrada: origem (CRM ou WhatsApp), cliente, evento, local, data do evento, prazo pedido, anexos, triagem E20, decisão G2 com custo de urgência e prazo limite de aceite conferido (E23). _[DOC-032 · §06 ENT-001 · ITM-00792]_

## Entidades e campos (8)

- `UNI-00002.04` `ESC-DADOS` `proposto` O registro por estande tem foto do estande (feira, data e horário gravados automaticamente), foto do cartão de visita e pré-cadastro com número do estande, tamanho aproximado, montadora atual, nível de interesse e observações por texto ou áudio. _[DOC-091 · §19 Prospecção na feira pelo app, registro por estande · ITM-02236 · parte de UNI-00002]_
- `UNI-00002.07` `ESC-DADOS` `proposto` `conf:media` O roteiro do vendedor cobre abertura e consentimento, contato, estande atual, opinião sobre o estande, desejos de melhoria, montadora atual, investimento por m², calendário de feiras, processo de compra e fechamento. _[DOC-091 · §19 Prospecção na feira pelo app, roteiro de perguntas · ITM-02247 · parte de UNI-00002]_
- `UNI-00622` `ESC-DADOS` `proposto` Origens de entrada: Prospecção (SET01) com formulário, transcrição e checklist; LinkedIn, Instagram e WhatsApp; e cliente antigo retomado, com histórico das edições anteriores. _[DOC-007 · §03 Origens de entrada · ITM-00145]_
- `UNI-00654` `ESC-DADOS` `proposto` Formulário do contato presencial: contatos, onde foi o contato (feira, data e responsável), fotos, pontos fortes, pontos fracos, necessidades e próximo contato com datas. _[DOC-005 · §04 Formulário do contato presencial · ITM-00112]_
  - Requisitos separados deste item: `UNI-00654.01`
- `UNI-00654.01` `ESC-DADOS` `proposto` Entidade Lead/venda: contatos do decisor, onde foi o contato, fotos, pontos fortes e fracos, necessidades, próximas datas e quem captou. _[DOC-091 · §4 Entidades e dados principais, Lead / venda · ITM-01617 · parte de UNI-00654]_
- `UNI-00912.01` `ESC-DADOS` `proposto` `conf:media` Entidade Cliente: razão social, CNPJ, endereço, contatos, origem (empresa, aberto pelo vendedor ou indicação), classe, histórico, notas do pós-feira e pontos de fidelidade. _[DOC-091 · §4 Entidades e dados principais, Cliente · ITM-01618 · parte de UNI-00912]_
- `UNI-01098` `ESC-DADOS` `inferido` Campos "Onde foi o contato" (data e responsável) e "Contatos" (cargo e e-mail) detalhados para o formulário ser útil no CRM. _[DOC-005 · §05, PRO-E9 · ITM-00126]_
- `UNI-01641` `ESC-DADOS` `vigente` O formulário de entrada vale para cliente vindo da Prospecção e para cliente aberto direto pelo vendedor, e seus dados alimentam os dashboards e as estatísticas comerciais. _[DOC-091 · §20 Formulário completo de entrada do cliente · ITM-02255]_

## Integrações (3)

- `UNI-00002.02` `ESC-INTEG` `proposto` Agente de IA no WhatsApp para o formulário do contato. _[DOC-091 · §9 Integrações, agente de IA no WhatsApp; §5 Prospecção, PRO-E9 · ITM-02129 · parte de UNI-00002]_
- `UNI-00877.01` `ESC-INTEG` `a-conferir` CRM RD Station integrado ao WhatsApp Web; o WhatsApp de cada usuário do Comercial é integrado e as conversas ficam gravadas no histórico do cliente (regra de 31/10). _[DOC-091 · §9 Integrações, CRM RD Station com o WhatsApp Web · ITM-02127 · parte de UNI-00877]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-00907.01` `ESC-INTEG` `vigente` CRM da Imagine: RD Station. _[DOC-091 · Respostas do Diego, CRM; §9 Integrações · ITM-02032 · parte de UNI-00907]_

## Dashboards e indicadores (1)

- `UNI-01643` `ESC-INDIC` `vigente` O formulário de entrada gera estatísticas de conversão por origem, ticket por m², segmentos atendidos, feiras, comparação com a montadora anterior e motivos de perda. _[DOC-091 · §20 Formulário completo de entrada do cliente · ITM-02265]_

## Prazos (2)

- `UNI-00069` `REG-PRAZO` `proposto` Registrar no CRM os prazos de retorno, envio de material e recontato, combinados com o cliente a cada contato. _[DOC-005 · PRO-E14 · ITM-00118]_
- `UNI-00070` `REG-PRAZO` `proposto` Lead que perdeu o interesse recebe recontato agendado para a próxima feira dele. _[DOC-005 · PRO-E15 · ITM-00120]_

## Acesso e visibilidade (2)

- `UNI-00115` `REG-ACESSO` `proposto` O cliente aparece no usuário do vendedor com o relatório completo da Prospecção; cada vendedor vê só os seus clientes. _[DOC-007 · COM-E10, §06 · ITM-00152]_
  - Requisitos separados deste item: `UNI-00115.01`
- `UNI-00115.01` `REG-ACESSO` `proposto` `conf:media` Perfil Vendedor (Simone, Luca, Rita, Fran): só os próprios clientes, funil e Termômetro. _[DOC-091 · §8 Perfis de acesso, Vendedor · ITM-02114 · parte de UNI-00115]_

## Legal e fiscal (3)

- `UNI-00178.02` `REG-LEGAL` `proposto` `conf:media` A gravação de áudio da abordagem exige aviso e consentimento do cliente. _[DOC-091 · §19 Prospecção na feira pelo app · ITM-02238 · parte de UNI-00178]_
- `UNI-00178.03` `REG-LEGAL` `proposto` `conf:media` Sem autorização do cliente, o vendedor não grava a conversa e registra por texto. _[DOC-091 · §19 Prospecção na feira pelo app · ITM-02248 · parte de UNI-00178]_
- `UNI-00898.01` `REG-LEGAL` `pendente` `conf:media` A gravação de áudio da abordagem em feira precisa de validação LGPD com a Maitê. _[DOC-091 · §19 Prospecção na feira pelo app, registro por estande, passo 4 · ITM-02239 · parte de UNI-00898]_

## Regras operacionais (1)

- `UNI-01640` `REG-OPER` `vigente` `conf:media` O vendedor confirma ou ajusta no app a data do próximo contato sugerida pela IA. _[DOC-091 · §19 Próximo contato automático · ITM-02253]_

## Pendências (5)

- `UNI-00877` `PEND` `decisao-diego` WhatsApp na entrada: o mapeamento E17 parte do WhatsApp pessoal do vendedor, mas a POL-001 proíbe negociar pelo número pessoal e exige o número corporativo integrado ao ERP. _[DOC-090 · §3 item 1 · ITM-01561]_
  - **Decisão (Decidido por Diego):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
  - Requisitos separados deste item: `UNI-00877.01`
- `UNI-00905` `PEND` `pendente` Não foi informado se o kit básico inclui algo além da apresentação (portfólio, cases, vídeo). _[DOC-005 · §05, PRO-E3 · ITM-00123]_
- `UNI-00907` `PEND` `pendente` Faltam informar os nomes das pessoas de cada papel do setor de prospecção, as metas do setor (leads por mês, conversão) e a frequência de publicação por canal; o nome do CRM já tem resposta no ERP-001: RD Station. _[DOC-006 · §9 O que ainda falta · ITM-00132]_
  - Requisitos separados deste item: `UNI-00907.01`
- `UNI-00971` `PEND` `pendente` Falta definir novo status de encerramento "declinada por prazo", separado de "cliente não fechou" (E16). _[DOC-031 · Validar · ITM-00761]_
- `UNI-00972` `PEND` `pendente` A ferramenta de WhatsApp com IA (número oficial conectado à API do WhatsApp Business) está a definir. _[DOC-031 · Validar · ITM-00763]_

## Ideias sem compromisso (2)

- `UNI-00836` `IDEIA` `proposto` Clientes de LinkedIn, Instagram e WhatsApp passam pela Prospecção para completar o relatório antes da distribuição (proposta). _[DOC-007 · §08 COM-E6 · ITM-00163]_
- `UNI-00852` `IDEIA` `proposto` `rotina-anterior` Melhoria sugerida: ter cliente, razão social e CNPJ padronizados antes de criar o ID do projeto, para evitar grafia errada no nome do cliente. _[DOC-033 · §7.3 item 6 · ITM-01108]_

