---
id: ERP-PENDENCIAS
titulo: Pendências a decidir
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Pendências a decidir

135 perguntas em aberto, da que mais trava para a que menos trava. Nos itens decisao-diego, vale a decisão, e só a parte **Em aberto** continua pendente. A análise de impacto é leitura do Claude. Não decida por conta própria: registre a dúvida em `ERP-CRM/ANDAMENTO/DUVIDAS.md`, para Diego ou o Pedro responder. Quando a pendência for de parâmetro, construa o campo configurável e siga.

## Trava o modelo de dados (5)

- `UNI-00883` `PEND` `COM` `adiado` Formulário de briefing: o fluxo V03 tem 12 blocos, o ERP-002 tem 8 blocos e o COM-BRF-001 tem 6 blocos comuns mais os da categoria. _[DOC-090 · §3 item 10 · ITM-01567]_
  - **Decisão (Adiado por Diego):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00912` `PEND` `FIN` `substituido-parcial` Proposta: o CRM precisa marcar a origem do cliente (da empresa ou aberto pelo vendedor) para aplicar 2% ou 3%. _[DOC-010 · §08, FIN-E14 · ITM-00257]_
  - **Continua valendo:** O CRM marca a origem do cliente para definir a comissão.
  - **Mudou:** Os percentuais são os do ERP-001 e do ERP-002 (item-10), não os citados aqui.
  - Requisitos separados deste item: `UNI-00912.01`
- `UNI-00954` `PEND` `INC` `pendente` Falta saber quantas pessoas são CLT e quantas são prestadoras, o que define a forma de pagamento de cada uma. _[DOC-023 · §08 Validar antes de implantar, item 3 · ITM-00628]_
- `UNI-00134` `PEND` `TRP` `decisao-diego` Divergência no formato do código do item: DOC-012 diz projeto + item + subitem (P0123-015-02); DOC-020 diz projeto-setor-número (P0123-CV-012), igual do projeto à montagem; DOC-032, DOC-072 e o índice DOC-039 dizem que o IT é o número do ÍTEM do memorial e o rastreio é o ID do job, uma barra e o IT (ex.: [JOB]/2.1). _[DOC-020 · Cabeçalho e rodapé · ITM-00581]_
  - **Decisão (Decidido por Diego):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`
- `UNI-00878` `PEND` `TRP` `decisao-diego` Código único do item: IMG-PAD-003 e IMG-MOD-004 usam job mais IT; SET07 e SET12 usam P0123-015-02; a ficha PRD-FT-CV usa P0123-CV-012; o SET03 usa BIB-MOB-0042 e LOC-ILU-0007 na biblioteca. _[DOC-090 · §3 item 2 · ITM-01562]_
  - **Decisão (Decidido por Diego):** Abreviatura do projeto + versão + número da sessão + número do item, como NMB_v01_S4_I4.1. **Em aberto:** Versão fixa ou não; BIB- e LOC-. Registro: `REGISTROS/decisao__20261104-1043-codigo-item-lesc.md`

## Trava um fluxo ou uma transição (19)

- `UNI-00932` `PEND` `ALM` `pendente` Não foi informado se Almoxarifado e logística interna recebem fichas de produção como os outros setores ou só apoiam. _[DOC-014 · §07 item 5 · ITM-00432]_
- `UNI-01104` `PEND` `BIB` `inferido` Item não aprovado pelo Diego fica só naquele projeto e não entra na biblioteca (inferido). _[DOC-008 · §08, PRJ-E16 · ITM-00190]_
- `UNI-00505` `PEND` `COM` `decisao-diego` Envio da proposta ao cliente: no ACM-E4 (DOC-011, 29/10, marcado como inferido) o vendedor envia a proposta com o assistente em cópia do e-mail; no E14 do fluxo geral (DOC-030, 30/10) o sistema envia a proposta validada por e-mail com assinatura eletrônica de aceite. _[DOC-030 · §03 E14 · ITM-00715]_
  - **Decisão (Decidido por Diego):** O assistente envia, só com autorização do vendedor que fez a proposta. **Em aberto:** A expiração no 3º aviso continua? Registro: `REGISTROS/decisao__20261104-1043-envio-proposta-lm49.md`
- `UNI-00969` `PEND` `COM` `pendente` Na E11 a proposta é atualizada pelo sistema; não foi dito se a assistente comercial revisa antes do retorno ao vendedor. _[DOC-030 · §03 Validar, E11 · ITM-00735]_
- `UNI-01129` `PEND` `COM` `pendente` Com o encaminhamento manual (E17a), a demanda só entra no sistema se o vendedor encaminhar; demanda não encaminhada fica invisível para o Portal. _[DOC-031 · Validar, E17a · ITM-00762]_
- `UNI-00923` `PEND` `CRD` `pendente` Credenciamento: não foi informado se o laudo do engenheiro é exigido sempre ou só quando há estrutura suspensa. _[DOC-013 · §06 item 3 · ITM-00383]_
- `UNI-00926` `PEND` `CRD` `pendente` Taxas da feira (energia, montagem, seguro): não foi informado se o Credenciamento levanta e pede o pagamento ao Financeiro. _[DOC-013 · §06 item 7 · ITM-00387]_
- `UNI-01109` `PEND` `CRD` `a-conferir` CRD-E15: o retorno da feira com exigências passa de novo pela Maitê antes de publicar; inferido como sim, a confirmar. _[DOC-013 · §06 item 4 (CRD-E15) · ITM-00384]_
  - **Atenção (leitura do Claude):** item 3: Diz que o retorno da feira passa de novo pela Maitê antes de publicar (inferido). A decisão escolheu o engenheiro refazer e não cita a Maitê.
- `UNI-00971` `PEND` `CRM` `pendente` Falta definir novo status de encerramento "declinada por prazo", separado de "cliente não fechou" (E16). _[DOC-031 · Validar · ITM-00761]_
- `UNI-00922` `PEND` `EXP` `a-conferir` Expedição e logística é setor novo, ainda a mapear e a incluir no PLANDEM_FLX-001. _[DOC-012 · §09 Validar antes de implantar · ITM-00347]_
  - **Atenção (leitura do Claude):** item 22: Trata Expedição e logística como um setor só.
  - Requisitos separados deste item: `UNI-00922.01`, `UNI-00922.02`
- `UNI-00922.02` `PEND` `EXP` `a-conferir` `conf:media` Setores 10 (Expedição) e 11 (Logística) estão definidos, mas falta mapear o fluxo de cada um. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento; Respostas do Diego, Setores · ITM-02145 · parte de UNI-00922]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`
- `UNI-01539` `PEND` `EXP` `pendente` Definir se o Portal bloqueia a saída do caminhão quando falta item. _[DOC-091 · §11 Pendências · ITM-02153]_
- `UNI-00913` `PEND` `FIN` `pendente` Não foi informado se a comissão é paga na assinatura do contrato ou conforme os recebimentos, nem se incide sobre os adicionais. _[DOC-010 · §08, FIN-E14 · ITM-00258]_
  - Requisitos separados deste item: `UNI-00913.01`, `UNI-00913.02`
- `UNI-00939` `PEND` `LOG` `pendencia-parcial` Transporte, frete, motorista e horários de saída e chegada não foram detalhados; falta decidir se entram na Expedição ou em um setor de logística próprio. _[DOC-015 · §07 Logística · ITM-00464]_
  - **Atenção (leitura do Claude):** item 22: Na ordem decidida, Logística aparece separada da Expedição. Diego não disse se é um setor próprio.
- `UNI-00942` `PEND` `POS` `pendente` POS-E3: a aba do cliente fecha no fim da feira (SET13), por isso a pesquisa vai por link sem login; a confirmar. _[DOC-017 · §07 item 3 (POS-E3) · ITM-00531]_
- `UNI-00920` `PEND` `PRD` `pendente` Etiqueta com QR code: não foi informado quem imprime e cola a etiqueta em cada peça e em que momento (início da produção ou primeiro setor da cadência). _[DOC-012 · §09 Validar antes de implantar · ITM-00345]_
  - Requisitos separados deste item: `UNI-00920.01`, `UNI-00920.02`, `UNI-00920.03`
- `UNI-00930` `PEND` `PRD` `pendente` PRD-E2: não foi informado quem apresenta as fichas na reunião (Eduardo e Marília?) nem em quanto tempo ela acontece depois da notificação. _[DOC-014 · §07 item 2 (PRD-E2) · ITM-00429]_
- `UNI-00931` `PEND` `PRD` `pendente` Documentos ou movimentos pré-evento próprios dos outros setores (ex.: Elétrica com planta e RRT para o Credenciamento) ainda precisam ser listados setor a setor. _[DOC-014 · §07 item 4 · ITM-00431]_
- `UNI-00579` `PEND` `PRJ` `decisao-diego` Aprovação da prévia: no G2 do fluxo de Projetos (DOC-008, 28/10) Comercial e vendedor aprovam em até 1 dia e, se não aprovarem, volta à PRJ-E6; no C6 do fluxo geral (DOC-030, 30/10) Diretoria e comercial aprovam e, se não, volta para ajustar a modelagem 3D, e se sim segue para a verificação 1 com o cliente. _[DOC-030 · §02 Fase 3, decisão C6 · ITM-00696]_
  - **Decisão (Decidido por Diego):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
  - Requisitos separados deste item: `UNI-00579.01`

## Trava perfis e permissões (19)

- `UNI-00935` `PEND` `AUD` `pendente` AUD-E10: no ditado constou que a comunicação visual dá o ok nos vídeos; entendeu-se que é o Audiovisual, a confirmar. _[DOC-014 · §07 item 8 (AUD-E10) · ITM-00435]_
- `UNI-00937` `PEND` `AUD` `pendente` AUD-E4: confirmar quem da montagem confere as medidas e quando; a sugestão é que seja antes de as fichas dos outros setores entrarem em produção. _[DOC-014 · §07 item 10 (AUD-E4) · ITM-00437]_
- `UNI-00881` `PEND` `CMP` `decisao-diego` Aprovação de compras: o SET05 não admite tolerância e aprova toda comanda; o IMG-PAD-003 libera até R$ 2.000 no orçado (valor de exemplo); o ERP-001 prevê alerta de preço de 10%. _[DOC-090 · §3 item 5 · ITM-01565]_
  - **Decisão (Decidido por Diego):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
  - Requisitos separados deste item: `UNI-00881.01`
- `UNI-00976` `PEND` `CMP` `pendente` Falta definir quem confere o recebimento (REC) de material na fábrica e quando a entrega é direto no pavilhão, além de validade e teto padrão da OC aberta. _[DOC-032 · §09 Validar · ITM-00808]_
- `UNI-00925` `PEND` `CRD` `pendente` CRD-E4: não foi informado quem pede o login e a senha ao cliente (Credenciamento, vendedor ou assistente comercial). _[DOC-013 · §06 item 6 (CRD-E4) · ITM-00386]_
- `UNI-01108` `PEND` `CRD` `inferido` `conf:media` No checklist do Credenciamento, a coluna de quem fornece cada documento (arquiteto, engenheiro, Projetos, Planejamento, Expedição) é inferida e deve ser confirmada, em especial se o engenheiro é da casa ou terceirizado e quem reúne os documentos dos funcionários. _[DOC-013 · §06 item 2 · ITM-00382]_
- `UNI-00122` `PEND` `CUS` `decisao-diego` Divergência sobre quem vê a área de Custos: o fluxo de Custos (DOC-009, regra de 22/10) diz Custos, Financeiro e diretoria; DOC-030 e DOC-032 (30/10) dizem só Financeiro e diretoria, e a matriz de DOC-032 acrescenta que Compras vê só o valor orçado da linha que compra. _[DOC-030 · §06 Regras do portal · ITM-00723]_
  - **Decisão (Decidido por Diego):** Diretoria e Custos veem a área. Compras só sabe o valor do item que foi comprado. **Em aberto:** Acesso do Financeiro. Registro: `REGISTROS/decisao__20261104-1043-area-custos-hokw.md`
  - Requisitos separados deste item: `UNI-00122.01`
- `UNI-01672` `PEND` `EVT` `pendente` Estão pendentes o responsável pelo módulo de Produção de Evento e o modelo da taxa de gestão. _[DOC-091 · §40 Pendências · ITM-02445]_
- `UNI-00952` `PEND` `INC` `pendente` Falta definir quem administra o programa de incentivo: Marketing (endomarketing), RH ou Maitê; não informado. _[DOC-023 · §08 Validar antes de implantar, item 1 · ITM-00626]_
- `UNI-00946` `PEND` `MKT` `pendente` Drone: precisa de autorização do organizador da feira e piloto habilitado; não foi informado quem contrata e pede a autorização. _[DOC-018 · §07 item 4 (MKT-E4) · ITM-00561]_
- `UNI-00893` `PEND` `POS` `pendente` Falta definir o responsável pelo Pós-feira (assistente comercial, vendedor do cliente ou outra pessoa), pendência que consta também entre os responsáveis a definir do ERP-001 V08. _[DOC-002 · §45 Pendências · ITM-00058]_
- `UNI-00943` `PEND` `POS` `pendente` POS-E7: definir quem liga ao detrator em até 48 horas; a sugestão é o vendedor, com o Diego avisado. _[DOC-017 · §07 item 4 (POS-E7) · ITM-00532]_
- `UNI-00929` `PEND` `PRD` `pendente` Elétrica (planta e RRT para o Credenciamento), Almoxarifado (recebe e entrega materiais) e Logística interna (movimenta peças até a Expedição) têm papéis ainda a confirmar. _[DOC-014 · §03 Setores · ITM-00423]_
- `UNI-01111` `PEND` `PRD` `inferido` PRD-E5: quando o pedido passa do previsto, a aprovação seria de Maitê e Diego (Financeiro, 1 dia, como no FIN-E5); marcado como inferido. _[DOC-014 · §07 item 3 (PRD-E5) · ITM-00430]_
- `UNI-01589` `ESC-PERFIL` `PRD` `pendente` `conf:media` Perfil Líder de setor produtivo: pessoa a definir; acesso ao app do setor. _[DOC-091 · §8 Perfis de acesso · ITM-02122]_
- `UNI-00888` `PEND` `TRP` `pendente` `conf:media` Cadastro de equipe: o IMG-CAD-001 V08 (21/10) não tem pessoas com função no ERP-001, como Eduardo, Osmar, Suellen, Samanta e Rômulo, e as funções também mudaram. _[DOC-090 · §3 item 15 · ITM-01572]_
  - **Decisão (Aguarda Diego):** Diego vai corrigir a lista na planilha IMAGINE_PESSOAS-PARA-CONFERIR_V01. **Em aberto:** Qual cadastro de equipe vale e quais nomes são a mesma pessoa.
- `UNI-00894` `PEND` `TRP` `pendente` Responsáveis a definir: comunicação visual SP, elétrica SP e módulos de Produção de evento e Gestão de obra. _[DOC-002 · §45 Pendências · ITM-00058]_
- `UNI-01153.01` `PEND` `TRP` `pendente` `conf:media` Faltam os responsáveis de Credenciamento, Expedição, Pós-feira e Marketing, e a confirmação de Anderson como assistente comercial. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02149 · parte de UNI-01153]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-01416` `PEND` `TRP` `vigente` `conf:media` `rotina-anterior` [PES-00102] [PES-00016] é membro do quadro Trello com cargo não definido; "[PES-00100]" e [PES-00099] aparecem nas listas de produção, com papel a confirmar. _[DOC-033 · §10.5 Pessoas e cargos · ITM-01044]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

## Trava uma integração (12)

- `UNI-00916` `PEND` `COM` `pendente` Não foi informado se a cópia nos e-mails é regra (cada vendedor copia o assistente) ou se o Portal integra os e-mails comerciais numa caixa só. _[DOC-011 · §06 item 5 · ITM-00285]_
  - Requisitos separados deste item: `UNI-00916.01`
- `UNI-00918` `PEND` `COM` `pendente` Segue sem definição a plataforma de assinatura digital e quem envia o contrato (Maitê ou assistente); o ERP-001 também não responde. _[DOC-011 · §06 item 7 · ITM-00287]_
- `UNI-01118` `PEND` `COM` `a-conferir` `conf:media` Em E26, o vendedor avisa o cliente pelo próprio WhatsApp. _[DOC-031 · Validar, E26 · ITM-00758]_
  - **Atenção (leitura do Claude):** item 6: Diz "próprio WhatsApp". Pode ser o número corporativo dele; o texto não diz.
- `UNI-01463` `PEND` `COM` `pendente` A plataforma de assinatura eletrônica deve garantir validade jurídica; validar com a Maitê. _[DOC-091 · §12 Termo de entrega, MON-E10 · ITM-02178]_
- `UNI-00877` `PEND` `CRM` `decisao-diego` WhatsApp na entrada: o mapeamento E17 parte do WhatsApp pessoal do vendedor, mas a POL-001 proíbe negociar pelo número pessoal e exige o número corporativo integrado ao ERP. _[DOC-090 · §3 item 1 · ITM-01561]_
  - **Decisão (Decidido por Diego):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
  - Requisitos separados deste item: `UNI-00877.01`
- `UNI-00972` `PEND` `CRM` `pendente` A ferramenta de WhatsApp com IA (número oficial conectado à API do WhatsApp Business) está a definir. _[DOC-031 · Validar · ITM-00763]_
- `UNI-00901` `PEND` `D3F` `pendente` Impressão 3D: falta definir o modelo das impressoras e o gerenciador de farm. _[DOC-002 · §45 Pendências · ITM-00065]_
- `UNI-00891` `PEND` `FIN` `pendente` O nome do sistema de gestão financeiro usado hoje segue pendente (ERP-001 V08 lista o sistema financeiro entre as pendências) e é necessário para planejar a integração com o Portal. _[DOC-002 · §45 Pendências · ITM-00057]_
  - Requisitos separados deste item: `UNI-00891.01`
- `UNI-01445` `PEND` `FIN` `pendente` Sistema financeiro e sistema de assinatura digital: o Diego vai verificar qual usar. _[DOC-091 · §Respostas CRM · ITM-02033]_
- `UNI-00968` `PEND` `REU` `pendente` A ferramenta do assistente de reunião (candidatas tl;dv, Fathom, Fireflies, Gemini no Meet ou Copilot no Teams) ainda está a definir, com teste de duas opções em reunião real. _[DOC-030 · §03 Validar; §04 · ITM-00731]_
- `UNI-00013.03` `PEND` `TIN` `pendente` Desenvolver ou contratar está a decidir: leads podem ser internos com IA, contagem e mapa de calor em modelo híbrido, fluxo no pavilhão com fornecedor especializado; pesquisa de custos pendente. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 · ITM-02210 · parte de UNI-00013]_
- `UNI-01458` `PEND` `TRP` `pendente` Faltam os nomes do CRM, do sistema financeiro e da plataforma de assinatura digital. _[DOC-091 · §11 Pendências · ITM-02148]_

## Pode seguir: deixe como parâmetro configurável (49)

- `UNI-00897` `PEND` `ALM` `pendente` `conf:media` Pendentes: estoque mínimo, padrões do Credenciamento e fluxos dos setores 10 e 11. _[DOC-002 · §45 Pendências · ITM-00061]_
- `UNI-01600` `PEND` `ALM` `pendente` Os valores de estoque mínimo de cada item ainda não estão definidos. _[DOC-091 · §5 Almoxarifado, Estoque mínimo · ITM-01782]_
- `UNI-00936` `PEND` `AUD` `pendente` AUD-E7: não foi informada a data limite para o cliente entregar os conteúdos antes da montagem. _[DOC-014 · §07 item 9 (AUD-E7) · ITM-00436]_
- `UNI-00975` `PEND` `CMP` `pendencia-parcial` As faixas de aprovação da OC (R$ 2.000, R$ 10.000 e 5%) são apenas exemplos e não foram informadas; falta também o número mínimo de cotações e o valor a partir do qual vale. _[DOC-032 · §09 Validar · ITM-00807]_
  - **Atenção (leitura do Claude):** item 5: as faixas de aprovação caíram; só o número mínimo de cotações e o valor a partir do qual vale seguem em aberto.
- `UNI-00585` `PEND` `COM` `decisao-diego` Resposta do cliente à proposta: no E15 do fluxo geral (DOC-030, 30/10) aceite vira pré-contrato, pedido de ajuste é feito pelo assistente e reenviado pelo sistema, sem resposta segue a régua de lembretes do sistema e recusa vai a E16; no fluxo do assistente comercial (DOC-011, 29/10) o assistente cobra o aceite até a resposta (ACM-E5), sem resposta há nova cobrança e, se o cliente pediu ajuste, a proposta volta ao vendedor e a Custos (ACM-E6). _[DOC-030 · §03 E15 · ITM-00717]_
  - **Decisão (Decidido por Diego):** O assistente cobra o aceite, e o pedido de ajuste volta ao vendedor e a Custos. **Em aberto:** Quantas cobranças e com que frequência. Registro: `REGISTROS/decisao__20261104-1043-resposta-proposta-uhio.md`
  - Requisitos separados deste item: `UNI-00585.01`
- `UNI-00880` `PEND` `COM` `decisao-diego` Envio e validade da proposta: o fluxo V03 faz o sistema enviar com validade de 7 dias e expiração no 3º aviso; o SET06 faz o vendedor enviar (inferido); o modelo de proposta diz 15 dias. _[DOC-090 · §3 item 4 · ITM-01564]_
  - **Decisão (Decidido por Diego):** O assistente envia, só com autorização do vendedor que fez a proposta. Validade de 7 dias. **Em aberto:** A expiração no 3º aviso continua? Registro: `REGISTROS/decisao__20261104-1043-envio-proposta-lm49.md`
- `UNI-00911` `PEND` `COM` `pendencia-parcial` Proposta: arquitetos por hora registram horas por projeto no Portal e o relatório chega ao Financeiro no fechamento do mês; pontos da remuneração dos arquitetos seguem não informados. _[DOC-010 · §08, FIN-E13 · ITM-00255]_
  - **Atenção (leitura do Claude):** item 20: Pagamento por hora está decidido. Mas o item diz que os arquitetos registram as horas, e a decisão diz que a Érika estima e atualiza.
- `UNI-00914` `PEND` `COM` `pendente` Prazo para finalizar a proposta depois que o preço chega (ACM-E2) não foi informado. _[DOC-011 · §06 item 2 · ITM-00283]_
  - Requisitos separados deste item: `UNI-00914.01`
- `UNI-00915` `PEND` `COM` `pendencia-parcial` Cadência da cobrança do aceite e número de cobranças sem resposta antes de subir ao vendedor ou ao Diego não foram informados. _[DOC-011 · §06 item 3 · ITM-00284]_
  - **Atenção (leitura do Claude):** item 4: A decisão diz quem cobra. A cadência segue em aberto, e a Especificação (ITM-01861) sugere a cada 3 dias. / item 24: A decisão diz quem recebe o aviso no prazo limite. A cadência das cobranças segue em aberto.
  - Requisitos separados deste item: `UNI-00915.01`
- `UNI-00917` `PEND` `COM` `pendente` Prazo máximo de retorno ao cliente nas questões burocráticas (por exemplo, 24 horas) não foi informado. _[DOC-011 · §06 item 6 · ITM-00286]_
- `UNI-00970` `PEND` `COM` `pendente` Na G2 da entrada via WhatsApp não foram informados o prazo de resposta da Diretoria nem como se calcula o custo de urgência. _[DOC-031 · Validar, G2 · ITM-00760]_
- `UNI-01026` `PEND` `COM` `pendente` `conf:media` Confirmar com o contador a parte do DAS que corresponde a CBS/IBS no anexo da empresa (o padrão de 40% é só ponto de partida). _[DOC-036 · §Para a equipe validar · ITM-01205]_
- `UNI-01027` `PEND` `COM` `pendente` `conf:media` Verificar se cenografia ou montagem de estande se enquadra em redução de alíquota da LC 214 para eventos ou produção cultural. _[DOC-036 · §Para a equipe validar · ITM-01206]_
- `UNI-01028` `PEND` `COM` `pendente` `conf:media` Locação de bens móveis hoje não paga ISS e com a reforma entra no IBS/CBS; confirmar a alíquota aplicável. _[DOC-036 · §Para a equipe validar · ITM-01207]_
- `UNI-01029` `PEND` `COM` `pendente` `conf:media` Confirmar a janela de opção pelo Simples híbrido para valer em 2027. _[DOC-036 · §Para a equipe validar · ITM-01208]_
- `UNI-01099` `PEND` `COM` `inferido` `conf:media` Os 200 m² mínimos são a soma de todos os estandes da Imagine na feira; clientes Pacote podem ficar fora do mínimo. _[DOC-007 · §08 COM-E2 · ITM-00138]_
- `UNI-01590` `PEND` `COM` `pendencia-parcial` Remuneração de arquitetos e freelancers, base do percentual e valor da hora de um arquiteto, e momento de pagar a comissão seguem em aberto. _[DOC-091 · §11 Pendências · ITM-02151]_
  - **Atenção (leitura do Claude):** item 20: Pagamento por hora está decidido. Seguem em aberto o valor da hora, os freelancers e o momento da comissão.
- `UNI-00924` `PEND` `CRD` `pendente` CRD-E9: não foi informado o prazo para cada setor devolver o documento ao Credenciamento após a notificação. _[DOC-013 · §06 item 5 (CRD-E9) · ITM-00385]_
  - Requisitos separados deste item: `UNI-00924.01`
- `UNI-00927` `PEND` `CRD` `pendente` CRD-E7: não foi informado quantos dias antes de cada prazo da feira o Portal deve alertar. _[DOC-013 · §06 item 8 (CRD-E7) · ITM-00388]_
- `UNI-00928` `PEND` `CRD` `pendente` CRD-E13: não foi informado o prazo da Maitê para conferir e dar o ok final. _[DOC-013 · §06 item 9 (CRD-E13) · ITM-00389]_
  - Requisitos separados deste item: `UNI-00928.01`, `UNI-00928.02`
- `UNI-00907` `PEND` `CRM` `pendente` Faltam informar os nomes das pessoas de cada papel do setor de prospecção, as metas do setor (leads por mês, conversão) e a frequência de publicação por canal; o nome do CRM já tem resposta no ERP-001: RD Station. _[DOC-006 · §9 O que ainda falta · ITM-00132]_
  - Requisitos separados deste item: `UNI-00907.01`
- `UNI-00892` `PEND` `CUS` `pendente` Alíquotas seguem pendentes no ERP-001. _[DOC-002 · §45 Pendências · ITM-00057]_
- `UNI-00909` `PEND` `CUS` `pendente` Não foi informado de onde vêm os preços de mercado (fornecedores, cotações). _[DOC-009 · §07, CUS-E12 · ITM-00222]_
- `UNI-01629` `PEND` `CUS` `pendente` Preço de venda: regra definida, mas faltam as alíquotas exatas de cada imposto. _[DOC-091 · §11 Pendências · ITM-02147]_
- `UNI-00933` `PEND` `CVI` `pendente` CVI-E1: não foi informada a data limite para o cliente publicar os arquivos pela primeira vez, no cronograma. _[DOC-014 · §07 item 6 (CVI-E1) · ITM-00433]_
  - Requisitos separados deste item: `UNI-00933.01`
- `UNI-00934` `PEND` `CVI` `pendente` CVI-E2: a Comunicação visual precisa definir os critérios técnicos que a IA confere (formatos, resolução mínima, modo de cor). _[DOC-014 · §07 item 7 (CVI-E2) · ITM-00434]_
- `UNI-00895` `PEND` `EVT` `pendente` `conf:media` Falta definir o modelo da taxa de gestão. _[DOC-002 · §45 Pendências · ITM-00059]_
  - Requisitos separados deste item: `UNI-00895.01`
- `UNI-00895.01` `REG-PRECO` `EVT` `pendente` `conf:media` A Imagine recebe taxa de gestão (valor fixo ou percentual sobre o orçamento gerenciado) além dos serviços próprios, definida em contrato. _[DOC-091 · §40 Produção de Evento, remuneração da Imagine e pendências · ITM-02444 · parte de UNI-00895]_
- `UNI-00938` `PEND` `EXP` `pendente` EXP-E4: não foi informado o prazo para a produção corrigir uma peça reprovada na expedição. _[DOC-015 · §07 EXP-E4 · ITM-00460]_
  - Requisitos separados deste item: `UNI-00938.01`
- `UNI-01070` `PEND` `EXP` `pendente` Termo de Entrega de PDV: prazos de reclamação por defeitos não visíveis e de garantia de produção e montagem estão em branco no modelo (dias a preencher); a garantia não cobre desgaste, mau uso, umidade ou sol. _[DOC-060 · §6 Condições · ITM-01318]_
- `UNI-00950` `PEND` `FID` `pendente` Regras de pontos, níveis e recompensas são sugestões e precisam ser validadas com o Financeiro (custo) antes de lançar. _[DOC-018 · §07 item 9 (MKT-E14, E15) · ITM-00566]_
- `UNI-00953` `PEND` `INC` `pendente` Falta definir o tamanho do bônus; a sugestão é uma fatia do lucro acima da meta (exemplo 10% do excedente), com teto por pessoa. _[DOC-023 · §08 Validar antes de implantar, item 2 · ITM-00627]_
- `UNI-00956` `PEND` `INC` `pendente` Confirmar se os pesos sugeridos (prazo 40%, qualidade 35%, eficiência 25%; setor 50%, feira 30%, individual 20%) estão bons. _[DOC-023 · §08 Validar antes de implantar, item 5 · ITM-00630]_
- `UNI-00957` `PEND` `INC` `pendente` Definir o período de apuração (feira, trimestre ou ambos); a sugestão é prêmio por trimestre e PLR por semestre. _[DOC-023 · §08 Validar antes de implantar, item 6 · ITM-00631]_
- `UNI-00900` `PEND` `LOG` `pendente` `conf:media` Pendentes: capacidades dos veículos, margem das molduras de LED e rendimentos de tintas. _[DOC-002 · §45 Pendências · ITM-00064]_
  - Requisitos separados deste item: `UNI-00900.01`, `UNI-00900.02`
- `UNI-00947` `PEND` `MKT` `pendente` MKT-E8: não foi informado o prazo para o material editado entrar no acervo depois da feira. _[DOC-018 · §07 item 6 (MKT-E8) · ITM-00563]_
- `UNI-00948` `PEND` `MKT` `pendente` MKT-E11: confirmar o prazo padrão de acesso liberado (sugestão de 7 dias) e se usa marca d'água. _[DOC-018 · §07 item 7 (MKT-E11) · ITM-00564]_
- `UNI-00949` `PEND` `MKT` `pendente` MKT-E13: não foi informado o orçamento do brinde por cliente ou por faixa de contrato. _[DOC-018 · §07 item 8 (MKT-E13) · ITM-00565]_
- `UNI-01114` `PEND` `MKT` `inferido` A numeração de Marketing como setor 15 é inferida e está a confirmar com a lista PLANDEM_SET-001. _[DOC-018 · §07 item 1 · ITM-00558]_
- `UNI-00973` `PEND` `PLA` `pendente` A tabela de tempo de produção por tipo de item, que substituirá a regra fixa da E20, está a definir. _[DOC-031 · Validar · ITM-00764]_
- `UNI-00908` `PEND` `PLC` `pendente` Não foi informado em que mês o time de vendas fecha o planejamento do ano seguinte. _[DOC-007 · §08 COM-E1 a E5 · ITM-00162]_
- `UNI-01113` `PEND` `POS` `a-conferir` Numeração: Pós-feira como setor 14; inferido, a confirmar com a lista PLANDEM_SET-001. _[DOC-017 · §07 item 7 · ITM-00535]_
  - **Atenção (leitura do Claude):** item 22: Traz Pós-feira como setor 14. Os números estão em aberto.
- `UNI-01110` `PEND` `PRD` `inferido` Numeração: os setores produtivos ficam como setor 09, com um documento para todos; marcado como inferido. _[DOC-014 · §07 item 1 · ITM-00428]_
- `UNI-00983` `PEND` `PRJ` `pendente` `conf:media` `rotina-anterior` Em 21/10, indicadores formais (KPIs) não estão definidos; usam-se de fato número de itens do memorial, erros de fórmula 0, cobertura da MATRIZ 100%, versões por entregável e itens A CONFIRMAR em aberto. _[DOC-033 · §3.3 Indicadores · ITM-00918]_
- `UNI-01102` `PEND` `PRJ` `a-conferir` `conf:media` O prazo de 1 dia para a prévia (G2) é aplicado por analogia com G1 e G3 (inferido). _[DOC-008 · §08, G2 · ITM-00179]_
  - **Atenção (leitura do Claude):** item 2: Liga-se ao ponto em aberto. O prazo de 1 dia da prévia foi inferido, e a Especificação (ITM-01691) repete esse prazo.
  - Requisitos separados deste item: `UNI-01102.01`, `UNI-01102.02`, `UNI-01102.03`, `UNI-01102.04`
- `UNI-00886` `PEND` `TRP` `decisao-diego` Códigos de documentos: o IMG-PAD-003 usa PRJ-001 (detalhamento), FIC e ALT; o SET03 usa DET e FT; o SET04 usa ADI; e G1 tem dois significados (fluxo V03 e SET03). _[DOC-090 · §3 item 13 · ITM-01570]_
  - **Decisão (Decidido em parte):** Detalhamento técnico usa DT, ficha técnica usa FT e prévia e render usam PRJ-002. Mood board e storytelling ficam sem sigla, e mudanças não têm abreviação. **Em aberto:** Significados de G1 e G2. Registro: `REGISTROS/decisao__20261104-1043-codigos-documentos-qukm.md`
- `UNI-00889.01` `PEND` `TRP` `a-conferir` `conf:media` Os setores 10 Expedição e 11 Logística não têm documento e estão a mapear; hoje fazem parte do SET12. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento; Respostas do Diego, Setores · ITM-01585 · parte de UNI-00889]_
  - **Decisão (Ver decisão do item 22):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`
- `UNI-00928.02` `PEND` `TRP` `pendente` `conf:media` Prazos não definidos: finalizar a proposta, cadência de cobrança do aceite, devolução de documentos ao Credenciamento, ok da Maitê, data limite de arquivos e conteúdos do cliente, e correção de peça reprovada na expedição. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02152 · parte de UNI-00928]_
- `UNI-00980` `PEND` `TRP` `pendente` `rotina-anterior` Em 21/10, prazos e SLAs formais entre etapas e SLAs internos (memorial, detalhamento, custo) não estão definidos; só existem datas-limite de eventos. _[DOC-033 · §2 abertura e §2.8 · ITM-00828]_

## Pode seguir: depende de conteúdo ou texto (6)

- `UNI-00679.03` `PEND` `COM` `pendente` Os modelos detalhados de briefing por categoria ainda estão a desenvolver. _[DOC-091 · §41 Categorias de serviço, briefing específico por categoria (Modelos detalhados a desenvolver) · ITM-02457 · parte de UNI-00679]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-00910` `PEND` `COM` `pendente` Não foi informado quem cria e revisa o modelo padrão de contrato (jurídico interno ou externo). _[DOC-010 · §08, FIN-E2 · ITM-00240]_
  - Requisitos separados deste item: `UNI-00910.01`
- `UNI-00905` `PEND` `CRM` `pendente` Não foi informado se o kit básico inclui algo além da apresentação (portfólio, cases, vídeo). _[DOC-005 · §05, PRO-E3 · ITM-00123]_
- `UNI-00945` `PEND` `MKT` `pendente` No ditado constou "100 pessoas"; entendeu-se "sem pessoas" para portfólio, a confirmar. _[DOC-018 · §07 item 3 (MKT-E5, E6) · ITM-00560]_
- `UNI-00887` `PEND` `TRP` `decisao-diego` `conf:media` Nome da empresa: "Imagine Arquitetura Efêmera" nos setores e na política, e "Imagine Espaços Criativos" no ERP e nos modelos. _[DOC-090 · §3 item 14 · ITM-01571]_
  - **Decisão (Decidido por Diego):** O nome usado é só "IMAGINE". **Em aberto:** Contratos usam a razão social? Registro: `REGISTROS/decisao__20261104-1043-nome-empresa-cgwj.md`
- `UNI-00978` `PEND` `TRP` `pendencia-parcial` `conf:media` Validar PRJ-002 para apresentação de prévia e render, mantendo PRJ-001 como detalhamento para não renomear arquivos antigos. _[DOC-032 · §09 Validar · ITM-00810]_
  - **Atenção (leitura do Claude):** item 12: A decisão confirma PRJ-002 para prévia e render, mas usa DT para o detalhamento, e não PRJ-001.

## Não trava o desenvolvimento (25)

- `UNI-00902` `PEND` `BIB` `pendente` `conf:baixa` As primeiras gravações de padrões (Marília) ainda não foram feitas. _[DOC-002 · §45 Pendências · ITM-00066]_
- `UNI-00919` `PEND` `COM` `pendente` Painel do assistente é proposta para o Portal e precisa de confirmação de Diego. _[DOC-011 · §06 item 8 · ITM-00288]_
- `UNI-00898.01` `REG-LEGAL` `CRM` `pendente` `conf:media` A gravação de áudio da abordagem em feira precisa de validação LGPD com a Maitê. _[DOC-091 · §19 Prospecção na feira pelo app, registro por estande, passo 4 · ITM-02239 · parte de UNI-00898]_
- `UNI-00941` `PEND` `EXP` `pendente` Ajuste pendente no EXP-E12 do SET12: no SET13 o QR code é lido só ao desembalar e a instalação é registrada pelo checklist (MON-E5); entra na próxima revisão do SET12. _[DOC-016 · §08 Ajuste em outro documento · ITM-00504]_
- `UNI-00955` `PEND` `INC` `pendente` Verificar se a convenção coletiva do sindicato da categoria já prevê PLR antes de montar a comissão. _[DOC-023 · §08 Validar antes de implantar, item 4 · ITM-00629]_
- `UNI-00958` `PEND` `INC` `pendente` Falta validação jurídica e contábil da forma legal de cada pagamento pela Maitê e pela contabilidade. _[DOC-023 · §08 Validar antes de implantar, item 7 · ITM-00632]_
  - Requisitos separados deste item: `UNI-00958.01`
- `UNI-00958.01` `REG-LEGAL` `INC` `pendente` `conf:media` Regras de fidelidade e indicação e o desenho legal do incentivo dependem de validação financeira, jurídica e contábil. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02155 · parte de UNI-00958]_
- `UNI-00904` `PEND` `MKT` `pendente` Quem mantém a pauta e a linha de comunicação e a frequência de atualização não foi informado. _[DOC-005 · §05, PRO-E1 · ITM-00122]_
- `UNI-00906` `PEND` `MKT` `pendente` Falta informar quem define e mantém a pauta e a linha de comunicação e com que frequência (inferido: marketing, com aprovação do Diego). _[DOC-006 · §8 Ainda não informado, item 1 · ITM-00131]_
  - Requisitos separados deste item: `UNI-00906.01`
- `UNI-00944` `PEND` `MKT` `pendente` Não foi informado quem faz a captação: equipe interna de marketing, fotógrafo e videomaker contratados, ou os dois. _[DOC-018 · §07 item 2 · ITM-00559]_
- `UNI-00940` `PEND` `PLA` `pendente` Ajuste pendente no SET07: a lista de peças que voltam e das descartadas na desmontagem deve ser feita no planejamento de produção; entra na próxima revisão do SET07. _[DOC-016 · §08 Ajuste em outro documento · ITM-00503]_
- `UNI-01397.02` `PEND` `PRD` `pendente` O nome do responsável de elétrica em São Paulo (equipe terceirizada) está a definir. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED, passo 2 · ITM-02382 · parte de UNI-01397]_
- `UNI-00885` `PEND` `TRP` `decisao-diego` O fluxo geral V03 está desatualizado ao marcar Compras, Logística e Pós-feira como "a ditar": o ERP-001 já define responsáveis de Compras e Logística, o SET14 existe e Marketing não aparece no organograma. _[DOC-090 · §3 item 12 · ITM-01569]_
  - **Decisão (Decidido em parte):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-00889` `PEND` `TRP` `pendente` `conf:media` Setores 02 (Comercial), 10, 11 e 14 (Pós-feira) constam como não recebidos no índice; 02 e 14 são citados em outros fluxos (COM-E10, COM-E15, POS-E8). _[DOC-001 · §2 Setores mapeados, linhas 02, 10, 11 e 14 · ITM-00010]_
  - Requisitos separados deste item: `UNI-00889.01`
- `UNI-00890` `PEND` `TRP` `pendente` `conf:media` Documentos de referência citados e ainda não recebidos: PLANDEM_FLX-001 (fluxo geral) e PLANDEM_SET-001 (lista e numeração dos setores). _[DOC-001 · §2 Setores mapeados, nota abaixo da tabela · ITM-00011]_
  - Requisitos separados deste item: `UNI-00890.01`
- `UNI-00890.01` `PEND` `TRP` `pendente` Documentos-mestres PLANDEM_FLX-001 e PLANDEM_SET-001 não estão na pasta, e o índice ainda marca os setores 02 e 14 como não recebidos. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02146 · parte de UNI-00890]_
- `UNI-00898` `PEND` `TRP` `pendente` Validações pendentes da Maitê: indicação, LGPD e política de dispositivos. _[DOC-002 · §45 Pendências · ITM-00062]_
  - Requisitos separados deste item: `UNI-00898.01`
- `UNI-00921` `PEND` `TRP` `a-conferir` `conf:media` Ajuste pendente entre documentos: as versões de Projetos (SET03), Custos (SET04) e Financeiro (SET05) devem receber a regra do código único na próxima revisão de cada uma. _[DOC-012 · §09 Validar antes de implantar · ITM-00346]_
  - **Atenção (leitura do Claude):** item 9: Pede para levar a regra do código único aos documentos. Agora a regra é o formato novo.
- `UNI-00951` `PEND` `TRP` `pendente` A validação jurídica da política pela Maitê está pendente antes de entrar em vigor. _[DOC-022 · Cabeçalho e §9 Checklist · ITM-00605]_
  - Requisitos separados deste item: `UNI-00951.01`
- `UNI-00951.01` `TEC` `TRP` `pendente` `conf:media` Checklist de aquisição: notebooks e celulares corporativos para Comercial, Compras e Operação, WhatsApp Business por usuário, integração ao ERP, termo assinado e validação jurídica da Maitê. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo, checklist de aquisição · ITM-02223 · parte de UNI-00951]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-00967` `PEND` `TRP` `pendente` O agrupamento dos setores em áreas é proposta de leitura para validação; os nomes dos setores vêm dos ditados. _[DOC-030 · §01 Organograma (lead) · ITM-00674]_
- `UNI-00977` `PEND` `TRP` `pendente` Compras, logística e pós-feira não foram ditados; os documentos das fases 6 e 9 são proposta de boa prática. _[DOC-032 · §09 Validar · ITM-00809]_
- `UNI-00979` `PEND` `TRP` `pendente` Confirmar a transição: até o Portal ter as telas, os modelos novos nascem em Excel ou Word com o carimbo comum. _[DOC-032 · §09 Validar · ITM-00811]_
- `UNI-01106` `PEND` `TRP` `inferido` `conf:media` Codificação de documentos, biblioteca e locações e estrutura de pastas são propostas a partir do padrão já usado nos arquivos do Drive. _[DOC-008 · §08 Codificação · ITM-00202]_
- `UNI-01420` `PEND` `TRP` `proposto` A maioria dos 13 fluxos de setor e o Programa de Incentivo ainda está em versão de proposta, sem aprovação final registrada. _[DOC-091 · Abertura · ITM-01581]_

