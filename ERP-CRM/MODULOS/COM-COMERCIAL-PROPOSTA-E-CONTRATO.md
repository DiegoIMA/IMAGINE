---
id: ERP-MOD-COM
titulo: Módulo Comercial, proposta e contrato
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# COM · Comercial, proposta e contrato

170 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-24** (Aceite sem resposta): Ao bater o prazo limite, o sistema avisa o vendedor e o Diego. Depois do prazo, dispara um aviso por dia, todos os dias seguintes, para o vendedor, o Diego e o Anderson. **Em aberto:** Até quando os avisos diários continuam. Registro: `REGISTROS/decisao__20261104-1220-aceite-sem-resposta-fswb.md`
- **item-4** (Resposta do cliente a proposta): O assistente cobra o aceite, e o pedido de ajuste volta ao vendedor e a Custos. **Em aberto:** Quantas cobranças e com que frequência. Registro: `REGISTROS/decisao__20261104-1043-resposta-proposta-uhio.md`
- **item-7** (Envio e validade da proposta): O assistente envia, só com autorização do vendedor que fez a proposta. Validade de 7 dias. **Em aberto:** A expiração no 3º aviso continua? Registro: `REGISTROS/decisao__20261104-1043-envio-proposta-lm49.md`

## Fluxo macro (5)

- `UNI-00064.02` `FLX-MACRO` `proposto` `conf:media` O fluxo de Trade marketing é design, protótipo, aprovação, produção em série, distribuição e instalação nos pontos com fotos por loja, integrando marcenaria, serralheria, comunicação visual, elétrica e 3D Farm. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas · ITM-02462 · parte de UNI-00064]_
- `UNI-00279` `FLX-MACRO` `proposto` Assistente comercial tem quatro fases: proposta (ACM-E1 a E3), aceite (E4 a E7), contrato (E8 a E11) e monitoramento diário (E12 a E14). _[DOC-011 · §01 Fluxo macro · ITM-00263]_
- `UNI-00319` `FLX-MACRO` `proposto` Briefing e abertura da demanda: cliente recebe login, preenche briefing de 12 blocos, comercial valida, reunião gravada abre o cartão da demanda e as demandas dos setores. _[DOC-030 · §02 Fase 2 Briefing · ITM-00688]_
- `UNI-00321` `FLX-MACRO` `a-conferir` Orçamento, proposta e contrato: custos, preço de venda, proposta pelo sistema, controle de alterações, envio com aceite eletrônico, validação de contrato e entrada em Demandas aprovadas. _[DOC-030 · §02 Fase 4 Orçamento · ITM-00690]_
  - **Atenção (leitura do Claude):** item 8: Coloca a validação do contrato antes da entrada em Demandas aprovadas.
- `UNI-01648` `FLX-MACRO` `confirmado` Antes do contrato (fase comercial) existem só o projeto 3D do arquiteto e o memorial descritivo gerado pela IA, que alimentam custos e proposta. _[DOC-091 · §25 Dois momentos distintos · ITM-02312]_
  - **Decisão (De acordo com a decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`

## Etapas do fluxo (27)

- `UNI-00112.01` `FLX-MICRO` `proposto` `conf:media` O vendedor registra no sistema todo desconto pedido pelo cliente ou proposto por ele, e a IA recalcula a margem na hora. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto na negociação · ITM-01836 · parte de UNI-00112]_
- `UNI-00387` `FLX-MICRO` `proposto` Anderson recebe a V2 com aviso de alteração no preço de venda e emite nova proposta comercial. _[DOC-009 · CUS-E11 · ITM-00219]_
- `UNI-00397` `FLX-MICRO` `proposto` Portal encaminha a proposta ao vendedor responsável pelo cliente. _[DOC-011 · ACM-E3 · ITM-00267]_
- `UNI-00398` `FLX-MICRO` `proposto` Assistente notifica o jurídico-financeiro e Maitê elabora o contrato e o libera no sistema. _[DOC-011 · ACM-E8 · ITM-00272]_
- `UNI-00399` `FLX-MICRO` `proposto` Contrato é enviado para assinatura digital, com o assistente em cópia do envio. _[DOC-011 · ACM-E9 · ITM-00273]_
- `UNI-00401` `FLX-MICRO` `proposto` Assistente despacha cada demanda ao setor certo ou a executa. _[DOC-011 · ACM-E13 · ITM-00277]_
- `UNI-00416` `FLX-MICRO` `vigente` `conf:media` Comercial, PLA-E23: edita ou pede edição do relatório de conformidade e o envia ao cliente somente quando o cliente pedir (pré-feira). _[DOC-012 · PLA-E23 · ITM-00319]_
- `UNI-00502` `FLX-MICRO` `proposto` A assistente comercial elabora a proposta no sistema, no modelo da Imagine, com escopo, valores e condições, a partir do preço de venda e do memorial, e a valida com o vendedor. _[DOC-030 · §03 E7 · ITM-00707]_
- `UNI-00503` `FLX-MICRO` `proposto` E9: o vendedor registra no sistema o pedido de alteração (pagamento, valor, prazos, itens adicionais, prazo de fechamento). _[DOC-030 · §03 E9 · ITM-00709]_
- `UNI-00504` `FLX-MICRO` `proposto` E11: o sistema atualiza a proposta conforme a decisão da G1 e a devolve ao vendedor, que volta a E8. _[DOC-030 · §03 E11 · ITM-00714]_
- `UNI-00506` `FLX-MICRO` `substituido-parcial` E17: o cliente conhecido envia texto, projeto pronto, arquivos ou fotos de referência para o WhatsApp pessoal do vendedor. _[DOC-031 · E17 · ITM-00740]_
  - **Continua valendo:** O cliente conhecido envia texto, projeto pronto, arquivos ou fotos de referência pelo WhatsApp.
  - **Mudou:** Vale só o número corporativo integrado ao ERP (item-6).
- `UNI-00507` `FLX-MICRO` `vigente` `conf:media` E17a: o vendedor encaminha a conversa e os anexos ao número da IA, já informando a data do evento e o prazo. _[DOC-031 · E17a · ITM-00741]_
- `UNI-00508` `FLX-MICRO` `vigente` E18: a IA recebe a conversa e registra tudo no Portal. _[DOC-031 · E18 · ITM-00742]_
- `UNI-00509` `FLX-MICRO` `vigente` E19: a IA confere os dados de prazo; se faltar data do evento ou prazo, cobra do vendedor; se completo, segue para E20. _[DOC-031 · E19 · ITM-00743]_
- `UNI-00510` `FLX-MICRO` `vigente` E21: o sistema abre o cartão de nova demanda já marcando vendedor, assistente comercial, Projetos e Custos. _[DOC-031 · E21 · ITM-00748]_
- `UNI-00512` `FLX-MICRO` `vigente` E23: a assistente comercial confere o prazo limite, confirmando ou corrigindo, e a correção fica registrada. _[DOC-031 · E23 · ITM-00750]_
- `UNI-00513` `FLX-MICRO` `substituido-parcial` E24: o sistema acompanha os dias sem retorno contra o prazo limite, valendo a régua de 7 dias da E15 ou o prazo limite do micro cronograma, o que vencer primeiro. _[DOC-031 · E24 · ITM-00752]_
  - **Continua valendo:** O sistema acompanha os dias sem retorno contra o prazo limite.
  - **Mudou:** Ao bater o prazo avisa vendedor e Diego; depois, um aviso por dia a vendedor, Diego e Anderson (item-24). Até quando os avisos continuam, e se vale o que vencer primeiro, está em aberto.
- `UNI-00514` `FLX-MICRO` `a-conferir` E26: o vendedor avisa o cliente de que o prazo está acabando, pelo WhatsApp do próprio vendedor. _[DOC-031 · E26 · ITM-00754]_
  - **Atenção (leitura do Claude):** item 6: Diz "WhatsApp do próprio vendedor". Pode ser o número corporativo dele; o texto não diz.
- `UNI-00910.01` `FLX-MICRO` `vigente` No ERP, um assistente de IA elabora o contrato com a Maitê, preenchendo o modelo com os dados da proposta aceita. _[DOC-091 · Respostas do Diego, Modelo de contrato (FIN-E2) · ITM-02052 · parte de UNI-00910]_
- `UNI-01100` `FLX-MICRO` `inferido` O vendedor confere e completa o Termômetro preenchido pela IA; a escala de 0 a 100% é proposta. _[DOC-007 · §08 COM-E13 · ITM-00156]_
  - Requisitos separados deste item: `UNI-01100.01`
- `UNI-01100.01` `FLX-MICRO` `proposto` Comercial: a IA preenche o Termômetro e a probabilidade no funil; o vendedor confere. _[DOC-091 · §5 Comercial, COM-E13 · ITM-01674 · parte de UNI-01100]_
- `UNI-01101` `FLX-MICRO` `inferido` Vendedores atualizam o funil até sexta, antes do envio do dashboard (inferido). _[DOC-007 · §08 COM-E14 · ITM-00158]_
  - Requisitos separados deste item: `UNI-01101.01`
- `UNI-01101.01` `FLX-MICRO` `proposto` Comercial: o vendedor atualiza o funil. _[DOC-091 · §5 Comercial, COM-E14 · ITM-01675 · parte de UNI-01101]_
- `UNI-01525` `FLX-MICRO` `proposto` Reunião mensal: com o relatório, o Diego convoca os vendedores para analisar o mês e apontar pontos fortes e fracos da atividade comercial. _[DOC-091 · §5 Relatório comercial mensal · ITM-01846]_
- `UNI-01527` `FLX-MICRO` `proposto` Assistente comercial, etapa ACM-E5: o assistente cobra o aceite da proposta. _[DOC-091 · §5 06 Assistente comercial, ACM-E5 · ITM-01860]_
- `UNI-01529` `FLX-MICRO` `substituido-parcial` Assistente comercial, etapa ACM-E11: o contrato assinado é registrado e o projeto segue para o Planejamento. _[DOC-091 · §5 06 Assistente comercial, ACM-E11 · ITM-01869]_
  - **Continua valendo:** O contrato assinado é registrado.
  - **Mudou:** O projeto já está no Planejamento desde o aceite (item-8); a assinatura libera o detalhamento técnico (ponto-1).
- `UNI-01547` `FLX-MICRO` `vigente` O vendedor gera um PDF da apresentação e o envia ao cliente pelo próprio ERP, com o e-mail corporativo. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02267]_

## Pontos de decisão (14)

- `UNI-00112.03` `FLX-DECISAO` `proposto` Empresa absorve: o desconto é aceito e a margem menor fica registrada. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto, saída 1 · ITM-01839 · parte de UNI-00112]_
- `UNI-00112.04` `FLX-DECISAO` `proposto` Vendedor absorve: o desconto é aceito com abatimento na comissão do vendedor. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto, saída 2 · ITM-01840 · parte de UNI-00112]_
- `UNI-00112.05` `FLX-DECISAO` `proposto` Cliente ajusta o projeto: a IA aponta itens com custo fora de proporção e o projeto é enxugado para caber no valor, com nova versão da planilha. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto, saída 3 · ITM-01841 · parte de UNI-00112]_
- `UNI-00560` `FLX-DECISAO` `proposto` Contrato assinado? Se não, o assistente avisa quem precisa assinar (por exemplo, e-mail pouco lido). _[DOC-011 · ACM-E10 · ITM-00274]_
- `UNI-00561` `FLX-DECISAO` `proposto` Todas as demandas em dia? Se não, o assistente cobra o responsável (cliente sem retorno ou vendedor sem informação para a proposta). _[DOC-011 · ACM-E14 · ITM-00278]_
  - Requisitos separados deste item: `UNI-00561.01`
- `UNI-00577` `FLX-DECISAO` `proposto` Comercial valida se a informação do briefing está completa; se não, o cliente volta a preencher; se sim, segue para a reunião online de briefing. _[DOC-030 · §02 Fase 2, decisão B4 · ITM-00694]_
- `UNI-00583` `FLX-DECISAO` `proposto` E8: o vendedor decide se quer mudar as condições da proposta; se sim vai a E9, se não vai a E14. _[DOC-030 · §03 E8 · ITM-00708]_
- `UNI-00584` `FLX-DECISAO` `proposto` G1: Financeiro ou Diretoria aprova a alteração; se recusar, quem recusou faz contraproposta com as condições possíveis, e ambos os caminhos seguem para E11. _[DOC-030 · §03 G1 · ITM-00712]_
- `UNI-00585.01` `FLX-DECISAO` `vigente` Resposta à cobrança do aceite (ACM-E6): sem resposta, nova cobrança; com pedido de ajuste, a proposta volta ao vendedor e a Custos. _[DOC-091 · §5 Assistente comercial, ACM-E6 · ITM-01863 · parte de UNI-00585]_
  - **Decisão (Ver decisão do item 4):** O assistente cobra o aceite, e o pedido de ajuste volta ao vendedor e a Custos. **Em aberto:** Quantas cobranças e com que frequência. Registro: `REGISTROS/decisao__20261104-1043-resposta-proposta-uhio.md`
- `UNI-00586` `FLX-DECISAO` `proposto` E16: após recusa, o vendedor decide renegociar (volta a E9) ou cancelar, encerrando o cartão como "cliente não fechou". _[DOC-030 · §03 E16 · ITM-00719]_
- `UNI-00587` `FLX-DECISAO` `vigente` E20: o sistema decide se há tempo hábil de produção até o evento; se sim vai a E21, se não vai à G2. _[DOC-031 · E20 · ITM-00744]_
- `UNI-00588` `FLX-DECISAO` `vigente` G2: a Diretoria decide a demanda sem tempo hábil; se aceitar, com custo de urgência, segue para E21; se declinar, o cartão é encerrado como declinado. _[DOC-031 · G2 · ITM-00747]_
- `UNI-00589` `FLX-DECISAO` `a-conferir` E27: se o cliente aceitou até o prazo limite, segue para Demandas aprovadas e cronograma macro; se não, o sistema propõe "declinada por prazo" e o vendedor confirma; pedido de extensão vai à G2. _[DOC-031 · E27 · ITM-00755]_
  - **Atenção (leitura do Claude):** item 24: Diz que, vencido o prazo, o sistema propõe "declinada por prazo". A decisão manda avisar todo dia e não diz quando para.
- `UNI-01570` `FLX-DECISAO` `vigente` Cada categoria abre seu fluxo: Estande abre projeto, custos, produção, expedição e montagem; Cenografia acrescenta o setor de Decoração; Audiovisual abre demanda do Christian e planilha de AV; Tecnologia abre demanda do Bruno; 3D Farm abre demanda do Pedro. _[DOC-091 · §41 Categorias de serviço · ITM-02448]_

## Notificações (11)

- `UNI-00204` `FLX-NOTIF` `proposto` `conf:media` Nenhuma proposta, aceite ou contrato fica sem dono; demanda fora do prazo é cobrada pelo assistente e, se não resolver, vai ao Diego ou à Maitê conforme a área. _[DOC-011 · §04 Painel, regra · ITM-00279]_
- `UNI-00561.01` `FLX-NOTIF` `proposto` Demanda atrasada: o assistente cobra o responsável e, se não resolver, avisa Diego ou Maitê (ACM-E14). _[DOC-091 · §5 Assistente comercial, ACM-E14 · ITM-01872 · parte de UNI-00561]_
- `UNI-00599` `FLX-NOTIF` `proposto` Quando o preço de venda e a pré-proposta estão validados pelo Financeiro (Maitê e Diego), o Portal notifica o assistente comercial (Anderson), que emite a proposta. _[DOC-011 · ACM-E1 · ITM-00265]_
- `UNI-00600` `FLX-NOTIF` `proposto` O assistente registra o aceite do cliente e o Portal avisa vendedor, Diego e Financeiro (FIN-E1). _[DOC-011 · ACM-E7 · ITM-00271]_
- `UNI-00602` `FLX-NOTIF` `proposto` Notificações que passam pelo assistente: preço pronto (CUS-E7), alteração de preço (CUS-E11), adicional (CUS-E18), aceite, contrato a elaborar, aguardando assinatura e demanda parada. _[DOC-011 · §03 Notificações · ITM-00281]_
  - Requisitos separados deste item: `UNI-00602.01`
- `UNI-00602.01` `FLX-NOTIF` `proposto` Contrato parado na assinatura: o assistente avisa quem precisa assinar (ACM-E10). _[DOC-091 · §5 Assistente comercial, ACM-E10 · ITM-01868 · parte de UNI-00602]_
- `UNI-00615` `FLX-NOTIF` `a-conferir` E25: o sistema alerta vendedor e assistente comercial com "X dias sem retorno; limite para aprovar em Y dias; avise o cliente, senão vamos declinar". _[DOC-031 · E25 · ITM-00753]_
  - **Atenção (leitura do Claude):** item 24: Diz que o alerta vai ao vendedor e ao assistente. Pode ser um aviso anterior ao prazo limite.
- `UNI-01117` `FLX-NOTIF` `inferido` Em E19, quando faltar dado, a IA cobra o vendedor e não o cliente. _[DOC-031 · Validar, E19 · ITM-00757]_
- `UNI-01528` `FLX-NOTIF` `decisao-diego` Aceite sem resposta: depois de 10 dias, o sistema avisa o Diego e o vendedor. _[DOC-091 · §Respostas Cobrança do aceite (ACM-E5) · ITM-01862]_
  - **Decisão (Decidido por Diego):** Ao bater o prazo limite, o sistema avisa o vendedor e o Diego. Depois do prazo, dispara um aviso por dia, todos os dias seguintes, para o vendedor, o Diego e o Anderson. **Em aberto:** Até quando os avisos diários continuam. Registro: `REGISTROS/decisao__20261104-1220-aceite-sem-resposta-fswb.md`
- `UNI-01548` `FLX-NOTIF` `vigente` Quando o cliente abre o e-mail ou a apresentação, o vendedor é notificado para fazer o contato no momento certo. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02269]_
- `UNI-01612` `FLX-NOTIF` `proposto` E-mails do fluxo comercial: o assistente comercial fica em cópia de todos (ACM-E12). _[DOC-091 · §5 06 Assistente comercial, ACM-E12 · ITM-01870]_

## Módulos e telas (5)

- `UNI-00003` `ESC-MODULO` `vigente` Comercial usa formulário de entrada em 8 blocos, além de RD Station integrado ao WhatsApp. _[DOC-003 · Mapa, cartão 02 Comercial · ITM-00071]_
  - Requisitos separados deste item: `UNI-00003.01`, `UNI-00003.02`, `UNI-00003.03`, `UNI-00003.04`, `UNI-00003.05`, `UNI-00003.06`, `UNI-00003.07`, `UNI-00003.08`
- `UNI-00017` `ESC-MODULO` `proposto` Painel do assistente no Portal (proposta): propostas a finalizar, aguardando aceite, contratos, e-mails do fluxo comercial e demandas por setor. _[DOC-011 · §04 Painel do assistente · ITM-00280]_
  - Requisitos separados deste item: `UNI-00017.01`
- `UNI-00017.01` `ESC-MODULO` `proposto` Módulo Comercial e contratos (setores 05 e 06): proposta, cobrança do aceite, contrato no modelo padrão, assinatura digital e painel do assistente. _[DOC-091 · §3 Módulos do ERP, Comercial e contratos · ITM-01606 · parte de UNI-00017]_
- `UNI-00687.01` `ESC-MODULO` `proposto` `conf:media` A Gestão de obra tem cronograma físico-financeiro, medições, diário de obra no app com fotos, documentos (ART/RRT, alvarás, regras do condomínio) e taxa de gestão. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas, Gestão de obra · ITM-02460 · parte de UNI-00687]_
- `UNI-00784` `ESC-MODULO` `vigente` `conf:media` Formulário de entrada de demanda adotado no ERP. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00034]_

## Perfis e responsáveis (11)

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

## Documentos gerados (6)

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

## Entidades e campos (25)

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

## Integrações (1)

- `UNI-00916.01` `ESC-INTEG` `proposto` `conf:media` Caixa de e-mail do fluxo comercial, com o assistente em cópia. _[DOC-091 · §9 Integrações; §5 Assistente comercial, ACM-E12 · ITM-02134 · parte de UNI-00916]_

## Dashboards e indicadores (4)

- `UNI-00014.01` `ESC-INDIC` `proposto` Dashboard Comercial: meta × realizado, funil, m² e R$/m², classes, reuniões e previsão ponderada. _[DOC-091 · §10 Dashboards e indicadores, Comercial · ITM-02139 · parte de UNI-00014]_
- `UNI-00593` `ESC-INDIC` `vigente` Dashboard enviado ao Diego toda sexta com meta x realizado por vendedor, funil em m², R$/m², classe e probabilidade. _[DOC-007 · COM-E15, §08 · ITM-00159]_
- `UNI-01443` `ESC-INDIC` `proposto` O relatório mostra, por vendedor e da equipe, clientes captados, propostas enviadas, perdidas e aceitas, com taxa de conversão, e a análise da IA dos motivos de perda e de fechamento. _[DOC-091 · §5 Relatório comercial mensal · ITM-01844]_
- `UNI-01524` `ESC-INDIC` `proposto` A cada 30 dias o sistema gera um relatório comercial com dashboard e envia ao Diego. _[DOC-091 · §5 Relatório comercial mensal (COM-E16) · ITM-01843]_

## Requisitos técnicos (1)

- `UNI-01471` `TEC` `vigente` A leitura de abertura funciona melhor por link rastreado do que por anexo, porque alguns programas de e-mail bloqueiam o registro de abertura. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02272]_

## Prazos (10)

- `UNI-00072` `REG-PRAZO` `vigente` Vendedor atualiza o funil (reuniões, propostas e status) até sexta-feira. _[DOC-007 · COM-E14 · ITM-00157]_
  - Requisitos separados deste item: `UNI-00072.01`
- `UNI-00072.01` `REG-PRAZO` `proposto` Funil e dashboard comercial: revisão toda sexta-feira, vendedores e Diego. _[DOC-091 · §7 Prazos (SLAs), funil e dashboard comercial; §5 Comercial, COM-E14 · ITM-02110 · parte de UNI-00072]_
- `UNI-00082` `REG-PRAZO` `vigente` Atendimento comercial, pendências com o cliente apontadas na reunião de produção: prazo de até 5 dias para resolver. _[DOC-012 · PLA-E11; §03 Marcos · ITM-00323]_
- `UNI-00094` `REG-PRAZO` `proposto` Financeiro ou Diretoria respondem um pedido de alteração da proposta (G1) em no máximo 3 dias. _[DOC-030 · §03 E10 e Prazos · ITM-00711]_
- `UNI-00095` `REG-PRAZO` `a-conferir` A proposta tem validade de 7 dias, com lembrete a cada 7 dias e expiração no 3º aviso. _[DOC-030 · §03 E15 e Prazos · ITM-00718]_
  - **Atenção (leitura do Claude):** item 7: Traz a expiração no 3º aviso, que é o ponto em aberto. A decisão do item 24 também prevê avisos diários depois do prazo. / item 24: Traz a expiração no 3º aviso. A decisão manda avisar todo dia depois do prazo.
- `UNI-00096` `REG-PRAZO` `proposto` A produção começa no máximo 20 dias antes do evento; com cerca de 10 dias de formalização, a proposta deve estar fechada até 30 dias antes e o sistema alerta esse prazo final; por enquanto a triagem usa essa regra fixa. _[DOC-030 · §03 Prazos · ITM-00720]_
- `UNI-00914.01` `REG-PRAZO` `vigente` Proposta comercial: o assistente comercial (Anderson) a finaliza em no máximo 2 dias depois que o preço chega. _[DOC-091 · Respostas do Diego, Prazo da proposta (ACM-E2) · ITM-01857 · parte de UNI-00914]_
- `UNI-00915.01` `REG-PRAZO` `a-conferir` Cobrança do aceite: o assistente cobra o cliente a cada 3 dias até a resposta, e o sistema agenda e lembra cada cobrança. _[DOC-091 · Respostas do Diego, Cobrança do aceite (ACM-E5) · ITM-01861 · parte de UNI-00915]_
  - **Decisão (Ver decisão do item 4):** O assistente cobra o aceite, e o pedido de ajuste volta ao vendedor e a Custos. **Em aberto:** Quantas cobranças e com que frequência. Registro: `REGISTROS/decisao__20261104-1043-resposta-proposta-uhio.md`
- `UNI-01115` `REG-PRAZO` `inferido` `conf:media` Quando a régua de 7 dias e o limite de 30 dias antes do evento se cruzam, vale o que vencer primeiro. _[DOC-030 · §03 Validar · ITM-00733]_
- `UNI-01596` `REG-PRAZO` `proposto` Se o Comercial atrasar uma validação, o prazo com o cliente é prorrogado pelo mesmo tempo. _[DOC-091 · §5 03 Projetos · ITM-01704]_

## Aprovações e alçadas (3)

- `UNI-00105` `REG-APROV` `proposto` Basta um aprovador, Financeiro ou Diretoria, para liberar a alteração da proposta, conforme padrões de desconto máximo, parcelamento, prazo mínimo e prazo de fechamento. _[DOC-030 · §03 G1 · ITM-00713]_
- `UNI-01119` `REG-APROV` `inferido` `conf:media` Em E27, a aprovação esperada do cliente é o aceite eletrônico da proposta (E15). _[DOC-031 · Validar, E27 · ITM-00759]_
- `UNI-01578` `REG-APROV` `vigente` Quem define os itens de cortesia é o Comercial, com validação do Diego. _[DOC-091 · §12 Itens de cortesia · ITM-02173]_

## Preço, margem e comissão (7)

- `UNI-00111.01` `REG-PRECO` `vigente` Comissão de vendedor: 1,5% em clientes direcionados pela empresa e 3% em clientes abertos pelo vendedor, paga sobre o recebido. _[DOC-091 · §5 Financeiro, FIN-E14; Respostas do Diego, Comissões dos vendedores · ITM-01747 · parte de UNI-00111]_
  - **Decisão (Ver decisão do item 10):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- `UNI-00111.02` `REG-PRECO` `vigente` Comissão dos vendedores por origem do cliente: 3% em clientes abertos pelo próprio vendedor e 1,5% em clientes direcionados pela empresa; os percentuais ficam cadastrados no sistema. _[DOC-091 · Respostas do Diego, Comissões dos vendedores · ITM-02047 · parte de UNI-00111]_
  - **Decisão (Ver decisão do item 10):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- `UNI-00112` `REG-PRECO` `vigente` Desconto comercial só é permitido se a margem mínima de 25% for mantida. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00025]_
  - Requisitos separados deste item: `UNI-00112.01`, `UNI-00112.02`, `UNI-00112.03`, `UNI-00112.04`, `UNI-00112.05`, `UNI-00112.06`, `UNI-00112.07`
- `UNI-00112.02` `REG-PRECO` `vigente` A margem mínima é de 25%; se o desconto levar a margem a 25% ou menos, o sistema alerta o Diego e o Financeiro. _[DOC-091 · Respostas do Diego, Preço de venda (CUS-E4), margem mínima; §5 Custos, controle de desconto · ITM-01837 · parte de UNI-00112]_
- `UNI-00112.07` `REG-PRECO` `vigente` Margem mínima de 25% é o piso da negociação; ao chegar nela, disparam os alertas de desconto. _[DOC-091 · Respostas do Diego, Preço de venda (CUS-E4), margem mínima · ITM-02029 · parte de UNI-00112]_
- `UNI-00748` `REG-PRECO` `vigente` `conf:media` Comercial: meta de R$ 2 mi por mês, uso do RD Station e desconto permitido com margem mínima de 25%. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00024]_
- `UNI-01338` `REG-PRECO` `a-conferir` `conf:media` Comissões da filial SP: vendedor 3% e projetista 1% sobre as vendas (Diego, 29/10/2026), total de 4% com a participação do gerente, que está em 0%. _[DOC-070 · Aba PREMISSAS, L11-L12 · ITM-01400]_
  - **Atenção (leitura do Claude):** item 20: Diz que o projetista da filial SP recebe 1% sobre as vendas (Diego, 29/10). A decisão diz que todos são pagos por hora.
  - Origem fora do repositório: Planilha de projeção financeira: fica em treinamento.

## Legal e fiscal (2)

- `UNI-00193` `REG-LEGAL` `proposto` `conf:media` Cliente com crédito é Lucro Real, Presumido ou Simples híbrido; sem crédito é Simples Nacional tradicional ou pessoa física. Transição: CBS plena em 2027, IBS cresce de 2029 a 2032, modelo completo em 2033. _[DOC-036 · §Premissas · ITM-01202]_
- `UNI-00264` `REG-LEGAL` `proposto` Valores do simulador são ilustrativos, a alíquota de 26,5% é estimativa de referência (definitivas por lei e Senado), o valor-base é o mesmo nos três regimes e a simulação não substitui o contador do cliente. _[DOC-036 · §Premissas · ITM-01203]_

## Cálculos e critérios (3)

- `UNI-00644` `REG-CALC` `proposto` Lucro Presumido e Simples híbrido: nota = base x (1 + alíquota), CBS/IBS destacado e crédito = base x alíquota, custo líquido com crédito = base, custo sem crédito = nota. _[DOC-036 · Script, função calc() · ITM-01200]_
- `UNI-00645` `REG-CALC` `proposto` Simples Nacional: nota = base, CBS/IBS = base x DAS x parte CBS/IBS, crédito do cliente igual a esse valor, custo líquido = base menos crédito; vantagem para cliente sem crédito = nota do Presumido menos nota do Simples. _[DOC-036 · Script, função calc() · ITM-01201]_
- `UNI-01610` `REG-CALC` `vigente` Classificação do orçamento frente ao cliente: muito acima é 10% ou mais acima do que o cliente pagou, muito abaixo é 10% ou mais abaixo e dentro é diferença menor que 10%. _[DOC-091 · §5 Novo fluxo de Custos com IA, aprovação do Diego · ITM-01821]_

## Regras operacionais (7)

- `UNI-00112.06` `REG-OPER` `proposto` `conf:media` A decisão sobre o desconto fica registrada no projeto e entra no fechamento do mês. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto · ITM-01842 · parte de UNI-00112]_
- `UNI-00201` `REG-OPER` `vigente` A categoria é selecionada na entrada da demanda (uma principal e complementares) e define briefing, etapas, setores, cronograma, custos e contrato. _[DOC-002 · §44 Categorias de serviço · ITM-00053]_
- `UNI-00203` `REG-OPER` `vigente` Mínimo de 200 m² vendidos pela Imagine em cada feira, para concentrar mão de obra em feiras com mais metragem. _[DOC-007 · COM-E2, §08 · ITM-00137]_
- `UNI-00219` `REG-OPER` `proposto` A proposta só sai por e-mail pelo sistema, com assinatura eletrônica de aceite; nunca por WhatsApp ou canal sem aceite oficial. _[DOC-030 · §03 E14 e §06 · ITM-00716]_
- `UNI-00220` `REG-OPER` `proposto` Desde o lead no CRM, todo pedido de ajuste ou alteração de projeto ou proposta é feito pelo sistema, com registro e aprovação, nunca por fora, para evitar desvios que viram bola de neve. _[DOC-030 · §03 lead e §06 · ITM-00722]_
- `UNI-00400` `REG-OPER` `proposto` `conf:media` Assistente fica em cópia de todos os e-mails do fluxo comercial, entradas e saídas de todos os clientes. _[DOC-011 · ACM-E12 · ITM-00276]_
- `UNI-01611` `REG-OPER` `proposto` Ao marcar uma proposta como perdida, o vendedor deve registrar o motivo; sem ele o status não muda. _[DOC-091 · §5 Relatório comercial mensal · ITM-01845]_

## Pendências (25)

- `UNI-00111` `PEND` `decisao-diego` Divergência na comissão do vendedor: ERP-001 (DOC-002) fixa comissões de 3% e 1,5% no Comercial; o fluxo Financeiro (DOC-010) fixa 2% sobre contrato com cliente distribuído pela empresa e 3% sobre contrato com cliente aberto pelo vendedor. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00024]_
  - **Decisão (Decidido por Diego):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
  - Requisitos separados deste item: `UNI-00111.01`, `UNI-00111.02`
- `UNI-00505` `PEND` `decisao-diego` Envio da proposta ao cliente: no ACM-E4 (DOC-011, 29/10, marcado como inferido) o vendedor envia a proposta com o assistente em cópia do e-mail; no E14 do fluxo geral (DOC-030, 30/10) o sistema envia a proposta validada por e-mail com assinatura eletrônica de aceite. _[DOC-030 · §03 E14 · ITM-00715]_
  - **Decisão (Decidido por Diego):** O assistente envia, só com autorização do vendedor que fez a proposta. **Em aberto:** A expiração no 3º aviso continua? Registro: `REGISTROS/decisao__20261104-1043-envio-proposta-lm49.md`
- `UNI-00585` `PEND` `decisao-diego` Resposta do cliente à proposta: no E15 do fluxo geral (DOC-030, 30/10) aceite vira pré-contrato, pedido de ajuste é feito pelo assistente e reenviado pelo sistema, sem resposta segue a régua de lembretes do sistema e recusa vai a E16; no fluxo do assistente comercial (DOC-011, 29/10) o assistente cobra o aceite até a resposta (ACM-E5), sem resposta há nova cobrança e, se o cliente pediu ajuste, a proposta volta ao vendedor e a Custos (ACM-E6). _[DOC-030 · §03 E15 · ITM-00717]_
  - **Decisão (Decidido por Diego):** O assistente cobra o aceite, e o pedido de ajuste volta ao vendedor e a Custos. **Em aberto:** Quantas cobranças e com que frequência. Registro: `REGISTROS/decisao__20261104-1043-resposta-proposta-uhio.md`
  - Requisitos separados deste item: `UNI-00585.01`
- `UNI-00679.03` `PEND` `pendente` Os modelos detalhados de briefing por categoria ainda estão a desenvolver. _[DOC-091 · §41 Categorias de serviço, briefing específico por categoria (Modelos detalhados a desenvolver) · ITM-02457 · parte de UNI-00679]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00880` `PEND` `decisao-diego` Envio e validade da proposta: o fluxo V03 faz o sistema enviar com validade de 7 dias e expiração no 3º aviso; o SET06 faz o vendedor enviar (inferido); o modelo de proposta diz 15 dias. _[DOC-090 · §3 item 4 · ITM-01564]_
  - **Decisão (Decidido por Diego):** O assistente envia, só com autorização do vendedor que fez a proposta. Validade de 7 dias. **Em aberto:** A expiração no 3º aviso continua? Registro: `REGISTROS/decisao__20261104-1043-envio-proposta-lm49.md`
- `UNI-00883` `PEND` `adiado` Formulário de briefing: o fluxo V03 tem 12 blocos, o ERP-002 tem 8 blocos e o COM-BRF-001 tem 6 blocos comuns mais os da categoria. _[DOC-090 · §3 item 10 · ITM-01567]_
  - **Decisão (Adiado por Diego):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00910` `PEND` `pendente` Não foi informado quem cria e revisa o modelo padrão de contrato (jurídico interno ou externo). _[DOC-010 · §08, FIN-E2 · ITM-00240]_
  - Requisitos separados deste item: `UNI-00910.01`
- `UNI-00911` `PEND` `pendencia-parcial` Proposta: arquitetos por hora registram horas por projeto no Portal e o relatório chega ao Financeiro no fechamento do mês; pontos da remuneração dos arquitetos seguem não informados. _[DOC-010 · §08, FIN-E13 · ITM-00255]_
  - **Atenção (leitura do Claude):** item 20: Pagamento por hora está decidido. Mas o item diz que os arquitetos registram as horas, e a decisão diz que a Érika estima e atualiza.
- `UNI-00914` `PEND` `pendente` Prazo para finalizar a proposta depois que o preço chega (ACM-E2) não foi informado. _[DOC-011 · §06 item 2 · ITM-00283]_
  - Requisitos separados deste item: `UNI-00914.01`
- `UNI-00915` `PEND` `pendencia-parcial` Cadência da cobrança do aceite e número de cobranças sem resposta antes de subir ao vendedor ou ao Diego não foram informados. _[DOC-011 · §06 item 3 · ITM-00284]_
  - **Atenção (leitura do Claude):** item 4: A decisão diz quem cobra. A cadência segue em aberto, e a Especificação (ITM-01861) sugere a cada 3 dias. / item 24: A decisão diz quem recebe o aviso no prazo limite. A cadência das cobranças segue em aberto.
  - Requisitos separados deste item: `UNI-00915.01`
- `UNI-00916` `PEND` `pendente` Não foi informado se a cópia nos e-mails é regra (cada vendedor copia o assistente) ou se o Portal integra os e-mails comerciais numa caixa só. _[DOC-011 · §06 item 5 · ITM-00285]_
  - Requisitos separados deste item: `UNI-00916.01`
- `UNI-00917` `PEND` `pendente` Prazo máximo de retorno ao cliente nas questões burocráticas (por exemplo, 24 horas) não foi informado. _[DOC-011 · §06 item 6 · ITM-00286]_
- `UNI-00918` `PEND` `pendente` Segue sem definição a plataforma de assinatura digital e quem envia o contrato (Maitê ou assistente); o ERP-001 também não responde. _[DOC-011 · §06 item 7 · ITM-00287]_
- `UNI-00919` `PEND` `pendente` Painel do assistente é proposta para o Portal e precisa de confirmação de Diego. _[DOC-011 · §06 item 8 · ITM-00288]_
- `UNI-00969` `PEND` `pendente` Na E11 a proposta é atualizada pelo sistema; não foi dito se a assistente comercial revisa antes do retorno ao vendedor. _[DOC-030 · §03 Validar, E11 · ITM-00735]_
- `UNI-00970` `PEND` `pendente` Na G2 da entrada via WhatsApp não foram informados o prazo de resposta da Diretoria nem como se calcula o custo de urgência. _[DOC-031 · Validar, G2 · ITM-00760]_
- `UNI-01026` `PEND` `pendente` `conf:media` Confirmar com o contador a parte do DAS que corresponde a CBS/IBS no anexo da empresa (o padrão de 40% é só ponto de partida). _[DOC-036 · §Para a equipe validar · ITM-01205]_
- `UNI-01027` `PEND` `pendente` `conf:media` Verificar se cenografia ou montagem de estande se enquadra em redução de alíquota da LC 214 para eventos ou produção cultural. _[DOC-036 · §Para a equipe validar · ITM-01206]_
- `UNI-01028` `PEND` `pendente` `conf:media` Locação de bens móveis hoje não paga ISS e com a reforma entra no IBS/CBS; confirmar a alíquota aplicável. _[DOC-036 · §Para a equipe validar · ITM-01207]_
- `UNI-01029` `PEND` `pendente` `conf:media` Confirmar a janela de opção pelo Simples híbrido para valer em 2027. _[DOC-036 · §Para a equipe validar · ITM-01208]_
- `UNI-01099` `PEND` `inferido` `conf:media` Os 200 m² mínimos são a soma de todos os estandes da Imagine na feira; clientes Pacote podem ficar fora do mínimo. _[DOC-007 · §08 COM-E2 · ITM-00138]_
- `UNI-01118` `PEND` `a-conferir` `conf:media` Em E26, o vendedor avisa o cliente pelo próprio WhatsApp. _[DOC-031 · Validar, E26 · ITM-00758]_
  - **Atenção (leitura do Claude):** item 6: Diz "próprio WhatsApp". Pode ser o número corporativo dele; o texto não diz.
- `UNI-01129` `PEND` `pendente` Com o encaminhamento manual (E17a), a demanda só entra no sistema se o vendedor encaminhar; demanda não encaminhada fica invisível para o Portal. _[DOC-031 · Validar, E17a · ITM-00762]_
- `UNI-01463` `PEND` `pendente` A plataforma de assinatura eletrônica deve garantir validade jurídica; validar com a Maitê. _[DOC-091 · §12 Termo de entrega, MON-E10 · ITM-02178]_
- `UNI-01590` `PEND` `pendencia-parcial` Remuneração de arquitetos e freelancers, base do percentual e valor da hora de um arquiteto, e momento de pagar a comissão seguem em aberto. _[DOC-091 · §11 Pendências · ITM-02151]_
  - **Atenção (leitura do Claude):** item 20: Pagamento por hora está decidido. Seguem em aberto o valor da hora, os freelancers e o momento da comissão.

## Não usar: substituídos ou desatualizados (3)

- `UNI-01151` `REG-PRECO` `desatualizado` Sobre a margem nas alterações de proposta (G1), o ERP-001 já define desconto com margem mínima de 25%; parcelamento e prazo seguem em aberto. _[DOC-090 · §4 linha Margem nas alterações · ITM-01574]_
- `UNI-01156` `ESC-PERFIL` `desatualizado` O assistente comercial, pergunta aberta no SET06, já tem resposta no ERP-001: Anderson. _[DOC-090 · §4 linha Quem é o assistente comercial · ITM-01579]_
- `UNI-01526` `FLX-MICRO` `substituido` Assistente comercial, etapa ACM-E4: o vendedor envia a proposta ao cliente, com o assistente em cópia. _[DOC-091 · §5 06 Assistente comercial, ACM-E4 · ITM-01859]_
  - **Decisão (Contraria a decisão do item 7):** O assistente envia, só com autorização do vendedor que fez a proposta. Validade de 7 dias. Registro: `REGISTROS/decisao__20261104-1043-envio-proposta-lm49.md`

