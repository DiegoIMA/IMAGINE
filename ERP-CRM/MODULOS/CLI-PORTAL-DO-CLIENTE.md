---
id: ERP-MOD-CLI
titulo: Módulo Portal do cliente
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# CLI · Portal do cliente

27 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (2)

- `UNI-00360` `FLX-MICRO` `proposto` Vendedor inicia o atendimento e envia o login do Portal ao cliente. _[DOC-007 · COM-E11 · ITM-00153]_
- `UNI-00581.02` `FLX-MICRO` `proposto` `conf:media` Item reprovado volta para Projetos e Produção ajustarem, e uma nova amostra é enviada para validação. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02165 · parte de UNI-00581]_

## Pontos de decisão (1)

- `UNI-00581.01` `FLX-DECISAO` `proposto` `conf:media` O cliente aprova ou reprova cada item no Portal, com comentário ao reprovar. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02164 · parte de UNI-00581]_

## Notificações (3)

- `UNI-00782.01` `FLX-NOTIF` `proposto` Validação de amostras (etapa obrigatória): na data do cronograma reverso do Planejamento, o sistema notifica o cliente com a lista de itens e foto da amostra para o ok. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02163 · parte de UNI-00782]_
- `UNI-00782.06` `FLX-NOTIF` `proposto` O cliente é notificado (Portal e WhatsApp) antes da data limite e no dia em que o projeto congela. _[DOC-091 · §12 Experiência do cliente no Portal, congelamento do projeto · ITM-02180 · parte de UNI-00782]_
- `UNI-01455` `FLX-NOTIF` `proposto` `conf:media` Push e e-mail para o cliente. _[DOC-091 · §9 Integrações · ITM-02138]_

## Módulos e telas (11)

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

## Perfis e responsáveis (1)

- `UNI-00119.01` `ESC-PERFIL` `proposto` Perfil Cliente, por projeto: acesso à aba do cliente. _[DOC-091 · §8 Perfis de acesso, Cliente · ITM-02126 · parte de UNI-00119]_

## Entidades e campos (2)

- `UNI-00782.03` `ESC-DADOS` `proposto` Formulário pré-evento do cliente: responsáveis do cliente, validador da montagem, cronograma do cliente na feira, fornecedores terceirizados e itens de cortesia. _[DOC-091 · §12 Experiência do cliente no Portal, formulário pré-evento · ITM-02169 · parte de UNI-00782]_
- `UNI-01431` `ESC-DADOS` `proposto` Arquivo do cliente: arte ou conteúdo, resultado da verificação da IA, prova e validação. _[DOC-091 · §4 Entidades, Arquivo do cliente (CVI, AUD) · ITM-01635]_

## Prazos (1)

- `UNI-00782.04` `REG-PRAZO` `proposto` O cliente preenche o formulário pré-evento no Portal até 15 dias antes do início da feira, com lembrete antes do prazo. _[DOC-091 · §12 Experiência do cliente no Portal, formulário pré-evento · ITM-02170 · parte de UNI-00782]_

## Acesso e visibilidade (1)

- `UNI-00119` `REG-ACESSO` `vigente` Aba do cliente usa o login recebido do vendedor; se a pessoa do cliente mudar durante a feira, o Portal cria outro login só para a etapa de montagem e feira. _[DOC-016 · §05 Login · ITM-00497]_
  - Requisitos separados deste item: `UNI-00119.01`

## Códigos e rastreabilidade (1)

- `UNI-01670` `REG-CODIGO` `vigente` `conf:media` Versões dos arquivos e correções ficam registradas, e correções frequentes do mesmo tipo geram orientação para o cliente no Portal. _[DOC-091 · §38 Criação Gráfica, Histórico · ITM-02420]_

## Cálculos e critérios (1)

- `UNI-00782.05` `REG-CALC` `proposto` Congelamento: o sistema calcula a data limite de alterações a partir do carregamento (D0); padrão D-10, configurável por projeto. _[DOC-091 · §12 Experiência do cliente no Portal, congelamento do projeto · ITM-02179 · parte de UNI-00782]_

## Regras operacionais (3)

- `UNI-00011.05` `REG-OPER` `proposto` `conf:media` Itens de cortesia: a Imagine aponta no Portal os itens que ficam com o cliente, o cliente aceita e retira no evento; depois da retirada a responsabilidade é dele e o aceite fica registrado. _[DOC-091 · §12 Experiência do cliente no Portal, itens de cortesia e retirada · ITM-02172 · parte de UNI-00011]_
- `UNI-00782.02` `REG-OPER` `proposto` Nenhuma ficha de item com amostra começa a produção sem o ok do cliente registrado. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02168 · parte de UNI-00782]_
- `UNI-00782.07` `REG-OPER` `proposto` Após o congelamento o Portal bloqueia novos pedidos de alteração e adicional; exceção só com aprovação do Diego, registrada no sistema. _[DOC-091 · §12 Experiência do cliente no Portal, congelamento do projeto · ITM-02182 · parte de UNI-00782]_

