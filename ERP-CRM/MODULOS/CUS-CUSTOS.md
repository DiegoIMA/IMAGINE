---
id: ERP-MOD-CUS
titulo: Módulo Custos
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# CUS · Custos

83 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-19** (Logística e operação na planilha): A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- **item-1** (Planilha de custos e preço de venda): Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`

## Fluxo macro (2)

- `UNI-00277` `FLX-MACRO` `proposto` Custos tem cinco fases: planilha pela IA (CUS-E1 a E4), validações (E5 a E7), revisões (E8 a E11), base de custos (E12 a E13) e adicionais na produção (E14 a E19). _[DOC-009 · §01 Fluxo macro · ITM-00203]_
- `UNI-00557.01` `FLX-MACRO` `substituido-parcial` `conf:media` Carol valida a planilha (CUS-E5), Maitê e Diego formam o preço (CUS-E6) e o assistente comercial recebe a pré-proposta (CUS-E7 → ACM-E1). _[DOC-091 · §2 Fluxo entre setores, gatilho 4; §5 Custos, CUS-E5 a CUS-E7 · ITM-01591 · parte de UNI-00557]_
  - **Continua valendo:** Custos valida a planilha, e o assistente comercial recebe a pré-proposta.
  - **Mudou:** A IA gera o preço depois da validação da Maitê (item-19); Maitê e Diego o aprovam (item-1).

## Etapas do fluxo (21)

- `UNI-00074.01` `FLX-MICRO` `proposto` Planilha mãe: a Carol controla os preços das duas unidades e, todo mês, solicita à Samanta (compradora de SP) os preços atualizados pelo sistema, para validar e lançar. _[DOC-091 · §5 Custos (bloco após Frota), planilha mãe CUS-E12 · ITM-01812 · parte de UNI-00074]_
- `UNI-00374` `FLX-MICRO` `proposto` Portal abre a pasta em Custos com a planilha de custos; prazo de 3 dias e aviso a Comercial, assistente comercial, Financeiro e assistente financeiro. _[DOC-008 · PRJ-E14 · ITM-00185]_
- `UNI-00378` `FLX-MICRO` `proposto` IA lê o projeto 3D e o memorial descritivo, ainda sem detalhamento técnico. _[DOC-009 · CUS-E1 · ITM-00204]_
- `UNI-00379` `FLX-MICRO` `proposto` IA gera a planilha de materiais com item, material, especificação, unidade, valor unitário e total, cruzando preços de mercado. _[DOC-009 · CUS-E2 · ITM-00205]_
  - Requisitos separados deste item: `UNI-00379.01`, `UNI-00379.02`
- `UNI-00379.01` `FLX-MICRO` `proposto` Planilha pela IA: a partir do memorial e das informações técnicas, o agente de IA gera a planilha de custos com parâmetros pré-definidos; a Carol não elabora mais a planilha. _[DOC-091 · §5 Custos (bloco após Frota), novo fluxo de Custos com IA, passo 1 · ITM-01814 · parte de UNI-00379]_
- `UNI-00379.02` `FLX-MICRO` `proposto` A IA gera a planilha de custos a partir do memorial, com histórico e biblioteca. _[DOC-091 · §25 Integração automática do projeto até a ordem de compra, item 2 · ITM-02297 · parte de UNI-00379]_
- `UNI-00380` `FLX-MICRO` `a-conferir` Bloco de logística e operação fica pronto para o Financeiro: mão de obra, frete, combustível, hotel, alimentação, limpeza, taxas e RRT. _[DOC-009 · CUS-E3 · ITM-00206]_
  - **Atenção (leitura do Claude):** item 19: Diz que o bloco fica pronto para o Financeiro, sem dizer quem preenche.
- `UNI-00381` `FLX-MICRO` `proposto` Preço de venda sugerido é calculado pela planilha base da Imagine. _[DOC-009 · CUS-E4 · ITM-00207]_
- `UNI-00382` `FLX-MICRO` `proposto` Carol confere a planilha gerada pela IA. _[DOC-009 · CUS-E5 · ITM-00209]_
  - Requisitos separados deste item: `UNI-00382.01`, `UNI-00382.02`
- `UNI-00382.01` `FLX-MICRO` `vigente` Custos: Carol confere a planilha gerada pela IA e aponta ajustes por item. _[DOC-091 · §5 Custos, CUS-E5 · ITM-01709 · parte de UNI-00382]_
  - **Decisão (Ver decisão do item 1):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`
- `UNI-00382.02` `FLX-MICRO` `vigente` Conferência da Carol: ela confere os custos e aponta à IA os ajustes de cada item; a IA corrige e devolve até o ok da Carol. _[DOC-091 · §5 Custos (bloco após Frota), novo fluxo de Custos com IA, passo 2 · ITM-01815 · parte de UNI-00382]_
  - **Decisão (Ver decisão do item 1):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`
- `UNI-00384` `FLX-MICRO` `proposto` Projeto alterado pelo cliente ou item fora do escopo faz o Portal gerar a V2 da planilha e notificar a Carol. _[DOC-009 · CUS-E8 · ITM-00215]_
- `UNI-00385` `FLX-MICRO` `proposto` Carol revisa e valida a V2, tirando e incluindo itens e mudando quantidades. _[DOC-009 · CUS-E9 · ITM-00216]_
- `UNI-00388` `FLX-MICRO` `proposto` Portal e IA recebem a atualização da base, e a próxima planilha já sai com os valores novos. _[DOC-009 · CUS-E13 · ITM-00221]_
- `UNI-00389` `FLX-MICRO` `proposto` Durante a produção o cliente pede o adicional no Portal (ex.: TV, totem, balcão, paisagismo, parede verde, LED maior, piso mais caro). _[DOC-009 · CUS-E14 · ITM-00223]_
- `UNI-01103` `FLX-MICRO` `inferido` `conf:media` Em 3 dias, quem entrega a planilha é Custos e o preço de venda é do Financeiro (inferido do fluxo de 22/10). _[DOC-008 · §08, PRJ-E14 · ITM-00187]_
- `UNI-01499` `FLX-MICRO` `decisao-diego` Custos: a IA propõe logística e operação pelo histórico; a Maitê valida ou pede alteração e a IA gera o preço de venda. _[DOC-091 · §5 04 Custos, CUS-E6 · ITM-01711]_
  - **Decisão (Decidido por Diego):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
- `UNI-01500` `FLX-MICRO` `proposto` Custos: o Comercial avalia o prazo do adicional pelo cronograma. _[DOC-091 · §5 04 Custos, CUS-E15 · ITM-01723]_
- `UNI-01501` `FLX-MICRO` `proposto` Custos: gera a planilha do adicional. _[DOC-091 · §5 04 Custos, CUS-E16 · ITM-01725]_
- `UNI-01520` `FLX-MICRO` `proposto` Ao montar um novo custo, a IA puxa a média dos projetos parecidos e corrige os valores propostos; se um item ficar fora da média histórica, aponta para a Carol e a Maitê. _[DOC-091 · §5 Base histórica de custos realizados · ITM-01825]_
- `UNI-01521` `FLX-MICRO` `proposto` A IA busca o histórico sem limite de tempo, encontra o projeto anterior do mesmo cliente e feira, replica itens, quantidades, equipe e logística e atualiza os valores pela planilha mãe; a Carol confere as diferenças. _[DOC-091 · §5 Projetos repetidos de um ano para o outro · ITM-01827]_

## Pontos de decisão (4)

- `UNI-00556` `FLX-DECISAO` `inferido` Se a planilha da IA estiver errada, Carol corrige e confere de novo antes de passar ao Financeiro (inferido). _[DOC-009 · CUS-E5, §07 · ITM-00211]_
- `UNI-00557` `FLX-DECISAO` `a-conferir` Maitê e Diego validam o preço; se recusado, o próprio Financeiro ajusta o preço no Portal. _[DOC-009 · CUS-E6, §07 · ITM-00213]_
  - **Atenção (leitura do Claude):** item 19: Diz que o Financeiro ajusta o preço recusado. A Especificação também diz que Maitê e Diego formam o preço (ITM-01591) e que o Diego aprova (ITM-02298).
  - Requisitos separados deste item: `UNI-00557.01`, `UNI-00557.02`
- `UNI-00558` `FLX-DECISAO` `proposto` Se o cliente aprova o adicional, ele entra no projeto e na produção; se não, o adicional é registrado como recusado. _[DOC-009 · CUS-E19 · ITM-00227]_
- `UNI-01577` `FLX-DECISAO` `proposto` Diante do alerta de margem, Diego e Financeiro escolhem uma de três saídas: a empresa absorve, o vendedor absorve ou o cliente ajusta o projeto. _[DOC-091 · §5 Controle de desconto na negociação · ITM-01838]_

## Notificações (4)

- `UNI-00594` `FLX-NOTIF` `vigente` Projeto aprovado 1 dia ou mais depois do orçamento faz o Portal alertar Maitê e Diego sobre reajuste de preço. _[DOC-009 · CUS-E9, §05 · ITM-00217]_
- `UNI-00595` `FLX-NOTIF` `vigente` Adicional aprovado: o Portal avisa todos os setores. _[DOC-009 · CUS-E19, §07 · ITM-00228]_
- `UNI-00596` `FLX-NOTIF` `proposto` Cada mudança gera nova versão da planilha (V02, V03) e aviso a quem vem depois: Carol, Maitê e Diego, Anderson e Comercial, conforme o caso. _[DOC-009 · §05 Versões e notificações · ITM-00229]_
- `UNI-01523` `FLX-NOTIF` `proposto` `conf:media` Se a alteração não foi cobrada do cliente (não virou adicional), a IA envia apontamento a Projetos e ao Comercial com o caso e o prejuízo; o Diego recebe cada apontamento na hora e ele entra no fechamento e no estudo trimestral. _[DOC-091 · §5 Análise de impacto das alterações de projeto · ITM-01835]_

## Módulos e telas (1)

- `UNI-01423` `ESC-MODULO` `proposto` Módulo Custos (setor 04): planilha gerada por IA, planilha mãe, preços de mercado, versões e adicionais. _[DOC-091 · §3 Módulos, Custos · ITM-01605]_

## Perfis e responsáveis (2)

- `UNI-00022` `ESC-PERFIL` `proposto` Carol (Custos), Maitê e Diego (preço de venda) e Anderson (proposta) têm usuário no Portal, com só os itens do seu setor. _[DOC-009 · §03 Usuários · ITM-00231]_
  - Requisitos separados deste item: `UNI-00022.01`
- `UNI-00022.01` `ESC-PERFIL` `proposto` Perfil Custos (Carol): área restrita de custos. _[DOC-091 · §8 Perfis de acesso, Custos · ITM-02117 · parte de UNI-00022]_

## Documentos gerados (2)

- `UNI-00041` `ESC-DOC` `proposto` Planilha de custos do projeto é uma por projeto, com versões V01, V02, aberta pelo Portal na pasta de Custos; a planilha mãe e a base de preços de mercado ficam no Portal. _[DOC-009 · §03 Planilha de custos do projeto · ITM-00232]_
- `UNI-00698` `ESC-DOC` `a-conferir` REL-002 Fechamento do job: por IT orçado, comprado e horas reais; OC/OS fora do orçado e motivo; recebido x previsto; margem prevista x real; lições para a biblioteca de custos. _[DOC-032 · §06 REL-002 · ITM-00800]_
  - **Atenção (leitura do Claude):** item 9: Usa IT como referência do item.

## Entidades e campos (6)

- `UNI-00659` `ESC-DADOS` `a-conferir` Bloco de materiais: item (código BIB ou LOC), tipo de material, especificação, unidade, quantidade lida do 3D, valor unitário e valor total. _[DOC-009 · §04 Bloco 1 Materiais · ITM-00233]_
  - **Atenção (leitura do Claude):** item 9: Usa BIB e LOC, que estão em aberto.
  - Requisitos separados deste item: `UNI-00659.01`
- `UNI-00660` `ESC-DADOS` `substituido-parcial` Bloco de logística e operação lançado pelo Financeiro (mão de obra, frete, hotel, RRT e outros) e resumo com custo total e preço de venda sugerido. _[DOC-009 · §04 Blocos 2 e 3 · ITM-00234]_
  - **Continua valendo:** O bloco de logística e operação, com seus custos, e o resumo com custo total continuam. O preço sugerido está em aberto (DUV-011).
  - **Mudou:** Não é lançado pelo Financeiro: a IA propõe pelo histórico, a Maitê valida ou pede alteração e a IA gera o preço (item-19).
  - Requisitos separados deste item: `UNI-00660.01`
- `UNI-00660.01` `ESC-DADOS` `proposto` Planilha de custos: código ORC-NNN_VNN, com materiais, logística e operação, resumo e preço sugerido. _[DOC-091 · §4 Entidades e dados principais, Planilha de custos · ITM-01626 · parte de UNI-00660]_
- `UNI-01441` `ESC-DADOS` `proposto` A base histórica registra hospedagem, alimentação, passagens aéreas e de ônibus, combustível, pedágio, diárias, despesas de viagem e de veículo, frete, mão de obra e materiais. _[DOC-091 · §5 Base histórica de custos realizados · ITM-01823]_
- `UNI-01444` `ESC-DADOS` `vigente` Planilha de custos própria do audiovisual: equipes, diárias, deslocamento, hospedagem, alimentação, locação de equipamentos, atendimento e plantão. _[DOC-091 · §5 09 Audiovisual, AUD-E11; §Respostas · ITM-01953]_
- `UNI-01647` `ESC-DADOS` `vigente` Na planilha de custos cada item recebe um tipo (a produzir, a locar, a comprar pronto ou de estoque), que define seu destino quando o projeto é aprovado. _[DOC-091 · §25 Destino de cada item codificado · ITM-02305]_

## Dashboards e indicadores (2)

- `UNI-01442` `ESC-INDIC` `proposto` O fechamento mensal traz projetos realizados, previsto × realizado por projeto e por grupo de custo, setores que estouraram o custo, materiais acima do previsto, mudanças que aumentaram custo e análise da IA das causas. _[DOC-091 · §5 Relatório de fechamento do mês · ITM-01831]_
- `UNI-01522` `ESC-INDIC` `proposto` A IA cruza orçado e realizado e identifica, por projeto, as alterações do cliente após a aprovação que aumentaram o custo, mostrando item, valor, motivo e efeito nas metas e no índice previsto × realizado. _[DOC-091 · §5 Análise de impacto das alterações de projeto · ITM-01834]_

## Prazos (8)

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

## Aprovações e alçadas (2)

- `UNI-00557.02` `REG-APROV` `substituido-parcial` Na planilha de custos, Carol confere, Maitê valida a operação e Diego aprova o preço. _[DOC-091 · §25 Integração automática do projeto, passo 3; §5 Custos, CUS-E6 · ITM-02298 · parte de UNI-00557]_
  - **Continua valendo:** Custos confere, e a Maitê valida a operação.
  - **Mudou:** O preço é aprovado por Maitê e Diego, e não só por Diego (item-1).
- `UNI-01574` `REG-APROV` `substituido-parcial` O Diego aprova o preço final; só depois da aprovação a pré-proposta vai para o Anderson. _[DOC-091 · §5 Novo fluxo de Custos com IA, aprovação do Diego · ITM-01819]_
  - **Continua valendo:** A pré-proposta só segue depois de o preço ser aprovado.
  - **Mudou:** O preço de venda é aprovado por Maitê e Diego (item-1).

## Preço, margem e comissão (2)

- `UNI-00750` `REG-PRECO` `vigente` Custos: margem de 35%, planilha gerada pela IA e uso de base histórica de realizados. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00026]_
  - Requisitos separados deste item: `UNI-00750.01`, `UNI-00750.02`, `UNI-00750.03`, `UNI-00750.04`
- `UNI-01152.02` `REG-PRECO` `vigente` Margem inicial do preço de venda: 35% de lucro líquido. _[DOC-091 · Respostas do Diego, Preço de venda (CUS-E4) · ITM-02028 · parte de UNI-01152]_

## Acesso e visibilidade (2)

- `UNI-00122.01` `REG-ACESSO` `proposto` A aba de custos da página do projeto é visível só para perfis autorizados, e as permissões seguem o perfil de cada usuário. _[DOC-091 · §30 Página do projeto, item 5 Abas · ITM-02357 · parte de UNI-00122]_
  - **Decisão (Ver decisão do item 14):** Diretoria e Custos veem a área. Compras só sabe o valor do item que foi comprado. **Em aberto:** Acesso do Financeiro. Registro: `REGISTROS/decisao__20261104-1043-area-custos-hokw.md`
- `UNI-01452` `REG-ACESSO` `substituido-parcial` Área de Custos é restrita: só Custos, Financeiro e diretoria têm acesso. _[DOC-091 · §6 Regras de negócio · ITM-02084]_
  - **Continua valendo:** A área de Custos é restrita.
  - **Mudou:** Diretoria e Custos veem a área; Compras só sabe o valor do item comprado; o acesso do Financeiro está em aberto (item-14).

## Códigos e rastreabilidade (2)

- `UNI-00129` `REG-CODIGO` `substituido-parcial` Códigos propostos: versões ORC-001_V01, V02 e adicionais ADI-001, ADI-002. _[DOC-009 · §07 último item · ITM-00235]_
  - **Continua valendo:** A planilha de custos tem versões (V01, V02).
  - **Mudou:** Adicionais ficam sem a sigla ADI (ponto-5).
- `UNI-00137.01` `REG-CODIGO` `proposto` `conf:media` Versões: toda mudança de projeto ou de preço gera nova versão da planilha e avisa quem vem depois. _[DOC-091 · §6 Regras de negócio, Versões · ITM-02083 · parte de UNI-00137]_

## Cálculos e critérios (11)

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

## Regras operacionais (5)

- `UNI-00240` `REG-OPER` `vigente` `conf:media` `rotina-anterior` Fornecedor e custo unitário ficam em amarelo para a equipe de custos (Carol e Diego, conforme quadro) preencher; o mesmo item pode aparecer em mais de uma categoria, como parede em marcenaria e tapeçaria. _[DOC-033 · §2.4 P3 passo 3 · ITM-00869]_
- `UNI-00243` `REG-OPER` `vigente` `rotina-anterior` Item fornecido pelo cliente entra na categoria 09 com custo unitário 0. _[DOC-033 · §2.4 P3 Decisões · ITM-00875]_
- `UNI-00750.02` `REG-OPER` `proposto` Todos os agentes de IA (custos, compras, frete, logística, verbas de viagem, equipes terceirizadas, frota) gravam o custo realizado de cada projeto numa base única, norteadora do preço de venda. _[DOC-091 · §5 Custos, base histórica de custos realizados · ITM-01822 · parte de UNI-00750]_
- `UNI-00762` `REG-OPER` `substituido-parcial` Respondido em 28/10: Carol só ajusta a planilha quando o projeto muda; logística e operação continuam lançadas pelo Financeiro; base de preços atualizada todo mês. _[DOC-009 · §07 Respondido em 28/10 · ITM-00236]_
  - **Continua valendo:** A base de preços é atualizada todo mês.
  - **Mudou:** A IA gera a planilha, e Custos confere e aprova (item-1); em mudança de projeto, gera nova versão. Logística e operação não são lançadas pelo Financeiro (item-19).
- `UNI-01608` `REG-OPER` `vigente` Os preços de materiais e de mão de obra diferem entre São Paulo e Rio Grande do Sul; a planilha mãe e a base de preços de mercado passam a ter valores separados por unidade. _[DOC-091 · §5 Custos por unidade · ITM-01809]_

## Pendências (5)

- `UNI-00122` `PEND` `decisao-diego` Divergência sobre quem vê a área de Custos: o fluxo de Custos (DOC-009, regra de 22/10) diz Custos, Financeiro e diretoria; DOC-030 e DOC-032 (30/10) dizem só Financeiro e diretoria, e a matriz de DOC-032 acrescenta que Compras vê só o valor orçado da linha que compra. _[DOC-030 · §06 Regras do portal · ITM-00723]_
  - **Decisão (Decidido por Diego):** Diretoria e Custos veem a área. Compras só sabe o valor do item que foi comprado. **Em aberto:** Acesso do Financeiro. Registro: `REGISTROS/decisao__20261104-1043-area-custos-hokw.md`
  - Requisitos separados deste item: `UNI-00122.01`
- `UNI-00749` `PEND` `decisao-diego` Divergência sobre quem aprova a planilha de custos: ERP-001 (DOC-002) diz aprovação por Carol, Maitê e Diego; DOC-003 diz que a aprovação é do Diego. _[DOC-002 · §2 a 22 Decisões de 31/10 · ITM-00026]_
  - **Decisão (Decidido por Diego):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`
- `UNI-00892` `PEND` `pendente` Alíquotas seguem pendentes no ERP-001. _[DOC-002 · §45 Pendências · ITM-00057]_
- `UNI-00909` `PEND` `pendente` Não foi informado de onde vêm os preços de mercado (fornecedores, cotações). _[DOC-009 · §07, CUS-E12 · ITM-00222]_
- `UNI-01629` `PEND` `pendente` Preço de venda: regra definida, mas faltam as alíquotas exatas de cada imposto. _[DOC-091 · §11 Pendências · ITM-02147]_

## Não usar: substituídos ou desatualizados (2)

- `UNI-01152` `REG-PRECO` `desatualizado` A regra do preço sugerido já tem resposta no ERP-001: margem de 35%; a planilha base ainda é citada como pendente. _[DOC-090 · §4 linha Regra do preço sugerido · ITM-01575]_
  - Requisitos separados deste item: `UNI-01152.01`, `UNI-01152.02`
- `UNI-01572` `REG-APROV` `substituido` O Diego aprova o preço final de venda. _[DOC-091 · §5 04 Custos, CUS-E6 · ITM-01712]_
  - **Decisão (Contraria a decisão do item 1):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`

