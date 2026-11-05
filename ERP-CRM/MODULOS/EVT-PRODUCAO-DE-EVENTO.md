---
id: ERP-MOD-EVT
titulo: Módulo Produção de evento
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# EVT · Produção de evento

17 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (9)

- `UNI-00271` `FLX-MACRO` `vigente` Fases da produção de evento: criação, planejamento (cronograma mestre, orçamento, responsabilidades, riscos), projetos (arquitetônico, elétrico, PPCI, estrutural com engenheiro), documentos e licenças, contratação, controle, operação e encerramento. _[DOC-002 · §43 Produção de evento · ITM-00050]_
  - Requisitos separados deste item: `UNI-00271.01`, `UNI-00271.02`, `UNI-00271.03`, `UNI-00271.04`, `UNI-00271.05`, `UNI-00271.06`, `UNI-00271.07`, `UNI-00271.08`
- `UNI-00271.01` `FLX-MACRO` `proposto` A fase de Criação do módulo Produção de Evento cobre conceito, briefing, identidade do evento e experiência do público. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 1 · ITM-02434 · parte de UNI-00271]_
- `UNI-00271.02` `FLX-MACRO` `proposto` A fase de Planejamento cobre cronograma mestre (pré-produção, montagem, evento, desmontagem), orçamento geral por rubrica, matriz de responsabilidades e mapa de riscos. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 2 · ITM-02435 · parte de UNI-00271]_
- `UNI-00271.03` `FLX-MACRO` `proposto` A fase de Projetos cobre arquitetônico, elétrico, PPCI, estrutural com engenheiro (ART/RRT), layout, acessibilidade, comunicação visual, audiovisual e demais exigidos pelo local e órgãos. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 3 · ITM-02436 · parte de UNI-00271]_
- `UNI-00271.04` `FLX-MACRO` `proposto` A fase de Documentos e licenças cobre alvarás, Bombeiros, prefeitura, ECAD, seguros, laudos e manuais do evento para fornecedores. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 4 · ITM-02437 · parte de UNI-00271]_
- `UNI-00271.05` `FLX-MACRO` `proposto` A fase de Contratação cobre cotação, escolha e contrato de cada fornecedor, com escopo, prazos, documentos exigidos e forma de pagamento (pela Imagine ou direto pelo cliente). _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 5 · ITM-02438 · parte de UNI-00271]_
- `UNI-00271.06` `FLX-MACRO` `proposto` A fase de Controle cobre cronograma integrado com tarefas da Imagine e dos fornecedores, checklist de entregas, acompanhamento de pagamentos feitos pelo cliente e reuniões e atas no sistema. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 6 · ITM-02440 · parte de UNI-00271]_
- `UNI-00271.07` `FLX-MACRO` `proposto` A fase de Operação cobre roteiro minuto a minuto, credenciamento de equipes, comunicação no dia, plantão e ocorrências registradas no app com foto. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 7 · ITM-02441 · parte de UNI-00271]_
- `UNI-00271.08` `FLX-MACRO` `proposto` A fase de Encerramento cobre desmontagem, devoluções, pesquisa de satisfação, relatório final ao cliente e avaliação de cada fornecedor. _[DOC-091 · §40 Produção de Evento, fases do escopo, fase 8 · ITM-02442 · parte de UNI-00271]_

## Módulos e telas (3)

- `UNI-00685.01` `ESC-MODULO` `proposto` O módulo Produção de Evento atende projetos em que o cliente contrata a Imagine para a gestão do evento inteiro, misturando serviços da Imagine e de outras empresas sob gerenciamento da Imagine. _[DOC-091 · §40 Produção de Evento, gestão completa · ITM-02430 · parte de UNI-00685]_
- `UNI-00791` `ESC-MODULO` `vigente` O Portal mostra o cronograma e o status dos fornecedores na produção de evento. _[DOC-002 · §43 Produção de evento · ITM-00051]_
- `UNI-01571` `ESC-MODULO` `vigente` A categoria Produção de evento abre o módulo com cronograma mestre, projetos complementares (elétrico, PPCI, estrutural), documentos e licenças, fornecedores gerenciados e taxa de gestão. _[DOC-091 · §41 Categorias de serviço, Produção de evento · ITM-02449]_

## Entidades e campos (1)

- `UNI-00685` `ESC-DADOS` `vigente` Briefing de Produção de evento (projeto-mãe): evento, escopo Imagine, projetos exigidos, terceiros (quem contrata e paga), documentos, orçamento com taxa de gestão, governança e operação. _[DOC-019 · Parte B, 6 Produção de evento · ITM-00574]_
  - Requisitos separados deste item: `UNI-00685.01`

## Preço, margem e comissão (1)

- `UNI-00895.01` `REG-PRECO` `pendente` `conf:media` A Imagine recebe taxa de gestão (valor fixo ou percentual sobre o orçamento gerenciado) além dos serviços próprios, definida em contrato. _[DOC-091 · §40 Produção de Evento, remuneração da Imagine e pendências · ITM-02444 · parte de UNI-00895]_

## Regras operacionais (1)

- `UNI-00198` `REG-OPER` `vigente` Produção de evento é quando o cliente contrata a Imagine para gerir o evento inteiro ; a remuneração é por taxa de gestão. _[DOC-002 · §43 Produção de evento · ITM-00047]_

## Pendências (2)

- `UNI-00895` `PEND` `pendente` `conf:media` Falta definir o modelo da taxa de gestão. _[DOC-002 · §45 Pendências · ITM-00059]_
  - Requisitos separados deste item: `UNI-00895.01`
- `UNI-01672` `PEND` `pendente` Estão pendentes o responsável pelo módulo de Produção de Evento e o modelo da taxa de gestão. _[DOC-091 · §40 Pendências · ITM-02445]_

