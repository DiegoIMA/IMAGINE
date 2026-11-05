---
id: ERP-REGRAS
titulo: Regras de negócio
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Regras de negócio

Lista de consulta: prazos, aprovações, preço, acesso, códigos, qualidade, legal, cálculos e regras operacionais. As decisões de Diego prevalecem.

## Prazos (73)

### CRM · CRM e prospecção (2)

- `UNI-00069` `REG-PRAZO` `proposto` Registrar no CRM os prazos de retorno, envio de material e recontato, combinados com o cliente a cada contato. _[DOC-005 · PRO-E14 · ITM-00118]_
- `UNI-00070` `REG-PRAZO` `proposto` Lead que perdeu o interesse recebe recontato agendado para a próxima feira dele. _[DOC-005 · PRO-E15 · ITM-00120]_

### DIS · Distribuição de clientes (1)

- `UNI-00071` `REG-PRAZO` `vigente` Sem resposta do Diego em 2 dias, o cliente segue para o vendedor sugerido. _[DOC-007 · COM-E9, §08 · ITM-00151]_

### PRJ · Projetos e memorial (5)

- `UNI-00080` `REG-PRAZO` `vigente` Projetos, detalhamento técnico e validação de documentos: prazo de 3 dias depois do pedido, no bloco 1. _[DOC-012 · PLA-E7 e E8; §03 Marcos · ITM-00321]_
- `UNI-01102.01` `REG-PRAZO` `proposto` A validação G1 das referências pelo Comercial tem prazo de até 1 dia. _[DOC-091 · §5 Projetos, PRJ-E5 (G1); §7 Prazos · ITM-01686 · parte de UNI-01102]_
- `UNI-01102.02` `REG-PRAZO` `a-conferir` A validação G2 da prévia tem prazo de até 1 dia. _[DOC-091 · §5 Projetos, PRJ-E8 (G2); §7 Prazos · ITM-01691 · parte de UNI-01102]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-01102.03` `REG-PRAZO` `proposto` A validação G3 do projeto tem prazo de até 1 dia. _[DOC-091 · §5 Projetos, PRJ-E10 (G3); §7 Prazos · ITM-01695 · parte de UNI-01102]_
- `UNI-01102.04` `REG-PRAZO` `a-conferir` G1, G2 e G3 têm prazo de 1 dia cada, responsável Comercial. _[DOC-091 · §7 Prazos, G1, G2 e G3 · ITM-02093 · parte de UNI-01102]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`

### APR · Apresentações por IA (1)

- `UNI-01645` `REG-PRAZO` `vigente` Sem abertura da apresentação em 3 dias, o sistema lembra o vendedor de reenviar ou ligar. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02270]_

### CUS · Custos (8)

- `UNI-00073` `REG-PRAZO` `vigente` Planilha de custos tem prazo total de 3 dias, incluindo o Financeiro, para ficar pronta para o preço de venda. _[DOC-009 · CUS-E5, §07 · ITM-00210]_
  - Requisitos separados deste item: `UNI-00073.01`
- `UNI-00073.01` `REG-PRAZO` `proposto` Planilha de custos com preço (PRJ-E14 a CUS-E6): 3 dias, responsáveis Carol, Maitê e Diego. _[DOC-091 · §7 Prazos (SLAs), planilha de custos com preço · ITM-02094 · parte de UNI-00073]_
  - **Decisão (Ver decisão do item 1):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`
- `UNI-00074` `REG-PRAZO` `vigente` Carol atualiza a planilha mãe de custos todo mês, com materiais novos, especificações, preços de mercado e itens fora do escopo. _[DOC-009 · CUS-E12, §07 · ITM-00220]_
  - Requisitos separados deste item: `UNI-00074.01`, `UNI-00074.02`
- `UNI-00074.02` `REG-PRAZO` `proposto` A Samanta tem 2 dias para devolver à Carol os preços atualizados de São Paulo. _[DOC-091 · §5 Custos (bloco após Frota), planilha mãe CUS-E12 · ITM-01813 · parte de UNI-00074]_
- `UNI-00075` `REG-PRAZO` `vigente` Comercial é notificado, avalia o prazo pelo cronograma em até 2 dias e dá retorno ao cliente. _[DOC-009 · CUS-E15 · ITM-00224]_
  - Requisitos separados deste item: `UNI-00075.01`
- `UNI-00075.01` `REG-PRAZO` `proposto` Adicional (CUS-E15 a E18): até 2 dias por etapa, responsáveis Comercial, Custos, Financeiro e Anderson. _[DOC-091 · §7 Prazos (SLAs), adicional; §5 Custos, CUS-E15 a E18 · ITM-02105 · parte de UNI-00075]_
- `UNI-00076` `REG-PRAZO` `vigente` Custos gera a planilha adicional em até 2 dias; a planilha do projeto aprovado segue finalizada. _[DOC-009 · CUS-E16 · ITM-00225]_
- `UNI-01595` `REG-PRAZO` `proposto` A abertura da pasta e da planilha em Custos tem prazo de 3 dias. _[DOC-091 · §5 03 Projetos, PRJ-E14 · ITM-01699]_

### COM · Comercial, proposta e contrato (10)

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

### FIN · Financeiro (11)

- `UNI-00077` `REG-PRAZO` `vigente` Financeiro gera o contrato no modelo padrão do sistema em 1 dia, com valores, pagamento e cláusulas. _[DOC-010 · FIN-E2 · ITM-00239]_
  - Requisitos separados deste item: `UNI-00077.01`, `UNI-00077.02`, `UNI-00077.03`
- `UNI-00077.01` `REG-PRAZO` `proposto` O contrato é gerado em 1 dia após o aceite. _[DOC-091 · §5 Financeiro, FIN-E2; §7 Prazos (SLAs) · ITM-01732 · parte de UNI-00077]_
- `UNI-00077.03` `REG-PRAZO` `proposto` Contrato (FIN-E2): 1 dia, responsável Maitê. _[DOC-091 · §7 Prazos (SLAs), contrato · ITM-02096 · parte de UNI-00077]_
- `UNI-00078` `REG-PRAZO` `vigente` Compras sobe a nota fiscal no Portal em até 2 dias após a entrega do item e o Financeiro é notificado. _[DOC-010 · FIN-E10 · ITM-00250]_
  - Requisitos separados deste item: `UNI-00078.01`
- `UNI-00078.01` `REG-PRAZO` `proposto` Nota fiscal no Portal (FIN-E10): 2 dias após a entrega, responsável Osmar. _[DOC-091 · §7 Prazos (SLAs), nota fiscal no Portal; §5 Financeiro, FIN-E10 · ITM-02104 · parte de UNI-00078]_
- `UNI-00751` `REG-PRAZO` `vigente` `conf:media` Financeiro: contrato gerado pela IA em 1 dia; projetistas remunerados por hora. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00027]_
  - Requisitos separados deste item: `UNI-00751.01`, `UNI-00751.02`, `UNI-00751.03`, `UNI-00751.04`, `UNI-00751.05`, `UNI-00751.06`, `UNI-00751.07`
- `UNI-00763` `REG-PRAZO` `vigente` A V02 revisa a V01 com as respostas de 28/10, incluindo prazos de 1 dia para contrato, comandas e ordens e 2 dias para a nota fiscal. _[DOC-010 · §02 Fluxograma e rodapé · ITM-00262]_
  - Requisitos separados deste item: `UNI-00763.01`, `UNI-00763.02`, `UNI-00763.03`, `UNI-00763.04`, `UNI-00763.05`
- `UNI-00763.01` `REG-PRAZO` `proposto` Toda comanda é aprovada em 1 dia, sem tolerância de diferença. _[DOC-091 · §5 Financeiro, FIN-E5; §7 Prazos · ITM-01736 · parte de UNI-00763]_
  - **Decisão (Ver decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
- `UNI-00763.02` `REG-PRAZO` `proposto` A conferência das ordens de compra pelo Financeiro leva 1 dia. _[DOC-091 · §5 Financeiro, FIN-E7; §7 Prazos · ITM-01739 · parte de UNI-00763]_
- `UNI-00763.03` `REG-PRAZO` `proposto` A Maitê confere a ordem de compra em 1 dia (FIN-E8). _[DOC-091 · §5 Financeiro, FIN-E7 e FIN-E8; §5 Compras, CMP-E4 · ITM-01757 · parte de UNI-00763]_
- `UNI-00763.05` `REG-PRAZO` `proposto` Aprovação de comanda (FIN-E5) e de ordem de compra (FIN-E7): 1 dia, responsável Financeiro. _[DOC-091 · §7 Prazos, aprovação de comanda e de ordem de compra · ITM-02103 · parte de UNI-00763]_

### PLA · Planejamento de produção (10)

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

### CRD · Credenciamento (4)

- `UNI-00086` `REG-PRAZO` `vigente` Credenciamento, a pasta do credenciamento deve ser aprovada dentro do prazo do manual da feira. _[DOC-012 · §03 Marcos (PLA-E17) · ITM-00327]_
- `UNI-00924.01` `REG-PRAZO` `vigente` Documentos do Credenciamento: cada setor tem 3 dias, a partir da notificação, para devolver o documento à Alexandra. _[DOC-091 · Respostas do Diego, Documentos do Credenciamento (CRD-E9) · ITM-01910 · parte de UNI-00924]_
- `UNI-00928.01` `REG-PRAZO` `vigente` Ok final do Credenciamento: a Maitê dá em até 5 dias. _[DOC-091 · Respostas do Diego, Conferência do Credenciamento (CRD-E12) · ITM-01917 · parte de UNI-00928]_
- `UNI-01628` `REG-PRAZO` `vigente` Prazo do formulário de deslocamento: segue o manual de cada feira (ex.: 15 ou 20 dias antes); a Alexandra define o limite, que entra no cronograma reverso da Érika (PLA-E3, CRD-E7). _[DOC-091 · §Respostas Prazo do formulário de deslocamento · ITM-02073]_

### CVI · Comunicação visual (3)

- `UNI-00089` `REG-PRAZO` `vigente` Comunicação visual: arquivo reprovado dá ao cliente 1 dia para republicar; na segunda reprovação o comercial liga e orienta o cliente. _[DOC-014 · CVI-E3; §04 Cadência · ITM-00407]_
- `UNI-00567.01` `REG-PRAZO` `proposto` `conf:media` Arquivo não apto (CVI-E3): o cliente tem 1 dia para republicar e, na 2ª vez, o comercial liga. _[DOC-091 · §5 Setores produtivos, CVI-E3; §7 Prazos, republicar arquivo não apto · ITM-01932 · parte de UNI-00567]_
- `UNI-00933.01` `REG-PRAZO` `vigente` Arquivos do cliente: artes de comunicação visual e conteúdos de audiovisual chegam até 20 dias antes do início da feira, e o sistema avisa o cliente antes do prazo. _[DOC-091 · Respostas do Diego, Arquivos do cliente (CVI-E1 e AUD-E7) · ITM-01930 · parte de UNI-00933]_

### GRA · Criação gráfica (1)

- `UNI-01669` `REG-PRAZO` `vigente` Cada demanda de criação gráfica tem prazo pelo cronograma, e o Beto vê a sua fila na tela inicial. _[DOC-091 · §38 Criação Gráfica, Prazo e fila · ITM-02418]_

### TIN · Tecnologia e experiências interativas (1)

- `UNI-00068` `REG-PRAZO` `proposto` Prazo mínimo recomendado: 30 dias antes do evento para totens e automações e 45 dias para aplicativos. _[DOC-004 · Fase 0 Entrada da demanda · ITM-00087]_

### EXP · Expedição e qualidade (2)

- `UNI-00087` `REG-PRAZO` `vigente` Planejamento, o relatório de conformidade (Suellen e Produção) é feito durante a produção, até o carregamento; o carregamento é em D0 e fica com Expedição e logística. _[DOC-012 · §03 Marcos (PLA-E22) · ITM-00328]_
- `UNI-00938.01` `REG-PRAZO` `vigente` Peça reprovada na Expedição: a produção tem 3 dias para corrigir. _[DOC-091 · Respostas do Diego, Peça reprovada na Expedição (EXP-E4) · ITM-01963 · parte de UNI-00938]_

### LOG · Logística e frota (3)

- `UNI-00009.11` `REG-PRAZO` `vigente` Antifraude (aprovado em 31/10): prazo de 5 dias após a viagem para anexar comprovantes; sem eles, nova verba fica bloqueada. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01804 · parte de UNI-00009]_
- `UNI-01601` `REG-PRAZO` `proposto` A quilometragem é lançada uma vez por semana e o lançamento da semana anterior vence na segunda-feira. _[DOC-091 · §5 Frota, FRT-E2 · ITM-01787]_
- `UNI-01602` `REG-PRAZO` `proposto` O alerta da lavagem mensal dos veículos ocorre todo dia 20. _[DOC-091 · §5 Frota, FRT-E5 · ITM-01793]_

### MON · Montagem (4)

- `UNI-00090` `REG-PRAZO` `vigente` Montagem, acesso da equipe ao app termina 5 dias após a desmontagem; a aba do cliente fecha no fim da feira. _[DOC-016 · MON-E16; §03 · ITM-00490]_
- `UNI-00091` `REG-PRAZO` `vigente` Plantão técnico: o chamado deve ser atendido em cerca de 10 minutos, porque o plantonista fica na feira. _[DOC-016 · MON-E13; §06 · ITM-00491]_
- `UNI-00092` `REG-PRAZO` `vigente` `conf:media` Calendário da entrega: montagem 100% verde na noite do dia 8, dia 9 é o dia do cliente com checklist, ajustes e termo, e a feira abre no dia 10 (exemplo). _[DOC-016 · MON-E9; §05 Calendário da entrega · ITM-00492]_
- `UNI-00463.01` `REG-PRAZO` `proposto` Montagem, etapa MON-E13: execução do chamado em cerca de 10 minutos, com foto. _[DOC-091 · §5 Montagem, MON-E13; §7 Prazos (SLAs) · ITM-01985 · parte de UNI-00463]_

### POS · Pós-feira (2)

- `UNI-00093` `REG-PRAZO` `proposto` Pós-feira: o contato com o detrator (nota 0 a 6) deve ocorrer em até 48 horas, com registro no Portal. _[DOC-017 · POS-E7 · ITM-00521]_
  - Requisitos separados deste item: `UNI-00093.01`
- `UNI-00093.01` `REG-PRAZO` `proposto` Contato com detrator (POS-E7): 48 horas, responsáveis vendedor e Diego. _[DOC-091 · §7 Prazos (SLAs), contato com detrator; §5 Pós-feira, POS-E7 · ITM-02108 · parte de UNI-00093]_

### CLI · Portal do cliente (1)

- `UNI-00782.04` `REG-PRAZO` `proposto` O cliente preenche o formulário pré-evento no Portal até 15 dias antes do início da feira, com lembrete antes do prazo. _[DOC-091 · §12 Experiência do cliente no Portal, formulário pré-evento · ITM-02170 · parte de UNI-00782]_

### FID · Indicação e fidelidade (2)

- `UNI-00859.05` `REG-PRAZO` `proposto` O upgrade fica disponível para o próximo projeto do cliente, com validade de 12 meses. _[DOC-091 · §13 Programa de indicação com recompensa, metodologia, passo 4 · ITM-02187 · parte de UNI-00859]_
- `UNI-01632` `REG-PRAZO` `vigente` A Imagine define no início do ano todos os itens do ciclo de fidelização e libera novos itens a cada mês. _[DOC-091 · §13 Programa de indicação, Biblioteca de fidelização · ITM-02195]_

### TRP · Transversal (2)

- `UNI-00098` `REG-PRAZO` `proposto` Todo prazo tem data; se vencer, o sistema alerta os outros setores no dia seguinte. _[DOC-030 · §06 Regras do portal · ITM-00725]_
- `UNI-00753` `REG-PRAZO` `vigente` `conf:baixa` Almoxarifado, logística, frota, produção, expedição, credenciamento e audiovisual tiveram prazos e alertas definidos nas decisões de 31/10. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00029]_

## Aprovações e alçadas (37)

### PLC · Planejamento comercial (1)

- `UNI-01594` `REG-APROV` `proposto` Se a feira do cliente não estiver no calendário, a diretoria avalia quem atende. _[DOC-091 · §5 02 Comercial, COM-E8 · ITM-01668]_

### PRJ · Projetos e memorial (4)

- `UNI-00101` `REG-APROV` `vigente` Cada validação do Comercial é notificação no Portal e bloqueia a etapa seguinte; se o Comercial atrasar, o prazo assumido com o cliente é prorrogado pelo mesmo tempo. _[DOC-008 · §02 Fluxograma, introdução · ITM-00167]_
  - Requisitos separados deste item: `UNI-00101.01`
- `UNI-00101.01` `REG-APROV` `proposto` Validações G1, G2 e G3: a etapa seguinte de Projetos só é liberada depois da aprovação. _[DOC-091 · §6 Regras de negócio, Validações G1, G2 e G3 · ITM-02081 · parte de UNI-00101]_
  - **Decisão (Ver decisão do item 2):** Cada vendedor que abriu a demanda aprova a prévia. **Em aberto:** O prazo de 1 dia continua? Registro: `REGISTROS/decisao__20261104-1043-aprovacao-previa-3cfd.md`
- `UNI-00110` `REG-APROV` `substituido-parcial` `conf:media` `rotina-anterior` Responsáveis por lista: validação com cliente por Anderson e Fran, formação de preço por Maite, revisão de custos por Diego e movimentação para produção por Érika após aprovação. _[DOC-033 · §3.3 Quadro Trello · ITM-00917]_
  - **Continua valendo:** A validação com o cliente e a passagem à produção depois da aprovação continuam, como rotina anterior ao ERP.
  - **Mudou:** Custos aprova a planilha, e o preço de venda é aprovado por Maitê e Diego (item-1).
- `UNI-00530` `REG-APROV` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 7: Diego aprova com "perfeito" e o PDF vai para o Drive. _[DOC-033 · §2.3 P2 passo 7 · ITM-00858]_

### BIB · Biblioteca de itens e locações (2)

- `UNI-00102` `REG-APROV` `vigente` Item novo na biblioteca: Diego valida em 1 dia, só depois da conclusão do projeto. _[DOC-008 · §03 Validações, §08 · ITM-00189]_
- `UNI-00785.04` `REG-APROV` `a-conferir` `conf:media` Só depois do ok da Érika, responsável pela curadoria, o material do projeto concluído entra na biblioteca de referências. _[DOC-091 · §24 Biblioteca de referências e projetos para o setor de Projetos · ITM-02292 · parte de UNI-00785]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`

### APR · Apresentações por IA (2)

- `UNI-01470` `REG-APROV` `vigente` Só a versão oficial da apresentação aprovada pelo Diego fica disponível no ERP, para evitar apresentações desatualizadas. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02271]_
- `UNI-01472` `REG-APROV` `vigente` O vendedor confere e ajusta a apresentação personalizada antes de enviar, e nada sai sem esse ok. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02276]_

### CUS · Custos (2)

- `UNI-00557.02` `REG-APROV` `substituido-parcial` Na planilha de custos, Carol confere, Maitê valida a operação e Diego aprova o preço. _[DOC-091 · §25 Integração automática do projeto, passo 3; §5 Custos, CUS-E6 · ITM-02298 · parte de UNI-00557]_
  - **Continua valendo:** Custos confere, e a Maitê valida a operação.
  - **Mudou:** O preço é aprovado por Maitê e Diego, e não só por Diego (item-1).
- `UNI-01574` `REG-APROV` `substituido-parcial` O Diego aprova o preço final; só depois da aprovação a pré-proposta vai para o Anderson. _[DOC-091 · §5 Novo fluxo de Custos com IA, aprovação do Diego · ITM-01819]_
  - **Continua valendo:** A pré-proposta só segue depois de o preço ser aprovado.
  - **Mudou:** O preço de venda é aprovado por Maitê e Diego (item-1).

### COM · Comercial, proposta e contrato (3)

- `UNI-00105` `REG-APROV` `proposto` Basta um aprovador, Financeiro ou Diretoria, para liberar a alteração da proposta, conforme padrões de desconto máximo, parcelamento, prazo mínimo e prazo de fechamento. _[DOC-030 · §03 G1 · ITM-00713]_
- `UNI-01119` `REG-APROV` `inferido` `conf:media` Em E27, a aprovação esperada do cliente é o aceite eletrônico da proposta (E15). _[DOC-031 · Validar, E27 · ITM-00759]_
- `UNI-01578` `REG-APROV` `vigente` Quem define os itens de cortesia é o Comercial, com validação do Diego. _[DOC-091 · §12 Itens de cortesia · ITM-02173]_

### FIN · Financeiro (6)

- `UNI-00103` `REG-APROV` `confirmado` Toda comanda passa por aprovação do Financeiro em 1 dia, sem tolerância de diferença; se reprovada, volta ao setor que pediu. _[DOC-010 · FIN-E5 e E6, §03 · ITM-00244]_
  - **Decisão (De acordo com a decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
  - Requisitos separados deste item: `UNI-00103.01`, `UNI-00103.02`
- `UNI-00103.01` `REG-APROV` `vigente` Financeiro: o Portal cruza previsto × pedido item a item para aprovar a comanda. _[DOC-091 · §5 Financeiro, FIN-E5; §6 Comandas · ITM-01735 · parte de UNI-00103]_
  - **Decisão (Ver decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
- `UNI-00103.02` `REG-APROV` `substituido-parcial` Toda diferença da pré-comanda em relação ao orçado passa pelo Financeiro. _[DOC-091 · §6 Regras de negócio, Comandas · ITM-02302 · parte de UNI-00103]_
  - **Continua valendo:** A diferença em relação ao orçado passa pelo Financeiro.
  - **Mudou:** Não só a diferença: toda comanda passa pelo Financeiro (ponto-3).
- `UNI-00228` `REG-APROV` `proposto` Nenhum pagamento sai sem OC/OS aprovada e sem REC conferido, com conferência OC x REC x NF. _[DOC-032 · §05 Lista de regras · ITM-00790]_
- `UNI-01576` `REG-APROV` `proposto` Só a Maitê aprova a previsão orçamentária do projeto, antes de qualquer compra começar (antes de FIN-E3 e CMP-E1). _[DOC-091 · §5 Previsão orçamentária do projeto · ITM-01829]_
- `UNI-01579` `REG-APROV` `vigente` A previsão orçamentária reúne Custos e Audiovisual e é aprovada pela Maitê. _[DOC-091 · §25 Previsão orçamentária · ITM-02299]_

### CMP · Compras (5)

- `UNI-00104` `REG-APROV` `proposto` Toda compra segue o fluxo oficial (cotação, ordem de compra, aprovação da Maitê) e nenhum pagamento é combinado fora da ordem de compra. _[DOC-022 · §4 Regras de uso, item 4 · ITM-00598]_
  - Requisitos separados deste item: `UNI-00104.01`
- `UNI-00104.01` `REG-APROV` `a-conferir` Compras: a Maitê confere a ordem e, se não bater com a comanda e o custo, ela volta para Compras da unidade. _[DOC-091 · §5 Compras, CMP-E4 (FIN-E8) · ITM-01756 · parte de UNI-00104]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
- `UNI-00108` `REG-APROV` `proposto` Uma OC aprovada que muda de valor para cima gera nova versão e volta para aprovação; mudança só de prazo é registrada sem nova aprovação e avisa o CRO-002. _[DOC-032 · §05 Lista de regras · ITM-00789]_
- `UNI-00200.02` `REG-APROV` `proposto` Quando o cliente paga direto o fornecedor, a contratação exige aprovação do cliente. _[DOC-091 · §40 Produção de Evento, fase 5 Contratação · ITM-02439 · parte de UNI-00200]_
- `UNI-00881.01` `REG-APROV` `vigente` Se o preço do comprador diferir das três fontes além do limite de 10% (configurável), a ordem de compra não segue direto: comprador (Osmar no RS, Samanta em SP) e Maitê recebem alerta e o comprador justifica ou renegocia. _[DOC-091 · §16 Compras, pesquisa paralela de preços, quadro comparativo · ITM-02218 · parte de UNI-00881]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`

### CRD · Credenciamento (1)

- `UNI-00179` `REG-APROV` `proposto` Toda validação de documentos do credenciamento passa pelo jurídico-financeiro e tem o ok final da Maitê. _[DOC-013 · §03 Regra · ITM-00371]_

### PRD · Produção e app dos setores (1)

- `UNI-00566.01` `REG-APROV` `a-conferir` `conf:media` Pedido de material acima do previsto (PRD-E5): passa por filtro e aprovação. _[DOC-091 · §5 Setores produtivos, PRD-E5 · ITM-01927 · parte de UNI-00566]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`

### CVI · Comunicação visual (2)

- `UNI-01580` `REG-APROV` `vigente` Em cada etapa CVI, o responsável de comunicação visual da unidade marca o ok no sistema com data, hora e usuário, e a peça só avança com esse ok. _[DOC-091 · §26 Checklist por etapa · ITM-02325]_
- `UNI-01581` `REG-APROV` `vigente` O Beto sobe o arquivo final (vetor, faca, arquivo de impressão) na ficha do item e dá o ok, e a Carol confere e libera para a etapa seguinte de comunicação visual. _[DOC-091 · §38 Criação Gráfica, Entrega e ok · ITM-02419]_

### TIN · Tecnologia e experiências interativas (3)

- `UNI-00100` `REG-APROV` `proposto` Cada fase termina com ok do Bruno no ERP; aprovam também Comercial e Diego (proposta), cliente (desenho), Produção (publicação) e Comercial (encerramento). _[DOC-004 · Visão geral das fases · ITM-00085]_
  - Requisitos separados deste item: `UNI-00100.01`
- `UNI-00100.01` `REG-APROV` `proposto` `conf:media` As etapas da experiência interativa são pesquisa e proposta, aprovação interna e do cliente, desenvolvimento, teste interno, teste no local, operação no evento e relatório de uso, cada uma com ok do Bruno no sistema. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas · ITM-02424 · parte de UNI-00100]_
- `UNI-00757.03` `REG-APROV` `proposto` `conf:media` O Bruno avalia, ajusta e decide a proposta técnica sugerida pela IA, que aprende com as escolhas e resultados de cada projeto. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, assistente técnico da IA · ITM-02429 · parte de UNI-00757]_

### LOG · Logística e frota (2)

- `UNI-01541` `REG-APROV` `vigente` `conf:media` Ordem de locação exige data e horário de entrega e aprovação da Maitê em 1 dia. _[DOC-091 · §18 Locações · ITM-02228]_
- `UNI-01663` `REG-APROV` `vigente` Antes de fechar o cálculo de carga, Eduardo (RS) ou Samanta (SP), e Christian para o audiovisual, devem confirmar a lista de itens que não vão no caminhão da Imagine. _[DOC-091 · §31 Itens que não são carregados pela Imagine · ITM-02365]_

### MKT · Marketing e acervo (1)

- `UNI-00906.01` `REG-APROV` `proposto` `conf:media` A pauta e a linha de comunicação da Prospecção precisam da aprovação do Diego. _[DOC-091 · §5 Prospecção, PRO-E1 · ITM-01645 · parte de UNI-00906]_

### TRP · Transversal (2)

- `UNI-00106` `REG-APROV` `proposto` Todo documento traz bloco de aprovação com quem aprovou, quando, em qual alçada e com qual comentário, registrado no Portal e carimbado no PDF. _[DOC-032 · §02 Aprovação · ITM-00771]_
- `UNI-00109` `REG-APROV` `substituido-parcial` Aprovações na matriz: ENT-001 assistente e Diretoria; ALT Financeiro e Diretoria; ORC-002 Diretoria; PRP vendedor, Financeiro, Diretoria e cliente; OC/OS Financeiro e Diretoria; AMO vendedor e cliente. _[DOC-032 · §07 Matriz · ITM-00802]_
  - **Continua valendo:** A matriz segue como proposta para os documentos que nenhuma decisão alterou.
  - **Mudou:** Pedido de alteração sem sigla (item-12); custos e preço seguem o item-1; compras seguem o alerta de preço (item-5 e ponto-2).

## Preço, margem e comissão (16)

### CUS · Custos (2)

- `UNI-00750` `REG-PRECO` `vigente` Custos: margem de 35%, planilha gerada pela IA e uso de base histórica de realizados. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00026]_
  - Requisitos separados deste item: `UNI-00750.01`, `UNI-00750.02`, `UNI-00750.03`, `UNI-00750.04`
- `UNI-01152.02` `REG-PRECO` `vigente` Margem inicial do preço de venda: 35% de lucro líquido. _[DOC-091 · Respostas do Diego, Preço de venda (CUS-E4) · ITM-02028 · parte de UNI-01152]_

### COM · Comercial, proposta e contrato (7)

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

### FIN · Financeiro (3)

- `UNI-00913.01` `REG-PRECO` `vigente` As comissões têm fechamento mensal. _[DOC-091 · §5 Financeiro, FIN-E14; Respostas do Diego, Comissões dos vendedores · ITM-01748 · parte de UNI-00913]_
  - **Decisão (Ver decisão do item 10):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- `UNI-00913.02` `REG-PRECO` `vigente` Comissão é calculada sobre o que o cliente efetivamente pagou, com fechamento no fim de cada mês e um único pagamento; adicionais não geram comissão. _[DOC-091 · Respostas do Diego, Comissões dos vendedores · ITM-02048 · parte de UNI-00913]_
  - **Decisão (Ver decisão do item 10):** Valem os percentuais do ERP-001 e do ERP-002. Registro: `REGISTROS/decisao__20261104-1043-comissao-vzgp.md`
- `UNI-01607` `REG-PRECO` `proposto` Terceirizado não tem adiantamento nem cartão da empresa: paga do próprio bolso, anexa as notas e a empresa reembolsa, limitado ao valor da rota e da tabela padrão. _[DOC-091 · §5 Frota, FRT-E8 · ITM-01808]_

### FID · Indicação e fidelidade (3)

- `UNI-01591` `REG-PRECO` `vigente` Nível Parceiro Imagine: 1 indicação fechada, upgrade até 0,5% do contrato indicado, com mobiliário, iluminação ou comunicação visual extra. _[DOC-091 · §13 Programa de indicação, Níveis · ITM-02189]_
- `UNI-01592` `REG-PRECO` `vigente` Nível Embaixador Imagine: 3 indicações fechadas, upgrade até 1% do contrato indicado, com prioridade na agenda de feiras concorridas. _[DOC-091 · §13 Programa de indicação, Níveis · ITM-02190]_
- `UNI-01593` `REG-PRECO` `vigente` Nível Imagine Signature: 5 indicações fechadas, upgrade até 1,5% do contrato indicado, com item exclusivo no estande e convite para eventos da Imagine. _[DOC-091 · §13 Programa de indicação, Níveis · ITM-02191]_

### EVT · Produção de evento (1)

- `UNI-00895.01` `REG-PRECO` `pendente` `conf:media` A Imagine recebe taxa de gestão (valor fixo ou percentual sobre o orçamento gerenciado) além dos serviços próprios, definida em contrato. _[DOC-091 · §40 Produção de Evento, remuneração da Imagine e pendências · ITM-02444 · parte de UNI-00895]_

## Acesso e visibilidade (15)

### CRM · CRM e prospecção (2)

- `UNI-00115` `REG-ACESSO` `proposto` O cliente aparece no usuário do vendedor com o relatório completo da Prospecção; cada vendedor vê só os seus clientes. _[DOC-007 · COM-E10, §06 · ITM-00152]_
  - Requisitos separados deste item: `UNI-00115.01`
- `UNI-00115.01` `REG-ACESSO` `proposto` `conf:media` Perfil Vendedor (Simone, Luca, Rita, Fran): só os próprios clientes, funil e Termômetro. _[DOC-091 · §8 Perfis de acesso, Vendedor · ITM-02114 · parte de UNI-00115]_

### CUS · Custos (2)

- `UNI-00122.01` `REG-ACESSO` `proposto` A aba de custos da página do projeto é visível só para perfis autorizados, e as permissões seguem o perfil de cada usuário. _[DOC-091 · §30 Página do projeto, item 5 Abas · ITM-02357 · parte de UNI-00122]_
  - **Decisão (Ver decisão do item 14):** Diretoria e Custos veem a área. Compras só sabe o valor do item que foi comprado. **Em aberto:** Acesso do Financeiro. Registro: `REGISTROS/decisao__20261104-1043-area-custos-hokw.md`
- `UNI-01452` `REG-ACESSO` `substituido-parcial` Área de Custos é restrita: só Custos, Financeiro e diretoria têm acesso. _[DOC-091 · §6 Regras de negócio · ITM-02084]_
  - **Continua valendo:** A área de Custos é restrita.
  - **Mudou:** Diretoria e Custos veem a área; Compras só sabe o valor do item comprado; o acesso do Financeiro está em aberto (item-14).

### FIN · Financeiro (1)

- `UNI-00116` `REG-ACESSO` `inferido` Só a Maitê usa o Financeiro; Diego entra na validação de preço como diretoria, não como usuário do Financeiro (inferido). _[DOC-010 · §08 Usuários · ITM-00261]_

### CRD · Credenciamento (1)

- `UNI-00117` `REG-ACESSO` `proposto` Login e senha do cliente no portal da feira são guardados na aba do Credenciamento com acesso restrito. _[DOC-013 · §04 Aba do Credenciamento · ITM-00377]_
  - Requisitos separados deste item: `UNI-00117.01`

### PRD · Produção e app dos setores (1)

- `UNI-01480` `REG-ACESSO` `vigente` `conf:media` Diego, Maitê e coordenadores veem a fila de cada pessoa e de cada setor, com gargalos e atrasos. _[DOC-091 · §29 Visão de gestor · ITM-02351]_

### ALM · Almoxarifado (1)

- `UNI-01434` `REG-ACESSO` `proposto` `conf:media` A agenda de chegadas é visível para Eduardo, Marília e Suellen no Rio Grande do Sul, e para Samanta, Rômulo e o assistente em São Paulo. _[DOC-091 · §5 Compras, Agenda de chegada de materiais · ITM-01763]_

### MON · Montagem (2)

- `UNI-00026` `REG-ACESSO` `vigente` Categorias de usuário da montagem definem o que cada uma faz, o que acessa e quando o acesso termina (5 dias após a desmontagem, acesso normal da empresa ou durante a feira para o cliente). _[DOC-016 · §03 Usuários e categorias · ITM-00494]_
  - Requisitos separados deste item: `UNI-00026.01`
- `UNI-00026.01` `REG-ACESSO` `proposto` Acessos de montagem são por categoria e por feira, e expiram 5 dias após a desmontagem; a aba do cliente fecha no fim da feira. _[DOC-091 · §6 Regras de negócio, Acessos de montagem; §5 Montagem, MON-E16 · ITM-02090 · parte de UNI-00026]_

### MKT · Marketing e acervo (2)

- `UNI-00120` `REG-ACESSO` `proposto` Acervo de marketing: só o Marketing vê; os outros setores pedem acesso informando material, motivo e prazo, para evitar que o material vá parar com concorrentes. _[DOC-018 · §04 Acervo · ITM-00551]_
  - Requisitos separados deste item: `UNI-00120.01`, `UNI-00120.02`
- `UNI-00120.02` `REG-ACESSO` `proposto` Acesso ao acervo de marketing: expira sozinho e os downloads ficam registrados (MKT-E12). _[DOC-091 · §5 Marketing, MKT-E12 · ITM-02013 · parte de UNI-00120]_

### CLI · Portal do cliente (1)

- `UNI-00119` `REG-ACESSO` `vigente` Aba do cliente usa o login recebido do vendedor; se a pessoa do cliente mudar durante a feira, o Portal cria outro login só para a etapa de montagem e feira. _[DOC-016 · §05 Login · ITM-00497]_
  - Requisitos separados deste item: `UNI-00119.01`

### TRP · Transversal (2)

- `UNI-00118` `REG-ACESSO` `vigente` Acesso por categoria de usuário (encarregado, responsável, produtor, coordenador de montagem, plantonista, coordenador de produção, comercial e cliente); cada pessoa é nomeada e escalada por feira e pode acumular categorias. _[DOC-016 · §03 Usuários e categorias · ITM-00493]_
  - Requisitos separados deste item: `UNI-00118.01`, `UNI-00118.02`
- `UNI-00783.03` `REG-ACESSO` `proposto` O aparelho do modo TV usa um login de exibição, só leitura, sem permitir alterações. _[DOC-091 · §17 Política de uso de dispositivos, telas do modo TV; §26 Comunicação visual, modo TV · ITM-02331 · parte de UNI-00783]_

## Códigos e rastreabilidade (41)

### PRJ · Projetos e memorial (13)

- `UNI-00138` `REG-CODIGO` `substituido-parcial` `rotina-anterior` O arquivo do detalhamento segue o nome [ID-PROJETO]_PRJ-001_DETALHAMENTO-D01_VNN.pdf. _[DOC-033 · §2.3 P2 Saídas · ITM-00851]_
  - **Continua valendo:** O nome do arquivo traz projeto, tipo, descrição e versão.
  - **Mudou:** Detalhamento usa DT no lugar de PRJ-001 (item-12).
- `UNI-00139` `REG-CODIGO` `vigente` `rotina-anterior` O arquivo do levantamento segue o nome [ID-PROJETO]_ORC-001_LEVANTAMENTO-POR-CATEGORIA_VNN.xlsx. _[DOC-033 · §2.4 P3 Saídas · ITM-00865]_
- `UNI-00140` `REG-CODIGO` `vigente` `rotina-anterior` Quando o memorial muda, o levantamento ganha nova versão mantendo os mesmos códigos. _[DOC-033 · §2.4 P3 Decisões · ITM-00877]_
- `UNI-00141` `REG-CODIGO` `vigente` `rotina-anterior` Quando a alteração afeta mais de um entregável, versionam-se todos em cascata; exemplo de um job: D01 V02, MEM V02, D01 V03, MEM V03, ORC V01. _[DOC-033 · §2.6 P5 item 3 · ITM-00890]_
- `UNI-00153` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` O padrão de memorial (PAD-001) exige modelo Imagine em Century Gothic, um bloco por ambiente com título e ÁREA, itens numerados por grupo, medidas não informadas como A CONFIRMAR e nome [CLIENTE]-[FEIRA][AA]_MEM-NNN_MEMORIAL-DESCRITIVO_VNN.xlsx. _[DOC-033 · §5.6.1 IMG-PAD-001 V02 §3 · ITM-01020]_
- `UNI-00154` `REG-CODIGO` `a-conferir` Grupos do IT são numerados em sequência no memorial inteiro, sem repetir entre ambientes; nunca renumerar e item novo recebe o próximo número livre do grupo. _[DOC-072 · Aba LEIA-ME, L15-L16 · ITM-01436]_
  - **Atenção (leitura do Claude):** item 9: Numera os grupos do IT no memorial inteiro. Falta saber como isso se encaixa no número da sessão.
- `UNI-00155` `REG-CODIGO` `vigente` Nome do arquivo do memorial: [CLIENTE]-[FEIRA][AA]_MEM-001_MEMORIAL-DESCRITIVO_V01.xlsx, usando o nome do projeto [PROJETO] quando o cliente é desconhecido; a coluna ÍTEM é texto para que 1.10 não vire 1.1. _[DOC-072 · Aba LEIA-ME, L8; L19 · ITM-01440]_
- `UNI-00224` `REG-CODIGO` `substituido-parcial` Quando o item é alterado no memorial via ALT, a mudança aparece em todos os documentos que usam aquele IT. _[DOC-032 · §01 · ITM-00767]_
  - **Continua valendo:** A alteração de um item aparece em todos os documentos que usam aquele item.
  - **Mudou:** Pedido de alteração sem sigla (item-12); o código do item segue o item-9.
- `UNI-00250` `REG-CODIGO` `vigente` `rotina-anterior` O memorial é a fonte única de códigos: detalhamento e levantamento usam os mesmos códigos e quantidades, com itens extras em lilás NN-Ck e aba MATRIZ comprovando a cobertura de ponta a ponta, por exigência de Diego, descartando levantamento livre. _[DOC-033 · §4.5 Por que esse método · ITM-00963]_
- `UNI-00267` `REG-CODIGO` `substituido-parcial` Nunca apagar item: o retirado fica com STATUS CANCELADO e ALT de origem; o alterado vira STATUS ALTERADO com ALT, nova versão do arquivo e linha no histórico. _[DOC-072 · Aba LEIA-ME, L17-L18 · ITM-01437]_
  - **Continua valendo:** Nunca apagar item: retirado fica cancelado e alterado fica como alterado, com nova versão do arquivo e linha no histórico.
  - **Mudou:** Pedido de alteração sem sigla (item-12).
- `UNI-00523` `REG-CODIGO` `vigente` `rotina-anterior` Memorial P1, passo 9: cada correção de Diego por áudio vira nova versão (V02, V03...) com linha nova no HISTÓRICO; a versão anterior nunca é apagada. _[DOC-033 · §2.2 P1 passo 9 · ITM-00841]_
- `UNI-00529` `REG-CODIGO` `vigente` `rotina-anterior` Detalhamento P2, passo 6: Diego revisa por áudio ou foto/print anotado e cada rodada gera novo V; se a correção muda escopo ou quantidade, o memorial também ganha nova versão. _[DOC-033 · §2.3 P2 passo 6 · ITM-00857]_
- `UNI-01429` `REG-CODIGO` `substituido-parcial` Item do projeto: código formado por projeto + item + subitem (ex.: P0123-015-02), nome, material e quantidade. _[DOC-091 · §4 Entidades, Item do projeto (PRJ-E11) · ITM-01623]_
  - **Continua valendo:** O item do projeto tem nome, material e quantidade.
  - **Mudou:** O formato do código segue o item-9.

### BIB · Biblioteca de itens e locações (8)

- `UNI-00156` `REG-CODIGO` `proposto` Regra de nome padrão 1: maiúsculas, sem acento e sem Ç, para a IA não tratar ABRAÇADEIRA e ABRACADEIRA como itens diferentes. _[DOC-074 · Aba Leia-me, L15 · ITM-01461]_
- `UNI-00157` `REG-CODIGO` `proposto` Regra de nome padrão 2: ordem fixa MATERIAL + TIPO/ACABAMENTO + COR + MEDIDA (ex.: MDF MELAMINA BRANCO 15MM; METALON QUADRADO 40X40X1,20MM). _[DOC-074 · Aba Leia-me, L16 · ITM-01462]_
- `UNI-00158` `REG-CODIGO` `proposto` Regra de nome padrão 3: medida colada na unidade, dimensões com X e decimal com vírgula (15MM, 6M, 2,00X1,00, 3,5X25MM). _[DOC-074 · Aba Leia-me, L17 · ITM-01463]_
- `UNI-00159` `REG-CODIGO` `proposto` Regra de nome padrão 4: embalagem e formato ficam na coluna Unidade de compra, não no nome (chapa de 2,75 X 1,83, rolo com 50 mt, C/100un). _[DOC-074 · Aba Leia-me, L18 · ITM-01464]_
- `UNI-00160` `REG-CODIGO` `proposto` Regra de nome padrão 5: sem parênteses e sem campo em branco; cada cor ou variação é um item próprio com código, e [COR] marca o que falta definir. _[DOC-074 · Aba Leia-me, L19 · ITM-01465]_
- `UNI-00161` `REG-CODIGO` `proposto` Regra de nome padrão 6: nada de nome genérico na planilha de custos; pintura, metalon e fita dupla face devem trazer sempre o item exato. _[DOC-074 · Aba Leia-me, L20 · ITM-01466]_
- `UNI-00162` `REG-CODIGO` `proposto` Regra de nome padrão 7: medida da peça, uso e fornecedor vão na descrição (ex.: adesivo 1,50x1,50 vira ADESIVO VINIL IMPRESSO, 2,25 m²). _[DOC-074 · Aba Leia-me, L21 · ITM-01467]_
- `UNI-00163` `REG-CODIGO` `proposto` Regra de nome padrão 8: código único por item; item novo só entra no custo depois de ganhar código no cadastro mestre. _[DOC-074 · Aba Leia-me, L22 · ITM-01468]_

### CUS · Custos (2)

- `UNI-00129` `REG-CODIGO` `substituido-parcial` Códigos propostos: versões ORC-001_V01, V02 e adicionais ADI-001, ADI-002. _[DOC-009 · §07 último item · ITM-00235]_
  - **Continua valendo:** A planilha de custos tem versões (V01, V02).
  - **Mudou:** Adicionais ficam sem a sigla ADI (ponto-5).
- `UNI-00137.01` `REG-CODIGO` `proposto` `conf:media` Versões: toda mudança de projeto ou de preço gera nova versão da planilha e avisa quem vem depois. _[DOC-091 · §6 Regras de negócio, Versões · ITM-02083 · parte de UNI-00137]_

### PRD · Produção e app dos setores (1)

- `UNI-00135` `REG-CODIGO` `vigente` Arquivos de vídeo seguem o padrão SETOR_ITEM_ETAPA_DATA; enviado pelo app com o tipo de item, o sistema nomeia sozinho. _[DOC-021 · §5 Nome dos arquivos · ITM-00589]_

### CVI · Comunicação visual (1)

- `UNI-01655` `REG-CODIGO` `vigente` A letra do item é o nome que o arquivo de arte do cliente deve ter ao ser enviado no Portal; o sistema liga cada arte ao item pela letra e avisa se faltar alguma. _[DOC-091 · §27 Ficha técnica de comunicação visual, Manual · ITM-02337]_

### EXP · Expedição e qualidade (1)

- `UNI-01497` `REG-CODIGO` `decisao-diego` `conf:media` Numeração de setores: 10 = Expedição, 11 = Logística, 12 = Controle de qualidade; o documento SET12 atual cobre Expedição e qualidade e será dividido. _[DOC-091 · §Respostas Setores · ITM-02026]_
  - **Decisão (Decidido em parte):** A ordem correta é Controle de qualidade, Expedição, Logística, Montagem e Pós-feira. **Em aberto:** Qual número fica com cada setor. Registro: `REGISTROS/decisao__20261104-1220-ordem-setores-vs2t.md`

### CLI · Portal do cliente (1)

- `UNI-01670` `REG-CODIGO` `vigente` `conf:media` Versões dos arquivos e correções ficam registradas, e correções frequentes do mesmo tipo geram orientação para o cliente no Portal. _[DOC-091 · §38 Criação Gráfica, Histórico · ITM-02420]_

### TRP · Transversal (14)

- `UNI-00128` `REG-CODIGO` `substituido-parcial` Codificação proposta: documentos CLIENTE-FEIRAAA_TIPO-NNN_DESCRICAO_VNN; itens BIB-CATEGORIA-NNNN; locações LOC-CATEGORIA-NNNN; tipos REF, STO, PRJ, APR, MEM, DET, FT, ORC, AMO. _[DOC-008 · §06 Codificação e pastas · ITM-00198]_
  - **Continua valendo:** Padrão de nome de documento segue como proposta, com os tipos que nenhuma decisão retirou.
  - **Mudou:** Mood board e storytelling ficam sem sigla; detalhamento usa DT, ficha técnica usa FT e prévia e render usam PRJ-002 (item-12); BIB- e LOC- estão em aberto (item-9).
- `UNI-00130` `REG-CODIGO` `vigente` Código único do item: nasce no memorial descritivo de Projetos, um para cada item, e acompanha o item pela custos, comanda, compras, ficha, app, relatório, expedição e montagem. _[DOC-012 · §04 Código único · ITM-00330]_
- `UNI-00131` `REG-CODIGO` `vigente` Código único: o Portal não aceita item sem código em nenhuma planilha, comanda, ordem de compra, ficha ou cronograma. _[DOC-012 · §04 Bloqueio na entrada · ITM-00331]_
- `UNI-00132` `REG-CODIGO` `vigente` Código único: nenhuma baixa no app, conferência de qualidade, carregamento ou montagem é validada sem código. _[DOC-012 · §04 Bloqueio na validação · ITM-00332]_
- `UNI-00133` `REG-CODIGO` `vigente` Cada peça leva uma etiqueta com QR code do código; o líder lê no app para dar baixa e a expedição confere no carregamento. _[DOC-012 · §04 Etiqueta · ITM-00335]_
  - Requisitos separados deste item: `UNI-00133.01`
- `UNI-00133.01` `REG-CODIGO` `proposto` O código do item é o mesmo da ficha, da etiqueta com QR code, do carregamento e da montagem. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, fim da seção de destino dos itens · ITM-02311 · parte de UNI-00133]_
- `UNI-00136` `REG-CODIGO` `proposto` Nome de arquivo de job: [CLIENTE]-[FEIRA][AA]_[TIPO]-NNN_[NOME]_VNN; documento geral: IMG-[TIPO]-NNN; sem acento, sem espaço, versão com 2 dígitos. _[DOC-032 · §02 Arquivo e código · ITM-00768]_
- `UNI-00137` `REG-CODIGO` `substituido-parcial` Todo documento cita sua origem (OC cita SOL, COT e ORC; FIC cita MEM e PRJ; PRP cita ORC-002) e versão nova nunca sobrescreve a anterior, com histórico de versão, data, autor, alteração e ALT. _[DOC-032 · §02 Vínculo e Histórico · ITM-00772]_
  - **Continua valendo:** Todo documento cita sua origem; versão nova nunca sobrescreve a anterior; há histórico com versão, data, autor e alteração.
  - **Mudou:** FT no lugar de FIC, DT no lugar de PRJ-001 e pedido de alteração sem sigla (item-12); a ordem de compra nasce da comanda (item-21).
  - Requisitos separados deste item: `UNI-00137.01`
- `UNI-00143` `REG-CODIGO` `vigente` `rotina-anterior` Sempre se lê a versão de maior número. _[DOC-033 · §2.6 P5 item 5 · ITM-00892]_
- `UNI-00145` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` Novo registro de equipe usa ID EQP-NNN sequencial, nunca reutilizado; pessoa desligada vira INATIVO e nunca é apagada. _[DOC-033 · §2.7 P6 passo 2 · ITM-00895]_
- `UNI-00146` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` As siglas de tipo são CAD cadastro, PAD padrão, MOD modelo, MEM memorial descritivo, ATA ata de reunião, ORC orçamento/custos e PRJ projeto/3D. _[DOC-033 · §4.1 item 2 · ITM-00939]_
- `UNI-00148` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` O histórico é uma tabela VERSÃO / DATA / AUTOR / ALTERAÇÃO no fim do arquivo ou em aba própria. _[DOC-033 · §4.1 item 4 · ITM-00941]_
- `UNI-00765` `REG-CODIGO` `vigente` `conf:media` `rotina-anterior` Por mandato de Diego, em 20/10 foi adotada a REGRA FIXA de rastreabilidade (nome, ID, cabeçalho, histórico e nova versão sem apagar), descartando nomes livres e sobrescrita, e criada a estrutura do Drive (PASTA PRINCIPAL IMAGINE, IMAGINE e pastas de projeto) com padrões e cadastros em .md. _[DOC-033 · §6 D01 · ITM-01045]_
- `UNI-01107` `REG-CODIGO` `a-conferir` `conf:media` Código único não muda do memorial até a montagem; um item novo ou adicional recebe código novo no mesmo padrão (marcado como inferido no documento). _[DOC-012 · §04 Sem mudança · ITM-00333]_
  - **Atenção (leitura do Claude):** item 9: Diz que o código não muda até a montagem. A decisão põe a versão no código, e está em aberto se ela é fixa.

## Qualidade (30)

### PRJ · Projetos e memorial (11)

- `UNI-00172` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Norma aplicável é aplicada e citada; exemplo: rampa NBR 9050 com i até 8,33%, comprimento de 6,00 para desnível de 0,50 e corrimão duplo 92/70. _[DOC-033 · §2.3 P2 Decisões · ITM-00862]_
- `UNI-00173` `REG-QUAL` `vigente` `rotina-anterior` O memorial passa por conferência visual do render PDF (texto cortado, altura do grupo, numeração) pelo Claude e validação de conteúdo por Diego; "perfeito" é aprovado e correção gera nova versão. _[DOC-033 · §3.3 Memorial · ITM-00913]_
- `UNI-00174` `REG-QUAL` `vigente` `rotina-anterior` O detalhamento passa por autoconferência de prévia PNG, legenda com todos os códigos do memorial na folha 01 e aprovação de Diego por "perfeito" ou foto anotada. _[DOC-033 · §3.3 Detalhamento · ITM-00914]_
- `UNI-00175` `REG-QUAL` `vigente` `rotina-anterior` O levantamento exige recalc sem erros (total_errors: 0), MATRIZ com 100% dos itens do memorial e assert do número de itens no script, que falha se o memorial mudar. _[DOC-033 · §3.3 Levantamento · ITM-00915]_
- `UNI-00239` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Conflito geométrico é sinalizado na prancha com "ATENÇÃO" e perguntado a Diego; exemplos: placas acima do LED ultrapassam a parede; lona menor que a goleira. _[DOC-033 · §2.3 P2 Decisões · ITM-00861]_
- `UNI-00251` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Dado faltante vira A CONFIRMAR explícito em vez de ser inventado, para Diego validar rápido. _[DOC-033 · §4.5 Por que esse método · ITM-00964]_
- `UNI-00258` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Diego quer memorial sempre no modelo Imagine e igual aos anteriores, detalhamento no mesmo padrão com logo e folhas de planta, elevações, laterais, móveis e elétrica, e folhas específicas quando pedir. _[DOC-033 · §11.2 itens 11-13 · ITM-01141]_
- `UNI-00259` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Diego quer elementos importantes cotados, levantamento por categoria com códigos e quantidades do memorial, medidas no padrão 0,00m, e cores definidas por ele registradas (cadeiras com assento preto). _[DOC-033 · §11.2 itens 14-17 · ITM-01142]_
- `UNI-00527` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 4: gera prévias PNG e autoconfere sobreposições, textos fora do quadro e caracteres não suportados (², ≈ e setas viram "m2", "aprox." e "<-"/"->"). _[DOC-033 · §2.3 P2 passo 4 · ITM-00855]_
- `UNI-00532` `REG-QUAL` `vigente` `rotina-anterior` Levantamento P3 termina com o .xlsx recalculado com 0 erros, MATRIZ confirmando 100% dos itens do memorial e arquivo salvo no Drive. _[DOC-033 · §2.4 P3 Fim · ITM-00864]_
- `UNI-00533` `REG-QUAL` `vigente` `conf:media` `rotina-anterior` Levantamento P3, passo 1: lê o memorial e confere o número de itens. _[DOC-033 · §2.4 P3 passo 1 · ITM-00866]_

### APR · Apresentações por IA (1)

- `UNI-01646` `REG-QUAL` `vigente` A IA usa só dados reais da Imagine e o que o cliente disse e não inventa números, cases ou promessas. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02278]_

### CRD · Credenciamento (1)

- `UNI-00206` `REG-QUAL` `proposto` A pasta do Credenciamento só é liberada, usada e publicada com todos os itens do checklist resolvidos (100%) e o ok da Maitê, para não esquecer documento nem levar multa por atraso; é a pasta que a Montagem usa no pavilhão. _[DOC-013 · §04 Pasta final · ITM-00380]_

### PRD · Produção e app dos setores (7)

- `UNI-00164` `REG-QUAL` `vigente` App da produção: qualidade é registrada como ok ou com erro, com observação, e o erro entra no relatório de erros. _[DOC-012 · §06 Qualidade · ITM-00340]_
- `UNI-00167` `REG-QUAL` `vigente` Baixa do setor exige foto do item pronto junto da ficha (o app lê o QR e vincula a foto), setor, responsável, data e hora e ok no app. _[DOC-020 · Seção 05 Baixa do setor · ITM-00583]_
  - Requisitos separados deste item: `UNI-00167.01`, `UNI-00167.02`
- `UNI-00167.01` `REG-QUAL` `proposto` Foto e ok são obrigatórios na produção, na expedição, na montagem e na desmontagem. _[DOC-091 · §6 Regras de negócio, Foto e ok · ITM-02088 · parte de UNI-00167]_
- `UNI-00167.02` `REG-QUAL` `proposto` A ficha técnica de produção tem campo obrigatório de foto do item produzido, e a ficha só fecha com o ok do líder. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, destino de cada item codificado, item a produzir · ITM-02307 · parte de UNI-00167]_
- `UNI-00168` `REG-QUAL` `vigente` `conf:media` Regras de filmagem: celular na horizontal com boa luz, um vídeo de 1 a 3 minutos por etapa, dois enquadramentos, trena e materiais à mostra e sem ruído de máquinas durante a fala. _[DOC-021 · §3 Como filmar · ITM-00587]_
- `UNI-00169` `REG-QUAL` `vigente` `conf:media` Em cada vídeo falar item e etapa, medidas, materiais, estrutura interna, encaixes, fixação, acabamento, divisão para transporte e erros comuns, e encerrar com Fim da etapa. _[DOC-021 · §4 O que falar · ITM-00588]_
- `UNI-00170` `REG-QUAL` `vigente` `conf:media` Checklist antes do envio: nome e etapa ditos, medidas na trena e faladas, materiais mostrados, encaixes de perto, áudio compreensível e tipo de item correto. _[DOC-021 · §6 Checklist antes de enviar · ITM-00590]_

### CVI · Comunicação visual (2)

- `UNI-00626` `REG-QUAL` `vigente` Conferência da IA nos arquivos: formato aceito, resolução para o tamanho final, modo de cor para impressão, medidas do projeto com sangria, fontes em curvas e linha de corte separada; a Comunicação visual define os valores. _[DOC-014 · §04 O que a IA confere · ITM-00409]_
- `UNI-01652` `REG-QUAL` `vigente` Cada peça de comunicação visual guarda quem deu cada ok, quando, e os arquivos e provas de cada etapa. _[DOC-091 · §26 Histórico · ITM-02329]_

### AUD · Audiovisual (1)

- `UNI-01122` `REG-QUAL` `proposto` `conf:media` Audiovisual: sem a conferência de medidas, elas podem não bater na feira, causando atraso ou retrabalho para o Audiovisual e para os outros setores. _[DOC-014 · §05 Conferência de medidas · ITM-00427]_

### EXP · Expedição e qualidade (2)

- `UNI-00165` `REG-QUAL` `inferido` Verificação de qualidade da expedição alimenta o relatório de conformidade (PLA-E22), pela Suellen (marcado como inferido). _[DOC-015 · §05 Composição no Portal · ITM-00457]_
- `UNI-00177` `REG-QUAL` `fato` `conf:media` Termo de Entrega de PDV: vistoria com o responsável da loja confere quantidades, danos, cores e artes, preços e validade, firmeza dos displays, locais combinados, corredores livres, regras da rede, limpeza e fotos de antes e depois. _[DOC-060 · §4 Vistoria na loja · ITM-01316]_

### LOG · Logística e frota (1)

- `UNI-00009.12` `REG-QUAL` `vigente` `conf:media` Antifraude (aprovado em 31/10): a IA confere data, posto, placa e horário das notas com a viagem e aponta repetições e desvios. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01805 · parte de UNI-00009]_

### MON · Montagem (3)

- `UNI-00166` `REG-QUAL` `vigente` Checklist de montagem: sem foto não há ok, e foto sem ok não conta. _[DOC-016 · MON-E5 · ITM-00478]_
- `UNI-00208` `REG-QUAL` `vigente` Ressalva do cliente: o produtor corrige até o dia do cliente, tira foto e o cliente dá o ok; se inviável, produtor de montagem e comercial decidem na hora e digitam a decisão no termo. _[DOC-016 · §05 Ressalvas · ITM-00500]_
- `UNI-00458.01` `REG-QUAL` `proposto` `conf:media` Montagem, etapa MON-E5: item montado com ok e foto; um não vale sem o outro. _[DOC-091 · §5 Montagem, MON-E5 · ITM-01977 · parte de UNI-00458]_

### TRP · Transversal (1)

- `UNI-00171` `REG-QUAL` `proposto` Régua de status única: RASCUNHO, EM APROVAÇÃO, APROVADO, SUBSTITUÍDO ou CANCELADO (com motivo); só a versão APROVADA vale para o setor seguinte. _[DOC-032 · §02 Status · ITM-00770]_

## Legal e fiscal (26)

### CRM · CRM e prospecção (3)

- `UNI-00178.02` `REG-LEGAL` `proposto` `conf:media` A gravação de áudio da abordagem exige aviso e consentimento do cliente. _[DOC-091 · §19 Prospecção na feira pelo app · ITM-02238 · parte de UNI-00178]_
- `UNI-00178.03` `REG-LEGAL` `proposto` `conf:media` Sem autorização do cliente, o vendedor não grava a conversa e registra por texto. _[DOC-091 · §19 Prospecção na feira pelo app · ITM-02248 · parte de UNI-00178]_
- `UNI-00898.01` `REG-LEGAL` `pendente` `conf:media` A gravação de áudio da abordagem em feira precisa de validação LGPD com a Maitê. _[DOC-091 · §19 Prospecção na feira pelo app, registro por estande, passo 4 · ITM-02239 · parte de UNI-00898]_

### REU · Reuniões com IA (1)

- `UNI-00190` `REG-LEGAL` `proposto` Toda reunião com cliente é gravada com aviso prévio no convite e no início da chamada (LGPD); gravação, ata e rafes ficam no cartão da demanda. _[DOC-030 · §04 e §06 · ITM-00728]_

### APR · Apresentações por IA (1)

- `UNI-00181.01` `REG-LEGAL` `proposto` `conf:media` Cada foto indica se pode ser usada em apresentação externa (autorização do cliente e da marca), e a IA só usa fotos liberadas. _[DOC-091 · §23 Banco de imagens para as apresentações · ITM-02283 · parte de UNI-00181]_

### COM · Comercial, proposta e contrato (2)

- `UNI-00193` `REG-LEGAL` `proposto` `conf:media` Cliente com crédito é Lucro Real, Presumido ou Simples híbrido; sem crédito é Simples Nacional tradicional ou pessoa física. Transição: CBS plena em 2027, IBS cresce de 2029 a 2032, modelo completo em 2033. _[DOC-036 · §Premissas · ITM-01202]_
- `UNI-00264` `REG-LEGAL` `proposto` Valores do simulador são ilustrativos, a alíquota de 26,5% é estimativa de referência (definitivas por lei e Senado), o valor-base é o mesmo nos três regimes e a simulação não substitui o contador do cliente. _[DOC-036 · §Premissas · ITM-01203]_

### FIN · Financeiro (2)

- `UNI-00891.01` `REG-LEGAL` `vigente` No ERP, as alíquotas de impostos ficam configuráveis, porque mudam ao longo da transição. _[DOC-091 · Respostas do Diego, Preço de venda (CUS-E4) · ITM-02031 · parte de UNI-00891]_
- `UNI-01618` `REG-LEGAL` `vigente` `conf:media` Impostos: lucro presumido, no modelo híbrido da transição para IBS e CBS. _[DOC-091 · §Respostas Impostos · ITM-02030]_

### CRD · Credenciamento (1)

- `UNI-00180` `REG-LEGAL` `proposto` Credenciamento exige RRT de projeto, RRT de execução e RRT de elétrica (projeto e execução) em todas as feiras, além do termo de responsabilidade. _[DOC-013 · §03 Checklist (RRT) · ITM-00373]_

### TIN · Tecnologia e experiências interativas (1)

- `UNI-00178.01` `REG-LEGAL` `proposto` `conf:media` LGPD: contagem e mapa de calor de forma anônima; identificação só com aviso e consentimento do visitante; validar com a Maitê. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 · ITM-02209 · parte de UNI-00178]_

### EXP · Expedição e qualidade (2)

- `UNI-00265` `REG-LEGAL` `fato` `conf:media` Termo de Entrega de PDV: ao assinar, contratante e loja aceitam os itens, salvo ressalvas da seção 5; após a entrega a guarda passa à loja e ao contratante, e a Imagine não responde por danos de clientes ou da equipe da loja. _[DOC-060 · §6 Condições · ITM-01317]_
- `UNI-00266` `REG-LEGAL` `fato` `conf:media` Termo de Entrega de PDV: manutenção e reposição fora das ressalvas são orçadas à parte, salvo contrato; pendências da seção 5 são resolvidas nos prazos indicados sem custo quando de responsabilidade da Imagine. _[DOC-060 · §6 Condições · ITM-01319]_

### LOG · Logística e frota (1)

- `UNI-00009.13` `REG-LEGAL` `vigente` Antifraude (aprovado em 31/10): descontos em folha só com autorização por escrito e conforme a lei, a validar com a Maitê. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01806 · parte de UNI-00009]_

### MKT · Marketing e acervo (1)

- `UNI-00181` `REG-LEGAL` `proposto` Autorização de uso de imagem do cliente e das pessoas que aparecem fica guardada junto do material; case só com autorização por escrito do cliente. _[DOC-018 · §04 Autorizações · ITM-00553]_
  - Requisitos separados deste item: `UNI-00181.01`

### INC · Incentivo e desempenho (5)

- `UNI-00187` `REG-LEGAL` `proposto` Para CLT, prêmio por desempenho (art. 457) é política interna da empresa, paga por feira ou trimestre, fora da base previdenciária conforme a Solução de Consulta COSIT 10/2026. _[DOC-023 · §05 Forma legal de pagamento · ITM-00620]_
- `UNI-00188` `REG-LEGAL` `proposto` PLR (Lei 10.101/2000) exige negociação com comissão de empregados e sindicato, regras prévias, não pode ser só individual e é paga no máximo 2 vezes por ano com 3 meses de intervalo. _[DOC-023 · §05 Forma legal de pagamento · ITM-00621]_
- `UNI-00189` `REG-LEGAL` `proposto` Para prestadores (PJ ou autônomos) como montadores e plantonistas, o bônus entra por cláusula de desempenho no contrato, por feira. _[DOC-023 · §05 Forma legal de pagamento · ITM-00622]_
- `UNI-00958.01` `REG-LEGAL` `pendente` `conf:media` Regras de fidelidade e indicação e o desenho legal do incentivo dependem de validação financeira, jurídica e contábil. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02155 · parte de UNI-00958]_
- `UNI-01123` `REG-LEGAL` `proposto` Forma de pagamento errada pode transformar o bônus em salário, com encargos; prêmio negociado com empregados deixa de ser prêmio (COSIT 10/2026), por isso o negociado vai pela PLR. _[DOC-023 · §05 Atenção · ITM-00623]_

### TRP · Transversal (6)

- `UNI-00178` `REG-LEGAL` `proposto` Toda solução que coleta dados, grava vídeo ou publica em rede social exige consentimento claro na tela e regras validadas pela Maitê. _[DOC-004 · Regras gerais, item 1 · ITM-00099]_
  - Requisitos separados deste item: `UNI-00178.01`, `UNI-00178.02`, `UNI-00178.03`
- `UNI-00182` `REG-LEGAL` `proposto` `conf:media` A política vale para Comercial, Compras e Operação (Planejamento, Produção, Logística, Expedição, Almoxarifado e Montagem), no RS e em SP. _[DOC-022 · §2 A quem se aplica · ITM-00594]_
- `UNI-00183` `REG-LEGAL` `proposto` A empresa monitora o WhatsApp corporativo e os arquivos dos computadores corporativos, e um agente de IA aponta sinais de risco como pagamento por fora, valores divergentes, fornecedor sem cadastro e combinações fora do sistema. _[DOC-022 · §5 Monitoramento · ITM-00599]_
- `UNI-00184` `REG-LEGAL` `proposto` Aparelhos, números e contas pessoais não são monitorados em nenhuma hipótese. _[DOC-022 · §5 Monitoramento, item 4 · ITM-00601]_
- `UNI-00185` `REG-LEGAL` `proposto` O monitoramento se limita a equipamentos e contas da empresa; só Diego e Maitê acessam os dados, guardados pelo prazo definido pelo jurídico; o colaborador é informado antes, por escrito. _[DOC-022 · §6 Privacidade e LGPD · ITM-00602]_
- `UNI-00186` `REG-LEGAL` `proposto` Uso de número ou aparelho pessoal em negociações, ou pagamento combinado fora do sistema, é tratado conforme regulamento interno e legislação trabalhista, após apuração. _[DOC-022 · §7 Descumprimento · ITM-00603]_

## Cálculos e critérios (52)

### PLC · Planejamento comercial (1)

- `UNI-00621` `REG-CALC` `proposto` Listas por feira: A conhecidos (abordados primeiro), B potenciais novos (prospecção ativa), C reserva (segundo movimento) e Pacote (várias feiras no ano, exceção de metragem). _[DOC-007 · COM-E4, §03 Listas · ITM-00140]_

### DIS · Distribuição de clientes (2)

- `UNI-00623` `REG-CALC` `vigente` Classe Prioridade é 50 m² ou mais e R$ 1.500/m² ou mais; o restante é Secundária, inclusive abaixo de 50 m²; Pacote é exceção para cliente fiel. _[DOC-007 · COM-E7, §03 Classes · ITM-00146]_
  - Requisitos separados deste item: `UNI-00623.01`
- `UNI-00623.01` `REG-CALC` `proposto` Classificação automática de cliente: Prioridade (50 m² ou mais e R$ 1.500/m² ou mais), Secundária (o resto) e Pacote (exceção). _[DOC-091 · §5 Comercial, COM-E7 · ITM-01666 · parte de UNI-00623]_

### PRJ · Projetos e memorial (2)

- `UNI-00151` `REG-CALC` `vigente` `rotina-anterior` Os campos do memorial nunca são alterados no levantamento e toda quantidade calculada traz MEMÓRIA DE CÁLCULO explícita. _[DOC-033 · §4.4 Regras gerais · ITM-00958]_
- `UNI-00647` `REG-CALC` `vigente` O RESUMO conta itens por setor produtivo e por origem em cada ambiente, com total, itens válidos (ATIVO mais ALTERADO) e cancelados, como base para fichas de produção e compras. _[DOC-072 · Aba RESUMO, L1-L21 · ITM-01442]_

### CUS · Custos (11)

- `UNI-00637` `REG-CALC` `vigente` `rotina-anterior` O custo total da linha é =IF(OR(H="",K=""),0,H*K), com H = qtd p/ orçamento e K = custo unitário; o total da categoria soma a coluna L e o RESUMO calcula o % do total geral. _[DOC-033 · §4.4 Custo total · ITM-00955]_
- `UNI-00639` `REG-CALC` `vigente` `rotina-anterior` A folga de cabos é 10% da soma das linhas cujo serviço contém "Cabo"; em um job o item 8.1 foi renomeado para "Régua com 4 tomadas + 10 m de cabo" para sair da soma (bug corrigido). _[DOC-033 · §4.4 Folga de cabos · ITM-00957]_
- `UNI-00750.01` `REG-CALC` `vigente` Preço de venda gerado pela IA após o ok da Maitê: custos + logística e operação + margem inicial de 35% + impostos. _[DOC-091 · §5 Custos, novo fluxo de Custos com IA, passo 5; Respostas do Diego, Preço de venda (CUS-E4) · ITM-01818 · parte de UNI-00750]_
  - **Decisão (Ver decisão do item 19):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- `UNI-00750.03` `REG-CALC` `proposto` Projetos são comparados por cidade e unidade, m², número de estandes, tamanho da equipe, dias de montagem e complexidade. _[DOC-091 · §5 Custos, base histórica de custos realizados, como compara · ITM-01824 · parte de UNI-00750]_
- `UNI-00750.04` `REG-CALC` `proposto` A média histórica só vale com no mínimo 5 projetos parecidos; valores fora do padrão são marcados e revisados antes de entrar e a média é refeita a cada projeto concluído. _[DOC-091 · §5 Custos, base histórica de custos realizados, cuidados · ITM-01826 · parte de UNI-00750]_
- `UNI-01152.01` `REG-CALC` `vigente` Preço de venda (CUS-E4): preço final = custo de materiais + logística e operação + margem + impostos. _[DOC-091 · Respostas do Diego, Preço de venda (CUS-E4) · ITM-02027 · parte de UNI-01152]_
- `UNI-01518` `REG-CALC` `proposto` `conf:media` Ao definir a unidade de produção (PLA-E1), o sistema recalcula o custo com os preços reais da unidade; a diferença entre orçado e real aparece ao Financeiro como margem extra no centro de custos. _[DOC-091 · §5 Recálculo pela unidade (PLA-E1) · ITM-01811]_
- `UNI-01575` `REG-CALC` `vigente` `conf:media` No pedido de aprovação, a IA compara o orçamento com o que o cliente pagou na última feira antes da Imagine (dado do briefing), em valor total e R$/m², e o classifica como muito acima, dentro ou muito abaixo. _[DOC-091 · §5 Novo fluxo de Custos com IA, aprovação do Diego · ITM-01820]_
- `UNI-01605` `REG-CALC` `proposto` Combustível da verba de viagem: quilômetros a rodar ÷ consumo do veículo (km por litro) × preço do litro, pela tabela padrão e não por estimativa livre; pedágio e estacionamento entram com o valor previsto da rota. _[DOC-091 · §5 Frota, FRT-E6 · ITM-01797]_
- `UNI-01609` `REG-CALC` `vigente` Como a unidade só é definida no Planejamento, a IA monta a planilha de custos com o maior valor entre as duas unidades, item a item. _[DOC-091 · §5 Custos por unidade (regra de 31/10) · ITM-01810]_
- `UNI-01658` `REG-CALC` `vigente` No orçamento a IA estima o custo de embalagem a partir do memorial e do histórico, e a quantidade exata vem da ficha depois do contrato. _[DOC-091 · §28 Embalagem, Custos · ITM-02344]_

### COM · Comercial, proposta e contrato (3)

- `UNI-00644` `REG-CALC` `proposto` Lucro Presumido e Simples híbrido: nota = base x (1 + alíquota), CBS/IBS destacado e crédito = base x alíquota, custo líquido com crédito = base, custo sem crédito = nota. _[DOC-036 · Script, função calc() · ITM-01200]_
- `UNI-00645` `REG-CALC` `proposto` Simples Nacional: nota = base, CBS/IBS = base x DAS x parte CBS/IBS, crédito do cliente igual a esse valor, custo líquido = base menos crédito; vantagem para cliente sem crédito = nota do Presumido menos nota do Simples. _[DOC-036 · Script, função calc() · ITM-01201]_
- `UNI-01610` `REG-CALC` `vigente` Classificação do orçamento frente ao cliente: muito acima é 10% ou mais acima do que o cliente pagou, muito abaixo é 10% ou mais abaixo e dentro é diferença menor que 10%. _[DOC-091 · §5 Novo fluxo de Custos com IA, aprovação do Diego · ITM-01821]_

### FIN · Financeiro (2)

- `UNI-00751.02` `REG-CALC` `vigente` Remuneração por hora de projetistas: cada projeto tem uma planilha com as horas estimadas, e o valor da hora é calculado e as horas são acumuladas por projeto. _[DOC-091 · Respostas do Diego, Remuneração por hora · ITM-02039 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
- `UNI-00751.03` `REG-CALC` `vigente` Valor da hora do projetista: negociado com cada um e parametrizado no ERP, por pessoa; o pagamento usa as horas realizadas, não as estimadas. _[DOC-091 · Respostas do Diego, Regras da hora · ITM-02040 · parte de UNI-00751]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`

### CMP · Compras (1)

- `UNI-00752.09` `REG-CALC` `proposto` Fonte histórico: compara com o último preço pago e com a média dos últimos meses do mesmo material. _[DOC-091 · §16 Compras, pesquisa paralela de preços, fonte 1 · ITM-02215 · parte de UNI-00752]_

### PRD · Produção e app dos setores (11)

- `UNI-00195` `REG-CALC` `vigente` Pintura: tipo de tinta, demãos e litros são calculados por peça e a compra é feita por projeto. _[DOC-002 · §35 a 42 Pintura · ITM-00040]_
  - Requisitos separados deste item: `UNI-00195.01`, `UNI-00195.02`
- `UNI-00195.01` `REG-CALC` `proposto` A IA calcula a área a pintar de cada peça pelo 3D e detalhamento, multiplica pelas demãos, divide pelo rendimento do produto e aplica percentual de perda, resultando em litros de tinta, selador e diluente na ficha. _[DOC-091 · §32 Pintura especificada e calculada na ficha técnica · ITM-02368 · parte de UNI-00195]_
- `UNI-00195.02` `REG-CALC` `proposto` A soma das peças gera a lista de compra de tintas por tipo e cor, descontando o estoque, na base de compras da unidade. _[DOC-091 · §32 Pintura especificada e calculada na ficha técnica · ITM-02370 · parte de UNI-00195]_
- `UNI-00196.02` `REG-CALC` `proposto` `conf:media` Na moldura de painel de LED, a IA usa a especificação do painel (gabinetes, quantidade, montagem), respeita a margem de instalação em volta do painel e depois aplica a moldura, com margem padrão configurável. _[DOC-091 · §33 Marcenaria, duas categorias e padrões construtivos, moldura de LED · ITM-02375 · parte de UNI-00196]_
- `UNI-00197` `REG-CALC` `vigente` Elétrica tem catálogo e calcula fita LED, neon, fontes, cabos e carga total do estande. _[DOC-002 · §35 a 42 Elétrica · ITM-00042]_
  - Requisitos separados deste item: `UNI-00197.01`, `UNI-00197.02`, `UNI-00197.03`
- `UNI-00197.01` `REG-CALC` `proposto` Para item com iluminação, a IA calcula o neon flex ou LED de contorno pelo perímetro, a fita em face ou sanca pelas linhas e espaçamento ou pelo comprimento, e módulos pela área e densidade recomendada. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED · ITM-02383 · parte de UNI-00197]_
- `UNI-00197.02` `REG-CALC` `proposto` A IA arredonda pelo tamanho mínimo de corte, soma margem de perda, dimensiona a fonte pela potência total com folga de segurança configurável e calcula o cabeamento até o ponto de energia. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED · ITM-02384 · parte de UNI-00197]_
- `UNI-00197.03` `REG-CALC` `proposto` A soma de metros de fita e neon, fontes e cabos vira a lista de compra da elétrica e a carga elétrica total do estande, que alimenta a planta elétrica, a RRT e o credenciamento. _[DOC-091 · §34 Elétrica, biblioteca, catálogo e cálculo de LED · ITM-02385 · parte de UNI-00197]_
- `UNI-00900.02` `REG-CALC` `proposto` `conf:media` O rendimento de cada produto e marca e o percentual de perda ficam cadastrados no sistema, ajustáveis pelo setor de pintura. _[DOC-091 · §32 Pintura especificada e calculada na ficha técnica, passo 3 · ITM-02369 · parte de UNI-00900]_
- `UNI-01664` `REG-CALC` `vigente` O setor de pintura registra o consumo real e a IA compara com o previsto e ajusta os cálculos. _[DOC-091 · §32 Pintura, Aprendizado · ITM-02371]_
- `UNI-01665` `REG-CALC` `vigente` A elétrica registra o consumo real, que é comparado com o previsto. _[DOC-091 · §34 Elétrica, Aprendizado · ITM-02386]_

### DCO · Decoração (1)

- `UNI-01667` `REG-CALC` `vigente` A IA calcula os materiais por item de decoração (tecidos, fitas, enchimento, galhos, adornos, colas, fixações) e soma por projeto para a base de compras. _[DOC-091 · §37 Decoração, Materiais e compras · ITM-02411]_

### EXP · Expedição e qualidade (2)

- `UNI-01657` `REG-CALC` `vigente` Ao gerar cada ficha técnica, a IA define a embalagem ideal pelo tipo, medidas, peso e fragilidade do item (ex.: plástico bolha, filme stretch, cantoneira, caixa, manta), calcula as quantidades e as inclui na lista de materiais da ficha. _[DOC-091 · §28 Embalagem por item · ITM-02341]_
- `UNI-01659` `REG-CALC` `vigente` A IA compara a embalagem prevista com a consumida em cada projeto e ajusta os cálculos. _[DOC-091 · §28 Embalagem, Aprendizado · ITM-02345]_

### LOG · Logística e frota (5)

- `UNI-00009.09` `REG-CALC` `vigente` `conf:media` Antifraude (aprovado em 31/10): o preço do litro é limitado pela média da região (tabela da ANP); acima disso exige justificativa. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01802 · parte de UNI-00009]_
- `UNI-00900.01` `REG-CALC` `proposto` A IA indica tipo e quantidade de veículos (utilitário pequeno, 3/4, caminhão baú, truck baú, carreta baú) e a distribuição da carga, com capacidades configuráveis a partir de dados reais das transportadoras. _[DOC-091 · §31 Estimativa de volume de carga por projeto, passo 2 · ITM-02360 · parte de UNI-00900]_
- `UNI-01660` `REG-CALC` `vigente` Com medidas e peso de cada item da ficha técnica, já com a embalagem, a IA calcula o volume (m³) e o peso total do projeto, considerando itens frágeis ou que não podem ser empilhados. _[DOC-091 · §31 Estimativa de volume de carga · ITM-02359]_
- `UNI-01661` `REG-CALC` `vigente` Antes do contrato a IA faz uma estimativa preliminar de carga a partir do memorial e de projetos parecidos, para o custo de frete no orçamento. _[DOC-091 · §31 Estimativa de volume de carga, Antes do contrato · ITM-02362]_
- `UNI-01662` `REG-CALC` `vigente` Depois do carregamento, o sistema compara o estimado com os veículos realmente usados e ajusta os cálculos. _[DOC-091 · §31 Estimativa de volume de carga, Aprendizado · ITM-02363]_

### CLI · Portal do cliente (1)

- `UNI-00782.05` `REG-CALC` `proposto` Congelamento: o sistema calcula a data limite de alterações a partir do carregamento (D0); padrão D-10, configurável por projeto. _[DOC-091 · §12 Experiência do cliente no Portal, congelamento do projeto · ITM-02179 · parte de UNI-00782]_

### INC · Incentivo e desempenho (9)

- `UNI-00629` `REG-CALC` `substituido-parcial` Pesos sugeridos do placar: prazo 40%, qualidade 35% e eficiência 25%, medidos a partir de cronograma reverso, termo de aceite, plantão, nota do cliente e uso do Portal. _[DOC-023 · §03 Os três pilares · ITM-00616]_
  - **Continua valendo:** Os pesos do placar do incentivo seguem como sugestão.
  - **Mudou:** O placar convive com o Índice de Desempenho do Setor, e o uso de cada um está em aberto (item-23).
- `UNI-00630` `REG-CALC` `proposto` Níveis do placar: gatilho da empresa (bônus só se o resultado atingir a meta), setor e equipe da feira 50%, feira ou período 30% e individual 20%. _[DOC-023 · §03 Níveis do placar · ITM-00617]_
  - Requisitos separados deste item: `UNI-00630.01`
- `UNI-00630.01` `REG-CALC` `proposto` Níveis do programa de incentivo: setor 50%, feira 30%, individual 20%; implantação com 3 meses só medindo e depois um piloto de 1 trimestre. _[DOC-091 · §5 Programa de incentivo, níveis e implantação (depois de INC-E8) · ITM-02025 · parte de UNI-00630]_
  - **Decisão (Ver decisão do item 23):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-00781.01` `REG-CALC` `a-conferir` `conf:media` Métrica oficial: nota de 0 a 100 calculada pelo sistema com os registros de cada setor. _[DOC-091 · §5 Custos e transversais, Índice de Desempenho do Setor (métrica oficial, 31/10) · ITM-01847 · parte de UNI-00781]_
  - **Decisão (Ver decisão do item 23):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-01583` `REG-CALC` `decisao-diego` Peso Prazo 25%: etapas entregues até a data de corte do cronograma. _[DOC-091 · §5 Índice de Desempenho do Setor · ITM-01848]_
  - **Decisão (Decidido por Diego):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-01584` `REG-CALC` `decisao-diego` Peso Assertividade 25%: entregas aprovadas de primeira, sem retorno nem retrabalho. _[DOC-091 · §5 Índice de Desempenho do Setor · ITM-01849]_
  - **Decisão (Decidido por Diego):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-01585` `REG-CALC` `decisao-diego` Peso Produtividade 20%: fichas, itens ou demandas concluídas em relação ao volume planejado. _[DOC-091 · §5 Índice de Desempenho do Setor · ITM-01850]_
  - **Decisão (Decidido por Diego):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-01586` `REG-CALC` `decisao-diego` Peso Custo 15%: previsto × realizado, sem custos adicionais causados pelo setor. _[DOC-091 · §5 Índice de Desempenho do Setor · ITM-01851]_
  - **Decisão (Decidido por Diego):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-01587` `REG-CALC` `decisao-diego` Peso Satisfação 15%: nota do cliente no pós-feira para a etapa do setor e feedback dos setores que recebem o trabalho. _[DOC-091 · §5 Índice de Desempenho do Setor · ITM-01852]_
  - **Decisão (Decidido por Diego):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`

### TRP · Transversal (1)

- `UNI-00789.01` `REG-CALC` `proposto` `conf:media` O sistema soma a embalagem de todos os itens e gera a lista total de compra de embalagem do projeto na base de compras da unidade, com o estoque do almoxarifado descontado. _[DOC-091 · §28 Embalagem calculada na ficha técnica, passo 2 · ITM-02342 · parte de UNI-00789]_

## Regras operacionais (93)

### CRM · CRM e prospecção (1)

- `UNI-01640` `REG-OPER` `vigente` `conf:media` O vendedor confirma ou ajusta no app a data do próximo contato sugerida pela IA. _[DOC-091 · §19 Próximo contato automático · ITM-02253]_

### REU · Reuniões com IA (1)

- `UNI-01639` `REG-OPER` `vigente` A data do compromisso é a combinada pelo cliente; se foi combinado só um período, a IA escolhe uma data dentro dele; sem data, a IA sugere pelo contexto, como abertura da concorrência ou próxima feira. _[DOC-091 · §19 Próximo contato automático · ITM-02252]_

### PRJ · Projetos e memorial (23)

- `UNI-00150` `REG-OPER` `vigente` `rotina-anterior` Padrões de escrita do memorial: medidas "6,00m x 2,70m", área "18,00m²", altura "h= 2,70m" e itens com três medidas "C x P x A". _[DOC-033 · §4.2 Padrões de escrita · ITM-00948]_
- `UNI-00210` `REG-OPER` `vigente` Produção de evento e Gestão de obra são projetos-mãe que reúnem as demais categorias como subprojetos, com cronograma mestre e fornecedores de terceiros. _[DOC-019 · Introdução, Projetos-mãe · ITM-00578]_
  - Requisitos separados deste item: `UNI-00210.01`, `UNI-00210.02`
- `UNI-00210.01` `REG-OPER` `proposto` Quando a categoria principal é Produção de evento, o projeto vira projeto-mãe, as demais categorias viram subprojetos com seus fluxos normais, e todos entram no cronograma mestre do evento. _[DOC-091 · §41 Categorias de serviço, regras · ITM-02451 · parte de UNI-00210]_
- `UNI-00210.02` `REG-OPER` `proposto` Gestão de obra é categoria própria (ex.: obra de showroom de incorporadora), funciona como projeto-mãe igual à Produção de evento e reúne serviços da Imagine e fornecedores de obra sob os três tipos de fornecedor. _[DOC-091 · §41 Categorias de serviço, categorias acrescentadas, Gestão de obra · ITM-02459 · parte de UNI-00210]_
- `UNI-00233` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Quando o áudio diverge da prancha, vale o que Diego ditou e a divergência entra como A CONFIRMAR na linha ÁREA ou em OBSERVAÇÕES; exemplo: carpete 10x15 contra zoneamento 15x20. _[DOC-033 · §2.2 P1 passo 3 · ITM-00834]_
- `UNI-00234` `REG-OPER` `vigente` `rotina-anterior` Item do memorial sem medida informada recebe na coluna DIMENSÕES "-", "conforme projeto/detalhamento" ou "A CONFIRMAR". _[DOC-033 · §2.2 P1 Decisões · ITM-00842]_
- `UNI-00235` `REG-OPER` `vigente` `rotina-anterior` Item fornecido pelo cliente entra no memorial com o texto "FORNECIDO PELO CLIENTE"; exemplos: cachepôs, bebedouros, capas de cadeira. _[DOC-033 · §2.2 P1 Decisões · ITM-00843]_
- `UNI-00236` `REG-OPER` `vigente` `rotina-anterior` Item opcional entra no memorial marcado como opcional; exemplo: púlpito padrão Imagine "previsto caso o cliente solicite". _[DOC-033 · §2.2 P1 Decisões · ITM-00844]_
- `UNI-00237` `REG-OPER` `vigente` `rotina-anterior` Quando cor ou modelo não foi definido, o assistente adota a referência do 3D e marca "a definir"; exemplo: "3D: preto". _[DOC-033 · §2.2 P1 Decisões · ITM-00848]_
- `UNI-00238` `REG-OPER` `vigente` `rotina-anterior` Algo que aparece no 3D mas não no memorial é desenhado como "SUGERIDO / não previsto no memorial" e marcado A CONFIRMAR; exemplos: ponto de house mix, escada do palco. _[DOC-033 · §2.3 P2 Decisões · ITM-00860]_
- `UNI-00241` `REG-OPER` `vigente` `rotina-anterior` Itens complementares necessários mas fora do memorial (quadro, disjuntores, cabos, folga, mão de obra, documentação da feira) entram com código NN-Ck e fundo lilás. _[DOC-033 · §2.4 P3 passo 4 · ITM-00870]_
- `UNI-00242` `REG-OPER` `vigente` `rotina-anterior` Categoria sem itens fica na planilha como "NÃO SE APLICA" e não é apagada, para manter a estrutura comparável entre projetos; exemplo: vidraçaria em um job. _[DOC-033 · §2.4 P3 Decisões · ITM-00874]_
- `UNI-00244` `REG-OPER` `vigente` `rotina-anterior` Quantidade que depende de confirmação fica vazia (amarela) e vai para OBS; exemplos: painel LED e seguro. _[DOC-033 · §2.4 P3 Decisões · ITM-00876]_
- `UNI-00268` `REG-OPER` `vigente` Item cancelado fica oculto no PDF do cliente pelo filtro da coluna STATUS (reaplicar o filtro antes de gerar o PDF); colunas H a Q recolhidas e área de impressão em B:G. _[DOC-072 · Aba LEIA-ME, L2 e L37; versão V02 · ITM-01438]_
- `UNI-00526` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Detalhamento P2, passo 1: define o sistema de coordenadas em cm; exemplo de um job: X 0 a 1200, Y 0 a 800, com Y=0 na entrada. _[DOC-033 · §2.3 P2 passo 1 · ITM-00852]_
- `UNI-00636` `REG-OPER` `vigente` `conf:media` `rotina-anterior` As categorias fixas do levantamento são tapeçaria, comunicação visual, locação de móveis, marcenaria, vidraçaria, audiovisual, elétrica e documentação da feira, mais a categoria 09 fornecido pelo cliente quando houver. _[DOC-033 · §2.4 P3 passo 2 · ITM-00867]_
- `UNI-00638` `REG-OPER` `vigente` `rotina-anterior` Cores do levantamento: amarelo é a preencher, azul é valor digitado, verde é vínculo com outra aba e lilás é complementar NN-Ck. _[DOC-033 · §4.4 Cores · ITM-00956]_
- `UNI-00646` `REG-OPER` `substituido-parcial` Setor produtivo (Marcenaria, Serralheria, Pintura, Elétrica, Tapeçaria, Comunicação visual, Montagem, Não se aplica) separa os itens nas FIC; origem (próprio, terceirizado, locado, estoque Imagine, por conta do cliente) define se gera OC, OS ou nenhuma compra. _[DOC-072 · Aba LEIA-ME, L25-L26; aba LISTAS · ITM-01441]_
  - **Continua valendo:** O setor produtivo separa os itens nas fichas, e a origem define se gera ordem de compra, ordem de serviço ou nenhuma compra.
  - **Mudou:** FT no lugar de FIC (item-12).
- `UNI-00787` `REG-OPER` `vigente` Cada item tem destino definido (produzir, locar, comprar ou estoque) e ficha impressa com QR e foto. _[DOC-002 · §23 a 34 Decisões de 01/11 parte 1 · ITM-00037]_
- `UNI-00795` `REG-OPER` `vigente` `rotina-anterior` D14: categorias fixas do levantamento (tapeçaria, comunicação visual, locação de móveis, marcenaria, vidraçaria, audiovisual, elétrica, documentação) mais 09 fornecido pelo cliente quando houver, lista ditada por Diego. _[DOC-033 · §6 D14 · ITM-01058]_
- `UNI-01642` `REG-OPER` `vigente` O briefing só é liberado para o Planejamento com os campos obrigatórios do formulário de entrada preenchidos. _[DOC-091 · §20 Formulário completo de entrada do cliente · ITM-02256]_
- `UNI-01650` `REG-OPER` `vigente` Nenhum detalhamento ou ficha técnica é gerado antes da formalização do contrato. _[DOC-091 · §25 Dois momentos distintos · ITM-02314]_
- `UNI-01666` `REG-OPER` `vigente` Ao gerar cada ficha técnica, a IA consulta obrigatoriamente a biblioteca de padrões construtivos (incluindo os captados por vídeo), e a ficha indica o padrão usado (código e versão). _[DOC-091 · §35 Regra para a geração das fichas técnicas · ITM-02393]_

### BIB · Biblioteca de itens e locações (3)

- `UNI-00211` `REG-OPER` `vigente` `conf:media` Os vídeos ficam guardados como material de treinamento para novos colaboradores. _[DOC-021 · §7 Depois do envio · ITM-00592]_
- `UNI-00790.02` `REG-OPER` `proposto` `conf:media` O processamento dos vídeos é feito a partir de vídeos gravados, não em tempo real, e as medidas exatas dependem da narração e da trena aparecendo no vídeo. _[DOC-091 · §35 Padrões construtivos por vídeo, observação · ITM-02392 · parte de UNI-00790]_
- `UNI-00790.03` `REG-OPER` `proposto` `conf:media` Os itens de decoração entram na biblioteca de itens e no banco de referências, e os padrões de produção podem ser ensinados por vídeo (lista de gravação da Marília). _[DOC-091 · §37 Setor de Decoração, passo 6 · ITM-02414 · parte de UNI-00790]_

### CUS · Custos (5)

- `UNI-00240` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Fornecedor e custo unitário ficam em amarelo para a equipe de custos (Carol e Diego, conforme quadro) preencher; o mesmo item pode aparecer em mais de uma categoria, como parede em marcenaria e tapeçaria. _[DOC-033 · §2.4 P3 passo 3 · ITM-00869]_
- `UNI-00243` `REG-OPER` `vigente` `rotina-anterior` Item fornecido pelo cliente entra na categoria 09 com custo unitário 0. _[DOC-033 · §2.4 P3 Decisões · ITM-00875]_
- `UNI-00750.02` `REG-OPER` `proposto` Todos os agentes de IA (custos, compras, frete, logística, verbas de viagem, equipes terceirizadas, frota) gravam o custo realizado de cada projeto numa base única, norteadora do preço de venda. _[DOC-091 · §5 Custos, base histórica de custos realizados · ITM-01822 · parte de UNI-00750]_
- `UNI-00762` `REG-OPER` `substituido-parcial` Respondido em 28/10: Carol só ajusta a planilha quando o projeto muda; logística e operação continuam lançadas pelo Financeiro; base de preços atualizada todo mês. _[DOC-009 · §07 Respondido em 28/10 · ITM-00236]_
  - **Continua valendo:** A base de preços é atualizada todo mês.
  - **Mudou:** A IA gera a planilha, e Custos confere e aprova (item-1); em mudança de projeto, gera nova versão. Logística e operação não são lançadas pelo Financeiro (item-19).
- `UNI-01608` `REG-OPER` `vigente` Os preços de materiais e de mão de obra diferem entre São Paulo e Rio Grande do Sul; a planilha mãe e a base de preços de mercado passam a ter valores separados por unidade. _[DOC-091 · §5 Custos por unidade · ITM-01809]_

### COM · Comercial, proposta e contrato (7)

- `UNI-00112.06` `REG-OPER` `proposto` `conf:media` A decisão sobre o desconto fica registrada no projeto e entra no fechamento do mês. _[DOC-091 · §5 Custos (bloco após Frota), controle de desconto · ITM-01842 · parte de UNI-00112]_
- `UNI-00201` `REG-OPER` `vigente` A categoria é selecionada na entrada da demanda (uma principal e complementares) e define briefing, etapas, setores, cronograma, custos e contrato. _[DOC-002 · §44 Categorias de serviço · ITM-00053]_
- `UNI-00203` `REG-OPER` `vigente` Mínimo de 200 m² vendidos pela Imagine em cada feira, para concentrar mão de obra em feiras com mais metragem. _[DOC-007 · COM-E2, §08 · ITM-00137]_
- `UNI-00219` `REG-OPER` `proposto` A proposta só sai por e-mail pelo sistema, com assinatura eletrônica de aceite; nunca por WhatsApp ou canal sem aceite oficial. _[DOC-030 · §03 E14 e §06 · ITM-00716]_
- `UNI-00220` `REG-OPER` `proposto` Desde o lead no CRM, todo pedido de ajuste ou alteração de projeto ou proposta é feito pelo sistema, com registro e aprovação, nunca por fora, para evitar desvios que viram bola de neve. _[DOC-030 · §03 lead e §06 · ITM-00722]_
- `UNI-00400` `REG-OPER` `proposto` `conf:media` Assistente fica em cópia de todos os e-mails do fluxo comercial, entradas e saídas de todos os clientes. _[DOC-011 · ACM-E12 · ITM-00276]_
- `UNI-01611` `REG-OPER` `proposto` Ao marcar uma proposta como perdida, o vendedor deve registrar o motivo; sem ele o status não muda. _[DOC-091 · §5 Relatório comercial mensal · ITM-01845]_

### FIN · Financeiro (2)

- `UNI-00763.04` `REG-OPER` `proposto` Comandas não têm tolerância de diferença, e toda diferença passa pelo Financeiro. _[DOC-091 · §6 Regras de negócio e bloqueios, Comandas · ITM-02085 · parte de UNI-00763]_
  - **Decisão (Ver decisão do ponto 3):** Toda comanda continua passando pelo Financeiro. O alerta de preço vale só para o preço de compra. Registro: `REGISTROS/decisao__20261104-1855-comanda-financeiro-gcj1.md`
- `UNI-01606` `REG-OPER` `proposto` Se o gasto for menor que o liberado, a IA notifica o Financeiro e o solicitante devolve a diferença; se for maior, a empresa reembolsa o solicitante. _[DOC-091 · §5 Frota, FRT-E6 · ITM-01799]_

### CMP · Compras (11)

- `UNI-00199` `REG-OPER` `vigente` Fornecedor de serviço Imagine: a Imagine contrata e o cliente paga a Imagine. Fornecedor intermediado: a Imagine contrata e paga, repassando ao cliente. _[DOC-002 · §43 Produção de evento, tabela de fornecedores · ITM-00048]_
  - Requisitos separados deste item: `UNI-00199.01`, `UNI-00199.02`
- `UNI-00199.01` `REG-OPER` `proposto` Serviço Imagine: a Imagine contrata, o cliente paga a Imagine, e segue o fluxo normal de produção. _[DOC-091 · §40 Produção de Evento, tipos de fornecedor · ITM-02431 · parte de UNI-00199]_
- `UNI-00199.02` `REG-OPER` `proposto` Fornecedor intermediado: a Imagine contrata e paga, repassa ao cliente, e o fornecedor entra em custos e compras. _[DOC-091 · §40 Produção de Evento, tipos de fornecedor · ITM-02432 · parte de UNI-00199]_
- `UNI-00200` `REG-OPER` `vigente` Fornecedor gerenciado: a Imagine contrata em nome do cliente e o cliente paga direto, fora do caixa da Imagine. _[DOC-002 · §43 Produção de evento, tabela de fornecedores · ITM-00049]_
  - Requisitos separados deste item: `UNI-00200.01`, `UNI-00200.02`
- `UNI-00200.01` `REG-OPER` `proposto` Fornecedor gerenciado: a Imagine contrata em nome do cliente, o cliente paga direto, a Imagine controla prazo, entrega e qualidade, e o valor não entra no caixa. _[DOC-091 · §40 Produção de Evento, tipos de fornecedor · ITM-02433 · parte de UNI-00200]_
- `UNI-00225` `REG-OPER` `proposto` OC aberta: contrato de fornecimento com preço, validade e teto negociados e aprovados uma vez, com chamadas que só conferem preço e saldo. _[DOC-032 · §05 Compras recorrentes · ITM-00786]_
- `UNI-00227` `REG-OPER` `proposto` "Repetir compra" copia fornecedor e itens de uma OC antiga; se a cotação estiver vencida, volta para COT antes da aprovação. _[DOC-032 · §05 Compras recorrentes · ITM-00788]_
- `UNI-00752` `REG-OPER` `vigente` Compras: pesquisa paralela de preços com alerta de 10%, agenda de chegadas e conciliação diária. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00028]_
  - Requisitos separados deste item: `UNI-00752.01`, `UNI-00752.02`, `UNI-00752.03`, `UNI-00752.04`, `UNI-00752.05`, `UNI-00752.06`, `UNI-00752.07`, `UNI-00752.08`, `UNI-00752.09`, `UNI-00752.10`, `UNI-00752.11`, `UNI-00752.12`, `UNI-00752.13`
- `UNI-00752.12` `REG-OPER` `proposto` `conf:media` Locações: cotação pelo histórico de fornecedores de locação da unidade e pesquisa paralela de preços (histórico, cotação automática e internet), com alerta acima de 10%. _[DOC-091 · §18 Locações · ITM-02227 · parte de UNI-00752]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
- `UNI-00752.13` `REG-OPER` `proposto` `conf:media` Locações mantém agenda de chegadas e conciliação diária com Compras, e contata fornecedores só pelo WhatsApp corporativo, conforme PLANDEM_POL-001. _[DOC-091 · §18 Locações; §17 Política de uso de dispositivos e WhatsApp corporativo · ITM-02229 · parte de UNI-00752]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-01598` `REG-OPER` `proposto` A ordem de compra exige data e horário de entrega; sem eles a ordem não é enviada. _[DOC-091 · §5 Compras, CMP-E3 · ITM-01755]_

### CRD · Credenciamento (1)

- `UNI-00205` `REG-OPER` `proposto` Planta de pontos de carga e cabos de aço e o cálculo de carga dos pontos aéreos só são exigidos quando há estrutura suspensa no pavilhão; os demais itens variam conforme o manual da feira. _[DOC-013 · §03 Checklist · ITM-00374]_

### PRD · Produção e app dos setores (6)

- `UNI-00196` `REG-OPER` `vigente` Marcenaria cobre móveis e estrutural, com uma ficha por item, padrões construtivos e moldura de LED com margem de instalação. _[DOC-002 · §35 a 42 Marcenaria · ITM-00041]_
  - Requisitos separados deste item: `UNI-00196.01`, `UNI-00196.02`
- `UNI-00196.01` `REG-OPER` `proposto` A IA gera uma ficha para cada item com código próprio (5 travessas de medidas diferentes são 5 fichas), e itens idênticos podem ficar numa ficha com quantidade. _[DOC-091 · §33 Marcenaria, duas categorias e padrões construtivos · ITM-02373 · parte de UNI-00196]_
- `UNI-00207` `REG-OPER` `vigente` Nenhuma ficha começa sem material formalizado, e nenhum arquivo ou conteúdo do cliente segue sem estar apto. _[DOC-014 · §02 intro · ITM-00400]_
- `UNI-00628` `REG-OPER` `vigente` `conf:media` Ordem de gravação: marcenaria estrutural (parede, testeira, sanca, coluna, forro, fachada, piso elevado e outros), móveis, elétrica (fita LED, letra caixa, neon) e pintura e acabamentos. _[DOC-021 · §2 O que gravar primeiro · ITM-00586]_
  - Requisitos separados deste item: `UNI-00628.01`
- `UNI-00628.01` `REG-OPER` `proposto` `conf:media` A lista de gravação é viva, fica no sistema sob gestão da Marília e cresce com item novo sem padrão, padrão com erro, peça reprovada ou retrabalho, e material ou técnica nova (guia PLANDEM_PRD-VID-001). _[DOC-091 · §35 Padrões construtivos por vídeo, regra para a geração das fichas · ITM-02395 · parte de UNI-00628]_
- `UNI-01614` `REG-OPER` `proposto` Produção: a reunião de apresentação das fichas é obrigatória (PRD-E2). _[DOC-091 · §5 09 Setores produtivos, PRD-E2 · ITM-01924]_

### CVI · Comunicação visual (1)

- `UNI-00788.01` `REG-OPER` `proposto` Cada peça de comunicação visual, com seu código, passa pelas etapas CVI-E1 a E7 dentro do ERP, e nenhum controle paralelo (planilha, WhatsApp, papel) é aceito. _[DOC-091 · §26 Comunicação visual, controle por etapa no ERP · ITM-02322 · parte de UNI-00788]_

### AUD · Audiovisual (1)

- `UNI-01634` `REG-OPER` `vigente` Locação de audiovisual tem o mesmo controle completo (cotação, pesquisa de preços com alerta acima de 10%, aprovação da Maitê, conferência com foto); avarias e conferências não registradas alertam o Christian e a Maitê. _[DOC-091 · §18 Locações, divisão · ITM-02234]_

### DCO · Decoração (1)

- `UNI-01668` `REG-OPER` `vigente` `conf:media` Costureiras e decoradores, próprios ou terceirizados, entram na escala e no pagamento como os demais terceirizados. _[DOC-091 · §37 Decoração, Mão de obra · ITM-02412]_

### D3F · Impressão 3D (1)

- `UNI-00684.02` `REG-OPER` `proposto` `conf:media` Venda das peças 3D: opcional na proposta do estande com render e preço, peças fora da feira para showroom ou PDV, e pacote anual com número de peças e preço melhor. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 1 Estúdio 3D Farm, como vender · ITM-02206 · parte de UNI-00684]_

### ALM · Almoxarifado (2)

- `UNI-00226` `REG-OPER` `proposto` Reposição: embalagens e consumíveis têm estoque mínimo na biblioteca; ao atingi-lo o sistema abre SOL sem job e o custo é rateado nos jobs que consumirem o material. _[DOC-032 · §05 Compras recorrentes · ITM-00787]_
  - Requisitos separados deste item: `UNI-00226.01`
- `UNI-00226.01` `REG-OPER` `proposto` Cada item terá quantidade mínima de estoque cadastrada no sistema, por unidade. _[DOC-091 · §5 Almoxarifado, Estoque mínimo · ITM-01781 · parte de UNI-00226]_

### LOG · Logística e frota (4)

- `UNI-00009.07` `REG-OPER` `vigente` Antifraude da verba de viagem (aprovado pelo Diego em 31/10): a rota é calculada pelo sistema, com origem, destino e km por mapa, e não digitada pelo solicitante. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01800 · parte de UNI-00009]_
- `UNI-00009.08` `REG-OPER` `vigente` Antifraude (aprovado em 31/10): foto do hodômetro na saída e na volta, e a IA compara os km rodados com a rota. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01801 · parte de UNI-00009]_
- `UNI-00009.10` `REG-OPER` `vigente` Antifraude (aprovado em 31/10): preferência por cartão de combustível e tag de pedágio da empresa, com dados direto do fornecedor e sem dinheiro adiantado. _[DOC-091 · §5 Frota, FRT-E7 (regras aprovadas pelo Diego em 31/10) · ITM-01803 · parte de UNI-00009]_
- `UNI-00789.07` `REG-OPER` `proposto` `conf:media` Itens entregues pelo fornecedor saem do cálculo de volume e veículos e entram na agenda de entregas na feira, com fornecedor, data e horário, para o produtor de montagem conferir a chegada com foto. _[DOC-091 · §31 Estimativa de volume de carga por projeto, itens que não são carregados pela Imagine · ITM-02366 · parte de UNI-00789]_

### MON · Montagem (2)

- `UNI-00209` `REG-OPER` `vigente` Pedidos de manutenção durante a feira entram pela aba Plantão técnico, e não pelo WhatsApp. _[DOC-016 · §06 Plantão técnico · ITM-00502]_
- `UNI-00792` `REG-OPER` `vigente` `conf:media` Respostas de 29/10 incorporadas: acesso liberado pela Érika, ajuste inviável decidido por produtor e comercial, chamado em cerca de 10 minutos, seleção de peças na desmontagem e aba do cliente fechando no fim da feira. _[DOC-016 · §08 Respostas de 29/10 · ITM-00505]_

### MKT · Marketing e acervo (1)

- `UNI-00121` `REG-OPER` `proposto` `conf:media` Termo de uso do material: finalidade, prazo, uso interno (proibido compartilhar fora sem autorização do Marketing), apagar downloads no fim do prazo e aceite registrado. _[DOC-018 · §04 Termo de uso · ITM-00552]_
  - Requisitos separados deste item: `UNI-00121.01`

### CLI · Portal do cliente (3)

- `UNI-00011.05` `REG-OPER` `proposto` `conf:media` Itens de cortesia: a Imagine aponta no Portal os itens que ficam com o cliente, o cliente aceita e retira no evento; depois da retirada a responsabilidade é dele e o aceite fica registrado. _[DOC-091 · §12 Experiência do cliente no Portal, itens de cortesia e retirada · ITM-02172 · parte de UNI-00011]_
- `UNI-00782.02` `REG-OPER` `proposto` Nenhuma ficha de item com amostra começa a produção sem o ok do cliente registrado. _[DOC-091 · §12 Experiência do cliente no Portal, validação de amostras · ITM-02168 · parte de UNI-00782]_
- `UNI-00782.07` `REG-OPER` `proposto` Após o congelamento o Portal bloqueia novos pedidos de alteração e adicional; exceção só com aprovação do Diego, registrada no sistema. _[DOC-091 · §12 Experiência do cliente no Portal, congelamento do projeto · ITM-02182 · parte de UNI-00782]_

### FID · Indicação e fidelidade (3)

- `UNI-00859.02` `REG-OPER` `proposto` `conf:media` A recompensa vai sempre para a empresa do cliente como upgrade, nunca em dinheiro para quem indicou; validar compliance com a Maitê. _[DOC-091 · §13 Programa de indicação com recompensa, abertura · ITM-02184 · parte de UNI-00859]_
- `UNI-00859.04` `REG-OPER` `proposto` A indicação só conta depois do contrato assinado e do primeiro pagamento recebido. _[DOC-091 · §13 Programa de indicação com recompensa, metodologia, passo 3 · ITM-02186 · parte de UNI-00859]_
- `UNI-01631` `REG-OPER` `vigente` O controle do programa usa a base de pontos de fidelidade do Marketing (MKT-E14). _[DOC-091 · §13 Programa de indicação, MKT-E14 · ITM-02188]_

### INC · Incentivo e desempenho (3)

- `UNI-00216` `REG-OPER` `proposto` Regras do programa: transparência prévia de regras e pesos, justiça entre setores pela origem do atraso, 3 meses de teste só medindo, teto por pessoa e período definido pela diretoria, aviso por escrito (LGPD) e reconhecimento não financeiro. _[DOC-023 · §06 Regras do programa · ITM-00624]_
  - Requisitos separados deste item: `UNI-00216.01`, `UNI-00216.02`
- `UNI-00216.01` `REG-OPER` `a-conferir` `conf:media` Justiça: cada setor é medido contra a própria meta e histórico, e atraso causado por outro setor não conta contra quem recebeu a tarefa. _[DOC-091 · §5 Custos (bloco após Frota), Índice de Desempenho do Setor, Justiça · ITM-01853 · parte de UNI-00216]_
  - **Decisão (Ver decisão do item 23):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-00216.02` `REG-OPER` `a-conferir` `conf:media` Premiação: ranking mensal visível no painel e prêmio trimestral ligado ao Programa de Incentivo (PRG-001); os 3 primeiros meses são só de medição, para calibrar as metas. _[DOC-091 · §5 Custos (bloco após Frota), Índice de Desempenho do Setor, Premiação · ITM-01854 · parte de UNI-00216]_
  - **Decisão (Ver decisão do item 23):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`

### EVT · Produção de evento (1)

- `UNI-00198` `REG-OPER` `vigente` Produção de evento é quando o cliente contrata a Imagine para gerir o evento inteiro ; a remuneração é por taxa de gestão. _[DOC-002 · §43 Produção de evento · ITM-00047]_

### TRP · Transversal (10)

- `UNI-00149` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Todo documento leva o logotipo IMG-MOD-001: planilha no canto superior esquerdo de todas as abas, PDF no carimbo à esquerda do título em todas as folhas, sem distorcer, recolorir nem recortar; pedido de Diego registrado no PAD-001 V02 item 1.6. _[DOC-033 · §4.1 item 8 · ITM-00944]_
- `UNI-00202` `REG-OPER` `proposto` Regras gerais: nada em conta pessoal, todo andamento no ERP, prazo considera aprovações de plataformas como WhatsApp, e senhas no cofre com acessos removidos ao fim do projeto. _[DOC-004 · Regras gerais, itens 2 a 5 · ITM-00100]_
- `UNI-00212` `REG-OPER` `proposto` Toda comunicação de trabalho com clientes e fornecedores deve ficar registrada nos sistemas da empresa, para dar transparência, proteger empresa e colaboradores e evitar pagamentos fora do sistema. _[DOC-022 · §1 Objetivo · ITM-00593]_
- `UNI-00214` `REG-OPER` `proposto` Todo contato de trabalho é feito só por número e equipamentos corporativos; é proibido negociar valores, enviar cotações ou receber pedido de pagamento por número ou aparelho pessoal. _[DOC-022 · §4 Regras de uso, itens 1 e 2 · ITM-00596]_
  - Requisitos separados deste item: `UNI-00214.01`, `UNI-00214.02`
- `UNI-00214.01` `REG-OPER` `proposto` Todo contato de trabalho com clientes e fornecedores passa por notebook e WhatsApp Business da Imagine, monitorados pelo sistema; política completa em PLANDEM_POL-001, a validar com a Maitê. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo · ITM-02219 · parte de UNI-00214]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-00214.02` `REG-OPER` `vigente` É proibido negociar com clientes ou fornecedores por número ou aparelho pessoal, e aparelhos e contas pessoais nunca são monitorados. _[DOC-091 · §17 Política de uso de dispositivos e WhatsApp corporativo, Proibido · ITM-02221 · parte de UNI-00214]_
  - **Decisão (Ver decisão do item 6):** Vale o número corporativo integrado ao ERP. O número pessoal é proibido. **Em aberto:** Validação da POL-001 pela Maitê. Registro: `REGISTROS/decisao__20261104-1043-whatsapp-entrada-79yx.md`
- `UNI-00215` `REG-OPER` `proposto` Arquivos de trabalho ficam nos computadores corporativos, rastreados pelo sistema, sem versões paralelas fora do ERP. _[DOC-022 · §4 Regras de uso, item 3 · ITM-00597]_
  - Requisitos separados deste item: `UNI-00215.01`
- `UNI-00215.01` `REG-OPER` `proposto` `conf:media` Todos os arquivos salvos nos computadores corporativos do Comercial, de Compras e do Planejamento são rastreados pelo sistema, para evitar versões paralelas fora do ERP (31/10). _[DOC-091 · §9 Integrações, rastreamento de arquivos (31/10) · ITM-02128 · parte de UNI-00215]_
- `UNI-00754` `REG-OPER` `vigente` `conf:baixa` Também decididos em 31/10: indicação, collabs, inovação, locações, prospecção pelo app e evento náutico. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00032]_
  - Requisitos separados deste item: `UNI-00754.01`
- `UNI-00754.01` `REG-OPER` `proposto` `conf:media` Collabs têm duas formas de oferta: item adicional vendido ao cliente ou benefício do programa de upgrade por indicação. _[DOC-091 · §14 Projeto Collabs com marcas parceiras, como entra no sistema · ITM-02202 · parte de UNI-00754]_

