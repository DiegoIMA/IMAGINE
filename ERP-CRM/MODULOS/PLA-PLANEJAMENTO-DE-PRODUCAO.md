---
id: ERP-MOD-PLA
titulo: Módulo Planejamento de produção
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# PLA · Planejamento de produção

67 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-8** (Entrada no Planejamento): O projeto entra no Planejamento a partir do aceite do cliente. Registro: `REGISTROS/decisao__20261104-1043-entrada-planejamento-w3f7.md`
- **item-11** (Prazos da produção): Dependem do projeto, mas são fixos a proposta até 30 dias e a produção até 20 dias antes do evento. Registro: `REGISTROS/decisao__20261104-1043-prazos-producao-70pq.md`

## Fluxo macro (10)

- `UNI-00280` `FLX-MACRO` `vigente` Planejamento, fase 1 Entrada da demanda: Érika recebe o projeto fechado, monta o cronograma reverso e publica o cronograma macro, notificando todos os setores. _[DOC-012 · §01 Fase 1 (PLA-E1 a E5) · ITM-00289]_
  - Requisitos separados deste item: `UNI-00280.01`
- `UNI-00280.01` `FLX-MACRO` `proposto` O cronograma reverso é publicado em até 3 dias (PLA-E4) e todos os setores são notificados (PLA-E5). _[DOC-091 · §2 Fluxo entre setores, item 6; §5 Planejamento, PLA-E4 e PLA-E5 · ITM-01593 · parte de UNI-00280]_
  - **Decisão (Ver decisão do item 8):** O projeto entra no Planejamento a partir do aceite do cliente. Registro: `REGISTROS/decisao__20261104-1043-entrada-planejamento-w3f7.md`
- `UNI-00281` `FLX-MACRO` `vigente` Planejamento, fase 2 Detalhamento técnico: itens são decupados e Projetos sobe o detalhamento técnico no Portal. _[DOC-012 · §01 Fase 2 (PLA-E6 a E8) · ITM-00290]_
- `UNI-00282` `FLX-MACRO` `vigente` Planejamento, fase 3 Reunião de produção: gera ata e resolve as pendências com o cliente até o projeto estar validado para produção. _[DOC-012 · §01 Fase 3 (PLA-E9 a E11) · ITM-00291]_
- `UNI-00283` `FLX-MACRO` `vigente` Planejamento, fase 4 Fichas e cronograma: fichas técnicas, tempo por ficha e cronograma interno com prazos por ficha e por setor. _[DOC-012 · §01 Fase 4 (PLA-E12 a E15) · ITM-00292]_
- `UNI-00284` `FLX-MACRO` `vigente` Planejamento, fase 5 Credenciamento, em paralelo desde o PLA-E4: o Portal gera o formulário do evento e o Credenciamento monta a pasta da feira. _[DOC-012 · §01 Fase 5 (PLA-E16 e E17) · ITM-00293]_
  - Requisitos separados deste item: `UNI-00284.01`
- `UNI-00284.01` `FLX-MACRO` `proposto` Em paralelo, o Credenciamento recebe o formulário do evento (PLA-E16 → CRD-E1) e o Marketing recebe as datas (MKT-E1). _[DOC-091 · §2 Fluxo entre setores, item 7 Em paralelo · ITM-01594 · parte de UNI-00284]_
- `UNI-00285` `FLX-MACRO` `vigente` Planejamento, fase 6 Acompanhamento da produção: peças concluídas com foto registradas no app, com dashboard e alertas de atraso ou erro. _[DOC-012 · §01 Fase 6 (PLA-E18 a E21) · ITM-00294]_
- `UNI-00286` `FLX-MACRO` `vigente` Planejamento, fase 7 Relatório de conformidade: relatório visual com fotos de cada item, enviado ao cliente quando ele pede; segue para expedição e logística. _[DOC-012 · §01 Fase 7 (PLA-E22 e E23) · ITM-00295]_
- `UNI-00322` `FLX-MACRO` `proposto` Planejamento e documentação: cronograma macro reverso, timeline do cliente, credenciamento, aprovação do projeto pelo evento, detalhamento técnico, fichas por setor e reunião de produção. _[DOC-030 · §02 Fase 5 Planejamento · ITM-00691]_

## Etapas do fluxo (19)

- `UNI-00402` `FLX-MICRO` `vigente` Planejamento, PLA-E2: puxa do Portal o cronograma de produção pré-definido, que é um modelo padrão para editar. _[DOC-012 · PLA-E2 · ITM-00297]_
- `UNI-00403` `FLX-MICRO` `vigente` Planejamento, PLA-E3: Érika monta o cronograma reverso, da data da feira para trás, com as datas de corte de cada etapa e de cada setor. _[DOC-012 · PLA-E3 · ITM-00298]_
- `UNI-00404` `FLX-MICRO` `vigente` Planejamento, PLA-E4: confirma o projeto e publica o cronograma macro no Portal. _[DOC-012 · PLA-E4 · ITM-00299]_
- `UNI-00405` `FLX-MICRO` `vigente` Planejamento, PLA-E6: decupa os itens e subitens do cronograma a partir do memorial e da prancha de amostras, indicando os setores que receberão cada item. _[DOC-012 · PLA-E6 · ITM-00301]_
- `UNI-00406` `FLX-MICRO` `vigente` Planejamento, PLA-E7: pede a Projetos o detalhamento técnico, com prazo de 3 dias. _[DOC-012 · PLA-E7 · ITM-00302]_
- `UNI-00407` `FLX-MICRO` `vigente` Planejamento, PLA-E9: reunião de produção com Érika, Eduardo, Marília, produção, arquiteto e comercial, realizada 2 dias depois do detalhamento. _[DOC-012 · PLA-E9 · ITM-00304]_
- `UNI-00408` `FLX-MICRO` `vigente` Planejamento, PLA-E10: a IA gera a ata da reunião a partir da gravação, com o que está conforme, dúvidas e observações a validar com o cliente. _[DOC-012 · PLA-E10 · ITM-00305]_
- `UNI-00409` `FLX-MICRO` `vigente` Planejamento, PLA-E12: a Produção (Marília) gera as fichas técnicas e as listas de materiais por IA no Portal, a partir do detalhamento. _[DOC-012 · PLA-E12 · ITM-00307]_
  - Requisitos separados deste item: `UNI-00409.01`, `UNI-00409.02`, `UNI-00409.03`
- `UNI-00409.01` `FLX-MICRO` `proposto` Planejamento, etapa PLA-E12: a Marília gera as fichas e as listas por IA, em cerca de 5 dias. _[DOC-091 · §5 Planejamento, PLA-E12; §7 Prazos (SLAs) · ITM-01888 · parte de UNI-00409]_
  - **Decisão (Ver decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00409.02` `FLX-MICRO` `proposto` Para item a produzir, o sistema gera automaticamente a ficha técnica de produção com o mesmo código (material, medidas, quantidade, setores da cadência), enviada ao Planejamento e à produção da unidade. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, destino de cada item, item a produzir · ITM-02306 · parte de UNI-00409]_
  - **Decisão (Ver decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00409.03` `FLX-MICRO` `proposto` A ficha técnica de cada item a produzir sai do detalhamento técnico, compilada pelo mesmo código do item. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, da ficha técnica à baixa, origem · ITM-02315 · parte de UNI-00409]_
  - **Decisão (Ver decisão do ponto 1):** O projeto entra no Planejamento a partir do aceite do cliente, mas o detalhamento técnico só começa depois do contrato assinado. **Em aberto:** O que o Planejamento faz entre o aceite e a assinatura. Como fica a janela de 25 dias (UNI-00084). Registro: `REGISTROS/decisao__20261104-1855-detalhamento-apos-contrato-nk6q.md`
- `UNI-00410` `FLX-MICRO` `vigente` Planejamento, PLA-E13: Eduardo prevê o tempo de cada ficha técnica, com complexidade e tempo por grupo de itens e por setor. _[DOC-012 · PLA-E13 · ITM-00308]_
  - Requisitos separados deste item: `UNI-00410.01`
- `UNI-00410.01` `FLX-MICRO` `proposto` Planejamento, etapa PLA-E13: o Eduardo prevê o tempo de cada ficha, em 2 dias. _[DOC-091 · §5 Planejamento, PLA-E13; §7 Prazos (SLAs) · ITM-01889 · parte de UNI-00410]_
- `UNI-00411` `FLX-MICRO` `vigente` Planejamento, PLA-E14: Érika monta o cronograma interno de produção com o vencimento de cada ficha em cada setor, em cadência (ex.: serralheria antes da pintura). _[DOC-012 · PLA-E14 · ITM-00309]_
- `UNI-00412` `FLX-MICRO` `vigente` Planejamento, PLA-E15: Érika publica o cronograma de produção, para que todos os setores vejam as suas datas. _[DOC-012 · PLA-E15 · ITM-00310]_
- `UNI-00617` `FLX-MICRO` `vigente` `conf:media` Cadência ilustrativa: serralheria entrega a estrutura 1 a 2 dias antes da pintura, depois marcenaria, e por fim qualidade e expedição, com datas do cronograma interno. _[DOC-012 · §05 Exemplo de cadência · ITM-00337]_
- `UNI-01530` `FLX-MICRO` `a-conferir` Planejamento, etapa PLA-E1: a Érika recebe o projeto fechado (memorial, prancha de amostras e formalização) e define a unidade de produção, Rio Grande do Sul ou São Paulo. _[DOC-091 · §5 07 Planejamento, PLA-E1 · ITM-01873]_
  - **Atenção (leitura do Claude):** item 8: Cita "formalização" no recebimento do projeto. Pode ser o contrato; o texto não diz.
- `UNI-01531` `FLX-MICRO` `proposto` Planejamento, etapa PLA-E11: o Comercial resolve as pendências com o cliente. _[DOC-091 · §5 07 Planejamento, PLA-E11 · ITM-01886]_
- `UNI-01674` `FLX-MICRO` `vigente` `conf:media` A Imagine produz no Rio Grande do Sul e em São Paulo; no PLA-E1 a Érika aponta onde o projeto será produzido. _[DOC-091 · §Respostas Unidade de produção · ITM-02054]_

## Pontos de decisão (2)

- `UNI-00562` `FLX-DECISAO` `vigente` Planejamento, PLA-E11: se tudo estiver em conformidade o projeto segue; se não, cria-se um checklist de itens a resolver, tratado pelo Comercial com o cliente, e a ata é atualizada. _[DOC-012 · PLA-E11 · ITM-00306]_
- `UNI-00563` `FLX-DECISAO` `vigente` Se a peça está no prazo e com qualidade, segue; se não, há alerta vermelho e relatório de erros, e Eduardo e Marília decidem refazer em caso de erro. _[DOC-012 · PLA-E20 · ITM-00315]_

## Notificações (2)

- `UNI-00603` `FLX-NOTIF` `vigente` Planejamento, PLA-E5: o Portal notifica todos os setores para que cada um já preveja a demanda que vem do projeto. _[DOC-012 · PLA-E5 · ITM-00300]_
- `UNI-01540` `FLX-NOTIF` `vigente` Sem resposta do cliente no prazo da validação de amostras, o sistema avisa o vendedor e o Planejamento, pois o atraso pode mexer no cronograma. _[DOC-091 · §12 Validação de amostras · ITM-02167]_

## Módulos e telas (3)

- `UNI-00007` `ESC-MODULO` `vigente` Planejamento e Produção usam cronograma reverso e modo TV por setor. _[DOC-003 · Mapa, cartão 07 Planejamento e Produção · ITM-00076]_
  - Requisitos separados deste item: `UNI-00007.01`, `UNI-00007.02`
- `UNI-00007.01` `ESC-MODULO` `proposto` Módulo Planejamento de produção (setor 07): cronograma reverso, decupagem, fichas, cronograma interno e dashboard. _[DOC-091 · §3 Módulos do ERP, Planejamento de produção · ITM-01607 · parte de UNI-00007]_
- `UNI-00007.02` `ESC-MODULO` `proposto` `conf:media` Cada setor produtivo (marcenaria, serralheria, pintura, elétrica, comunicação visual, tapeçaria e demais) tem sua tela de modo TV nas duas unidades. _[DOC-091 · §17 Política de dispositivos, telas do modo TV · ITM-02334 · parte de UNI-00007]_

## Perfis e responsáveis (7)

- `UNI-00023` `ESC-PERFIL` `vigente` Composição do processo: Érika conduz cronograma e reunião; Eduardo prevê tempos e responde pela produção geral com Marília, que gera fichas por IA; Suellen alimenta o relatório de conformidade. _[DOC-012 · §07 Composição no Portal · ITM-00342]_
  - Requisitos separados deste item: `UNI-00023.01`, `UNI-00023.02`
- `UNI-00023.01` `ESC-PERFIL` `proposto` Perfil Produção geral (Eduardo, Marília): fichas, tempos, erros e refação. _[DOC-091 · §8 Perfis de acesso, Produção geral · ITM-02119 · parte de UNI-00023]_
- `UNI-00035` `ESC-PERFIL` `proposto` Planejamento da produção (11) emite fichas técnicas, checklist, reunião e dashboard; setores produtivos (Pintura, Serralheria, Elétrica, Marcenaria, Tapeçaria, Comunicação visual) seguem o mesmo ciclo com foto e ok. _[DOC-030 · §05 Setores, cards 11 e 09–10 · ITM-00683]_
- `UNI-01392` `ESC-PERFIL` `vigente` Planejamento tem Érika como responsável no RS e Samanta em São Paulo. _[DOC-002 · §01 Estrutura e responsáveis · ITM-00014]_
  - Requisitos separados deste item: `UNI-01392.01`, `UNI-01392.02`
- `UNI-01392.01` `ESC-PERFIL` `vigente` Equipe de São Paulo, 11 pessoas: Planejamento = Samanta; Produção = Rômulo e Samanta; logística de frete e transporte = Samanta; coordenador geral de montagem = Rômulo. _[DOC-091 · Respostas do Diego, Equipe de São Paulo (11 pessoas) · ITM-02059 · parte de UNI-01392]_
- `UNI-01392.02` `ESC-PERFIL` `proposto` Perfil Planejamento (Érika): cronogramas, fichas e acessos da montagem. _[DOC-091 · §8 Perfis de acesso, Planejamento · ITM-02118 · parte de UNI-01392]_
- `UNI-01619` `ESC-PERFIL` `vigente` `conf:media` A Érika cria a planilha de horas planejadas de cada projeto. _[DOC-091 · §Respostas Regras da hora · ITM-02041]_

## Documentos gerados (3)

- `UNI-00050` `ESC-DOC` `substituido-parcial` Planejamento e documentação: CRO-002 cronograma macro e timeline do cliente, CRD-001 dossiê de credenciamento, PRJ-001 detalhamento, FIC fichas técnicas por setor e ATA-002 reunião de produção. _[DOC-032 · §04 Fase 5 · ITM-00778]_
  - **Continua valendo:** Existem cronograma macro, timeline do cliente, dossiê de credenciamento, detalhamento, fichas por setor e ata da reunião de produção.
  - **Mudou:** Detalhamento usa DT e ficha técnica usa FT (item-12).
- `UNI-00694` `ESC-DOC` `proposto` CRO-001/002 Cronograma reverso: data do evento como âncora, marcos (proposta, aceite, artes, compras, produção, amostras, carga, montagem), dono e data, folga e alerta, versão do cliente sem datas internas. _[DOC-032 · §06 CRO-001/002 · ITM-00796]_
- `UNI-00695` `ESC-DOC` `substituido-parcial` FIC-NNN Ficha técnica de produção: setor, IT atendidos, desenho do PRJ-001, MAT e quantidades, horas previstas, data de entrega, critério de qualidade, foto e ok por IT e horas reais. _[DOC-032 · §06 FIC-NNN · ITM-00797]_
  - **Continua valendo:** Os campos da ficha técnica de produção continuam.
  - **Mudou:** Usa FT no lugar de FIC e DT no lugar de PRJ-001 (item-12).

## Entidades e campos (1)

- `UNI-00663` `ESC-DADOS` `vigente` Ficha técnica: item e código, detalhamento técnico, lista de materiais, complexidade e tempo, sequência de setores, vencimento em cada setor, conclusão (foto, data, hora, usuário) e qualidade (ok ou erro com observação). _[DOC-012 · §05 Ficha técnica · ITM-00336]_

## Dashboards e indicadores (5)

- `UNI-00014.03` `ESC-INDIC` `proposto` `conf:media` A sala do Planejamento de produção tem painel com várias telas: o cronograma geral de produção e uma tela para cada setor, mostrando os itens de todos os setores ao mesmo tempo. _[DOC-091 · §17 Política de dispositivos, telas do modo TV · ITM-02335 · parte de UNI-00014]_
- `UNI-00222` `ESC-INDIC` `proposto` O previsto x realizado de cada etapa alimenta o histórico e o estudo de tempos e movimentos. _[DOC-030 · §06 Regras do portal · ITM-00727]_
- `UNI-00414` `ESC-INDIC` `vigente` Planejamento, PLA-E21: dashboard da produção em pizza com itens prontos versus faltantes e situação no prazo, antecipado ou atrasado. _[DOC-012 · PLA-E21 · ITM-00317]_
  - Requisitos separados deste item: `UNI-00414.01`
- `UNI-00414.01` `ESC-INDIC` `proposto` `conf:media` O responsável pelo planejamento da unidade vê no painel, em tempo real, os itens concluídos por setor, cada um com ficha e foto. _[DOC-091 · §5 Planejamento, PLA-E21; §10 Dashboards e indicadores, Produção · ITM-02320 · parte de UNI-00414]_
- `UNI-00664.01` `ESC-INDIC` `proposto` `conf:media` Dashboard de Produção: prontos × faltam, no prazo, antecipado, atrasado e erros. _[DOC-091 · §10 Dashboards e indicadores, Produção (PLA-E21) · ITM-02141 · parte de UNI-00664]_

## Prazos (10)

- `UNI-00079` `REG-PRAZO` `vigente` Planejamento, cronograma macro: deve ser publicado em até 3 dias após o aceite do cliente; o cronograma de produção detalhado sai no PLA-E15. _[DOC-012 · PLA-E4; §03 Marcos · ITM-00320]_
- `UNI-00081` `REG-PRAZO` `vigente` Planejamento, reunião de produção e ata: acontecem 2 dias depois do detalhamento, no bloco 2. _[DOC-012 · PLA-E9; §03 Marcos · ITM-00322]_
- `UNI-00083` `REG-PRAZO` `vigente` Produção, fichas técnicas e listas de materiais levam cerca de 5 dias; Eduardo prevê o tempo de cada ficha em 2 dias depois de receber as fichas. _[DOC-012 · PLA-E12 e E13; §03 Marcos · ITM-00324]_
- `UNI-00084` `REG-PRAZO` `a-conferir` Planejamento, janela de 25 dias da entrada da demanda ao carregamento, dividida em quatro blocos: 5 dias de detalhamento, 5 de reunião e comandas, 5 de compras e fichas, 10 de produção (D-25 a D0). _[DOC-012 · §03 Cronograma reverso · ITM-00325]_
  - **Atenção (leitura do Claude):** item 11: Usa 25 dias até o carregamento, com produção de D-10 a D0. A decisão fixa a produção até 20 dias antes do evento e deixa o resto depender do projeto.
- `UNI-00085` `REG-PRAZO` `vigente` Planejamento, quando a feira dá menos de 25 dias, os blocos de produção são os primeiros a encurtar; Érika ajusta as datas de cada projeto e publica. _[DOC-012 · §03 Cronograma reverso · ITM-00326]_
- `UNI-00088` `REG-PRAZO` `a-conferir` Planejamento, comandas iniciais e cronograma geral saem no bloco 2 (D-20 a D-16) e compras e recebimento de material no bloco 3 (D-15 a D-11). _[DOC-012 · §03 Marcos (FIN-E3, E4, E7 a E10) · ITM-00329]_
  - **Atenção (leitura do Claude):** item 11: Usa os blocos da mesma janela de 25 dias.
- `UNI-00097` `REG-PRAZO` `proposto` O cronograma reverso parte do prazo combinado com o cliente e distribui as datas nas agendas de cada setor. _[DOC-030 · §03 Prazos e E13 · ITM-00721]_
- `UNI-00099` `REG-PRAZO` `vigente` Ao entrar em Demandas aprovadas, a checagem de prazo e tempo hábil é refeita no cronograma macro da fase 5. _[DOC-031 · Início e fim, fim principal · ITM-00756]_
- `UNI-00221` `REG-PRAZO` `proposto` A timeline macro reversa é a referência única de datas para o cliente e para todos os setores. _[DOC-030 · §06 Regras do portal · ITM-00726]_
- `UNI-01613` `REG-PRAZO` `substituido-parcial` Janela de 25 dias até o carregamento (D0): bloco 1 D-25 a D-21 detalhamento; bloco 2 D-20 a D-16 reunião, comandas e cronograma; bloco 3 D-15 a D-11 compras e fichas; bloco 4 D-10 a D0 produção. _[DOC-091 · §5 07 Planejamento, janela de 25 dias · ITM-01900]_
  - **Continua valendo:** Os blocos 1 a 3 servem só de referência até Diego responder.
  - **Mudou:** O bloco 4, com produção de D-10 a D0, não vale: valem proposta até 30 dias e produção até 20 dias antes do evento (item-11). Como fica a janela de 25 dias está em aberto (ponto-1).

## Pendências (4)

- `UNI-00601` `PEND` `decisao-diego` Entrada do projeto no Planejamento: no ACM-E11 (DOC-011, 29/10) o contrato assinado é registrado no Portal e o Planejamento recebe o projeto fechado (PLA-E1); no PLA-E1 (DOC-012, 28/10) a Érika recebe o projeto fechado a partir do aceite do cliente (FIN-E1). _[DOC-011 · ACM-E11 · ITM-00275]_
  - **Decisão (Decidido por Diego):** O projeto entra no Planejamento a partir do aceite do cliente. Registro: `REGISTROS/decisao__20261104-1043-entrada-planejamento-w3f7.md`
- `UNI-00882` `PEND` `decisao-diego` Prazos da produção: o fluxo V03 diz proposta até 30 dias e produção até 20 dias antes do evento; o SET07 diz 25 dias até o carregamento, produção de D-10 a D0; o ERP-001 congela 10 dias antes. _[DOC-090 · §3 item 9 · ITM-01566]_
  - **Decisão (Decidido por Diego):** Dependem do projeto, mas são fixos a proposta até 30 dias e a produção até 20 dias antes do evento. Registro: `REGISTROS/decisao__20261104-1043-prazos-producao-70pq.md`
- `UNI-00940` `PEND` `pendente` Ajuste pendente no SET07: a lista de peças que voltam e das descartadas na desmontagem deve ser feita no planejamento de produção; entra na próxima revisão do SET07. _[DOC-016 · §08 Ajuste em outro documento · ITM-00503]_
- `UNI-00973` `PEND` `pendente` A tabela de tempo de produção por tipo de item, que substituirá a regra fixa da E20, está a definir. _[DOC-031 · Validar · ITM-00764]_

## Ideias sem compromisso (1)

- `UNI-00845` `IDEIA` `proposto` Substituir a regra fixa da E20 por tabela de tempo de produção por tipo de item, alimentada pelo histórico de previsto x realizado. _[DOC-031 · E20 e Validar · ITM-00746]_

