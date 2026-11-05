# Imagine · Especificação de Processos para o ERP

Oct 31, 2026 · @Diego [PES-00098]

Este documento junta os 13 fluxos de setor e o Programa de Incentivo da pasta PLANEJAMENTO IMAGINE numa base única para desenvolver o ERP (Portal Imagine). Para cada setor ele traz as etapas com código, os responsáveis, os prazos, as regras de bloqueio, as notificações e os dados. Os setores 10 e 11 não têm documento. A maioria dos fluxos ainda está em versão de proposta.

## 1 · Documentos-fonte

| Setor | Documento | Versão | Prefixo das etapas |
| --- | --- | --- | --- |
| 01 Prospecção ativa | PLANDEM\_FLX-SET01 | V01 | PRO |
| 02 Comercial | PLANDEM\_FLX-SET02 | V03 | COM |
| 03 Projetos | PLANDEM\_FLX-SET03 | V03 | PRJ, G1–G3 |
| 04 Custos | PLANDEM\_FLX-SET04 | V03 | CUS |
| 05 Financeiro | PLANDEM\_FLX-SET05 | V02 | FIN |
| 06 Assistente comercial | PLANDEM\_FLX-SET06 | V01 | ACM |
| 07 Planejamento | PLANDEM\_FLX-SET07 | V07 | PLA |
| 08 Credenciamento | PLANDEM\_FLX-SET08 | V01 | CRD |
| 09 Setores produtivos | PLANDEM\_FLX-SET09 | V02 | PRD, CVI, AUD |
| 10 Expedição e 11 Logística | a mapear (hoje parte do SET12) | — | — |
| 12 Controle de qualidade (doc atual inclui Expedição) | PLANDEM\_FLX-SET12 | V01 | EXP |
| 13 Montagem | PLANDEM\_FLX-SET13 | V03 | MON |
| 14 Pós-feira | PLANDEM\_FLX-SET14 | V01 | POS |
| 15 Marketing | PLANDEM\_FLX-SET15 | V01 | MKT |
| Programa de incentivo | PLANDEM\_PRG-001 | V01 | INC |

## 2 · Fluxo entre setores (gatilhos)

Cada passagem é um evento do sistema: a etapa que termina libera a seguinte e notifica o próximo responsável.

1. **Prospecção → Comercial:** o cliente aceita o login do Portal (PRO-E15) e entra na área de organização de clientes (COM-E6).
2. **Comercial → Projetos:** o vendedor atende, faz a reunião e o briefing fica no Portal (COM-E13). O Planejamento define o arquiteto (PRJ-E1).
3. **Projetos → Custos:** o memorial é gerado e a planilha de custos é aberta (PRJ-E14), com prazo de 3 dias.
4. **Custos → Financeiro → Assistente:** Carol valida (CUS-E5), Maitê e Diego formam o preço (CUS-E6) e o assistente recebe a pré-proposta (CUS-E7 → ACM-E1).
5. **Assistente → Financeiro:** o aceite do cliente (ACM-E7 = FIN-E1) gera o contrato em 1 dia (FIN-E2). O contrato assinado (ACM-E11) libera o Planejamento (PLA-E1).
6. **Planejamento → todos:** o cronograma reverso é publicado em até 3 dias (PLA-E4) e todos os setores são notificados (PLA-E5).
7. **Em paralelo:** o Credenciamento recebe o formulário do evento (PLA-E16 → CRD-E1) e o Marketing recebe as datas (MKT-E1).
8. **Planejamento → Produção:** a ficha publicada (PLA-E15) entra no app do setor (PRD-E1). Comandas e compras passam pelo Financeiro (FIN-E3 a E8).
9. **Produção → Expedição:** a ficha concluída no último setor da cadência (PLA-E19/PRD-E10) chega à Expedição (EXP-E1).
10. **Expedição → Montagem:** o carregamento é conferido (EXP-E9) e libera a montagem (MON-E1).
11. **Montagem → Pós-feira:** a desmontagem (MON-E15) abre o dossiê do evento (POS-E1).
12. **Pós-feira → Marketing → Comercial:** o cliente promotor é convidado para indicação e case (POS-E8, MKT-E15), e a indicação volta como origem de cliente no SET02.

## 3 · Módulos do ERP

| Módulo | Setores | Funções principais |
| --- | --- | --- |
| CRM e prospecção | 01, 02 | Leads, formulário do contato por IA no WhatsApp, vendas, prazos de recontato, publicação nos 6 canais |
| Planejamento comercial | 02 | Calendário de 12 meses, perfil de feira, vendedor por feira, listas A/B/C/Pacote, metas |
| Distribuição de clientes | 02 | Classificação automática, sugestão de vendedor, aprovação do Diego |
| Reuniões com IA | 01, 02, 07 | Gravação, transcrição, checklist, Termômetro da Reunião, ata da reunião de produção |
| Projetos | 03 | Abas do projeto, biblioteca de itens, catálogo de locações, validações G1–G3, geração de memorial e apresentação |
| Custos | 04 | Planilha gerada por IA, planilha mãe, preços de mercado, versões, adicionais |
| Comercial e contratos | 05, 06 | Proposta, cobrança do aceite, contrato no modelo padrão, assinatura digital, painel do assistente |
| Planejamento de produção | 07 | Cronograma reverso, decupagem, fichas, cronograma interno, dashboard |
| Financeiro e compras | 05 | Comandas, ordens de compra, centro de custos, notas fiscais, repasses e comissões |
| Credenciamento | 08 | Checklist obrigatório, cronograma compatibilizado, pasta final |
| App da produção | 09 | Fichas por setor, pedido de material, foto e ok, alertas |
| Aba do cliente | 09, 13, 15 | Arquivos de comunicação visual, conteúdos audiovisuais, checklist de entrega, termo de aceite, plantão técnico, pontos de fidelidade |
| Expedição e rastreio | 12 | Etiqueta com QR code, leituras, carregado × previsto |
| App da montagem | 13 | Acesso por categoria, documentos, checklist com foto, chamados |
| Pós-feira | 14 | Dossiê, pesquisa NPS/CSAT/CES, painel, plano de ação 5W2H |
| Acervo de marketing | 15 | Pastas por projeto, pedido de acesso, termo de uso, expiração |
| Incentivo | PRG | Medição dos movimentos, placar, gatilho, pagamento |

## 4 · Entidades e dados principais

| Entidade | Campos essenciais | Origem |
| --- | --- | --- |
| Lead / venda | contatos do decisor, onde foi o contato, fotos, pontos fortes e fracos, necessidades, próximas datas, quem captou | PRO-E9, PRO-E10 |
| Cliente | razão social, CNPJ, endereço, contatos, origem (empresa ou aberto pelo vendedor, indicação), classe, histórico, notas do pós-feira, pontos de fidelidade | COM-E6, CRD-E3, POS-E5 |
| Feira | mês, tipo, perfil, histórico de vendas, mínimo de 200 m², vendedor responsável, listas A/B/C/Pacote, prazos do manual | COM-E1 a E4, CRD-E5 |
| Vendedor | meta mensal, clientes, funil, comissão | COM-E5, FIN-E14 |
| Termômetro da Reunião | concorrência, percepção da Imagine, capacidade, projeto, relacionamento, por que nos procurou, probabilidade de 0 a 100% | COM-E13 |
| Projeto | código, cliente, feira, arquiteto, vendedor, abas, status por etapa, cronograma | PRJ, PLA |
| Item do projeto | código projeto + item + subitem (ex.: P0123-015-02), nome, material, quantidade | PRJ-E11 |
| Item da biblioteca | BIB-CATEGORIA-NNNN, nome, tipo, medidas, imagem, arquivo 3D | PRJ-E7, PRJ-E16 |
| Item de locação | LOC-CATEGORIA-NNNN | catálogo de locações |
| Planilha de custos | ORC-NNN\_VNN; materiais, logística e operação, resumo, preço sugerido | CUS-E2 a E4 |
| Adicional | ADI-NNN, planilha e proposta próprias, status aprovado ou recusado | CUS-E14 a E19 |
| Proposta e contrato | versão, valores, condições, status do aceite, assinatura | ACM, FIN-E2 |
| Comanda | item e código, setor, previsto, pedido, diferença, status | FIN-E3 a E6 |
| Ordem de compra | itens, fornecedor, prazo, forma de pagamento, IBS/CBS, nota fiscal, situação | FIN-E7 a E11 |
| Ficha técnica | código, detalhamento, lista de materiais, complexidade e tempo, sequência de setores, vencimento por setor, conclusão (foto, data, usuário), qualidade | PLA-E12 a E14 |
| Etiqueta | código, nome, foto, QR code, projeto e feira, volume 1 de N | EXP-E6 |
| Leitura de QR code | peça, evento, usuário, data e hora | PLA-E18, EXP, MON-E4 |
| Documento de credenciamento | tipo, responsável, prazo, status (pendente, solicitado, recebido, conferido, publicado, aprovado) | CRD-E6 a E15 |
| Arquivo do cliente | arte ou conteúdo, resultado da verificação da IA, prova, validação | CVI, AUD |
| Rider técnico | equipamento, especificação, uso, conteúdo, posição na montagem | AUD-E3 |
| Checklist de montagem | item do memorial, ok, foto | MON-E5, MON-E15 |
| Termo de aceite | identificação, itens conferidos, ressalvas, data, assinatura | MON-E10 |
| Chamado do plantão | pedido, foto, notificados, quem atendeu, conclusão com foto | MON-E11 a E14 |
| Pesquisa de satisfação | NPS, nota por etapa, esforço, palavras, textos, recompra, autorização | POS-E3 |
| Plano de ação | 5W2H e resultado medido | POS-E11 |
| Material do acervo | projeto, tipo, autorização de imagem, acessos e downloads | MKT-E8 a E12 |
| Usuário | setor, categoria, feiras em que está escalado, validade do acesso | todos |

## 5 · Etapas por setor

### 01 · Prospecção ativa

- **PRO-E1** Definir pauta e linha de comunicação (Marketing, aprovação do Diego).
- **PRO-E2** Aplicar a linha nos 6 canais: LinkedIn, Instagram, site, blog, newsletter (CRM) e WhatsApp.
- **PRO-E3** Montar o kit de divulgação (apresentação em PDF ou HTML no Portal).
- **PRO-E4** Gerar as peças na aba de montagem do Portal.
- **PRO-E5** Diego aprova as peças. Se não aprovar, volta para PRO-E4.
- **PRO-E6** Publicação automática. O WhatsApp vai só para a lista segmentada do CRM.
- **PRO-E7** Captação à distância: planta da feira, expositores e decisores, filtro por categoria, porte, verba, tipo e demanda.
- **PRO-E8** Captação presencial na feira (Prospecção ou representante).
- **PRO-E9** Mensagem ao agente de IA no WhatsApp, que gera o formulário do contato no mesmo dia.
- **PRO-E10** A venda abre no CRM. A presencial abre sozinha e a Prospecção revisa.
- **PRO-E11** Contato e envio de material por quem captou o lead.
- **PRO-E12** Se houver interesse: reunião online gravada pela IA.
- **PRO-E13** A IA transcreve e gera o checklist. O Comercial confere.
- **PRO-E14** Registrar prazos de retorno, material e recontato.
- **PRO-E15** O cliente aceita o login do Portal → Comercial. Sem retorno: recontato na data. Perdeu interesse: recontato na próxima feira dele.

### 02 · Comercial

- **COM-E1** Calendário comercial de 12 meses.
- **COM-E2** Perfil de cada feira com mínimo de 200 m² vendidos pela Imagine.
- **COM-E3** Vendedor responsável por feira.
- **COM-E4** Listas por feira: A conhecidos, B potenciais novos, C reserva e Pacote.
- **COM-E5** Metas: R$ 500 mil por mês por vendedor, contadas pelo mês do evento.
- **COM-E6** Cliente entra na área de organização (origens: Prospecção, LinkedIn, Instagram, WhatsApp, cliente antigo).
- **COM-E7** Classificação automática: Prioridade (≥ 50 m² e ≥ R$ 1.500/m²), Secundária (o resto), Pacote (exceção).
- **COM-E8** O sistema sugere o vendedor da feira. Sem feira no calendário, a diretoria avalia.
- **COM-E9** Diego aprova ou indica outro. Sem resposta em 2 dias, segue o sugerido.
- **COM-E10** O cliente aparece no usuário do vendedor, com o relatório da Prospecção.
- **COM-E11** O vendedor inicia o atendimento e envia o login do Portal.
- **COM-E12** Reunião gravada e transcrita pela IA.
- **COM-E13** A IA preenche o Termômetro e a probabilidade no funil. O vendedor confere.
- **COM-E14** O vendedor atualiza o funil até sexta-feira.
- **COM-E15** Dashboard semanal enviado ao Diego na sexta.

Atendimento comercial: Simone, Luca, Rita e Fran (home office). A Fran atende como vendedora, com meta e clientes, mas [PES-00081]. Meta da equipe: R$ 2 milhões por mês.

### 03 · Projetos

- **PRJ-E1** O Planejamento define o arquiteto e o Portal notifica.
- **PRJ-E2** O arquiteto lê briefing, anexos e pré-escopo.
- **PRJ-E3** Pesquisa, referências e mood board.
- **PRJ-E4** A IA gera o storytelling do conceito.
- **PRJ-E5** Envio ao Comercial. **G1** (até 1 dia): referências validadas, ou volta para E3.
- **PRJ-E6** Modelagem 3D partindo da biblioteca e do catálogo de locações.
- **PRJ-E7** Itens novos ou alterados marcados e cadastrados.
- **PRJ-E8** Testes concluídos. **G2** (até 1 dia): prévia aprovada, ou volta para E6.
- **PRJ-E9** Renders e apresentação.
- **PRJ-E10** Projeto enviado para validação. **G3** (até 1 dia): aprovado, ou volta para E9.
- **PRJ-E11** O Portal gera o memorial descritivo e os códigos. O arquiteto valida.
- **PRJ-E12** O Portal gera a apresentação comercial e a argumentação de venda.
- **PRJ-E14** Pasta e planilha abertas em Custos (3 dias).
- **PRJ-E16** Itens novos enviados ao Diego, que valida em 1 dia. Os aprovados entram na biblioteca.
- **PRJ-E13** (depois do contrato) Detalhamento técnico: pranchas, fichas por categoria, quantidades e tabela de precificação.
- **PRJ-E15** (etapa de amostras) Prancha de amostras com marca e modelo.

Regra: se o Comercial atrasar uma validação, o prazo com o cliente é prorrogado pelo mesmo tempo.

### 04 · Custos

- **CUS-E1** A IA lê o 3D e o memorial.
- **CUS-E2** Planilha de materiais com preços de mercado.
- **CUS-E3** Bloco de logística e operação para o Financeiro: mão de obra, frete, combustível, hotel, alimentação, limpeza, taxas e RRT.
- **CUS-E4** Preço de venda sugerido pela planilha base.
- **CUS-E5** Carol confere a planilha gerada pela IA e aponta ajustes por item (3 dias no total, contando o Financeiro).
- **CUS-E6** A IA propõe a logística e a operação pelo histórico; a Maitê valida ou pede alteração, a IA gera o preço de venda e o Diego aprova o preço final.
- **CUS-E7** Preço e pré-proposta vão para o Anderson.
- **CUS-E8** Alteração de projeto ou item fora do escopo gera a V2 e avisa a Carol.
- **CUS-E9** Carol valida a V2. Se o projeto for aprovado 1 dia ou mais depois do orçamento, o Portal alerta reajuste.
- **CUS-E10** O Financeiro valida o novo preço.
- **CUS-E11** O Anderson recebe a V2.
- **CUS-E12** Carol atualiza a planilha mãe todo mês.
- **CUS-E13** O Portal e a IA recebem a atualização.
- **CUS-E14** O cliente pede um adicional no Portal.
- **CUS-E15** O Comercial avalia o prazo pelo cronograma (até 2 dias).
- **CUS-E16** Custos gera a planilha do adicional (até 2 dias).
- **CUS-E17** Maitê e Diego validam o preço do adicional.
- **CUS-E18** O Anderson faz a proposta e devolve ao Comercial.
- **CUS-E19** Cliente aprova: o adicional entra no projeto e todos os setores são avisados. Se recusar, fica registrado.

### 05 · Financeiro

- **FIN-E1** Aceite do cliente notificado.
- **FIN-E2** Contrato em 1 dia: a IA gera a minuta no modelo padrão e aponta os pontos duvidosos; a Maitê valida cada ponto e libera.
- **FIN-E3** Comanda de materiais (cada setor lista e o Planejamento reúne).
- **FIN-E4** Comanda de logística e equipe.
- **FIN-E5** O Portal cruza previsto × pedido item a item. Toda comanda é aprovada em 1 dia, sem tolerância.
- **FIN-E6** Aprovada: listas liberadas para Compras. Reprovada: volta ao setor.
- **FIN-E7** Compras (Osmar) gera as ordens. O Financeiro confere em 1 dia.
- **FIN-E8** Se as ordens não batem com a comanda e o custo, voltam para Compras.
- **FIN-E9** Centro de custos do projeto com IBS/CBS.
- **FIN-E10** Nota fiscal no Portal até 2 dias após a entrega.
- **FIN-E11** Conferência de notas, compras, pagamentos e vencimentos.
- **FIN-E12** Contas a pagar, recebimentos e fluxo de caixa no sistema financeiro integrado.
- **FIN-E13** Repasse aos projetistas, todos por hora, inclusive freelancers [PES-00112]: Érika estima as horas do projeto → ao concluir, atualiza as horas realizadas → o sistema calcula o valor de cada projetista → Maitê valida e paga.
- **FIN-E14** Comissões: 1,5% em clientes direcionados pela empresa e 3% em clientes abertos pelo vendedor, pagas sobre o recebido, com fechamento mensal.
- **FIN-E15** Dashboard financeiro integrado ao COM-E15.

### Compras (setor próprio, separado do Financeiro)

Dois fluxos simultâneos e separados por unidade: **Rio Grande do Sul = Osmar** · **São Paulo = Samanta**. Cada unidade tem o seu cadastro de fornecedores e as suas ordens de compra. A Maitê (Financeiro) é a mesma para as duas.

- **CMP-E1** A comanda aprovada pelo Financeiro (FIN-E6) vai para Compras da unidade de produção do projeto.
- **CMP-E2** Cotação com os fornecedores do cadastro da unidade; escolhe a opção mais barata e registra as cotações.
- **CMP-E3** Gera a ordem de compra da unidade, com data e horário de entrega obrigatórios (sem eles a ordem não é enviada).
- **CMP-E4** A Maitê confere a ordem em 1 dia (FIN-E8). Se não bater com a comanda e o custo, volta para Compras da unidade.
- **CMP-E5** Compra feita e entrega acompanhada.
- **CMP-E6** Nota fiscal no sistema até 2 dias após a entrega (FIN-E10).

Notificação diária à Maitê, em dois caminhos separados: compras São Paulo e compras Rio Grande do Sul. As ordens geradas pelos formulários de frete, de equipes terceirizadas e de viagem seguem a mesma separação por unidade.

**Agenda de chegada de materiais (por unidade).** Toda ordem de compra aprovada pela Maitê entra automaticamente numa lista de chegada de materiais, em ordem de data e horário. Ela é visível para Eduardo, Marília e Suellen no Rio Grande do Sul, e para Samanta, Rômulo e o assistente em São Paulo.

| Campo da agenda | Conteúdo |
| --- | --- |
| Data e horário previstos | definidos na ordem de compra |
| Fornecedor e material | ex.: chapas de MDF, com quantidade e volume |
| Tipo de veículo | caminhão, van, utilitário |
| Local de descarga | doca ou área definida pela produção |
| Quem descarrega | pessoa ou equipe escalada |
| Destino do material | almoxarifado ou setor produtivo |
| Status | previsto · chegou · descarregado · atrasado |

- **Alerta de conflito:** o sistema cruza a agenda de chegadas com os carregamentos da Expedição (EXP-E8). Se uma descarga e um carregamento caem no mesmo horário, ou se duas descargas se sobrepõem, a equipe da unidade e o comprador são avisados para reagendar.
- **Aviso de chegada:** na véspera e no dia, a equipe da unidade recebe o resumo das entregas previstas. Na chegada, quem recebe dá baixa no app.
- **Atraso:** se o material não chegar no horário, o sistema avisa o comprador e o Planejamento, porque pode mexer nas datas das fichas.

**Planilha de conciliação diária (agente de IA).** Todo dia de manhã, um agente de IA gera, para cada unidade, uma planilha que concilia as saídas (carregamentos previstos da Expedição) com as chegadas de material do dia. Exemplo: carregamento previsto no dia 5 → a planilha mostra quais materiais chegam no dia 5 e em que horário.

- **Quem recebe a notificação toda manhã:** Rio Grande do Sul = Eduardo, Marília e Suellen · São Paulo = Samanta, Rômulo e o assistente.
- **Para quê:** organizar o espaço físico do dia: onde descarregar, onde carregar, quem faz cada movimento e em que ordem.
- **Conteúdo:** horário · tipo (chegada ou saída) · projeto · fornecedor ou destino · material ou volumes · veículo · local · responsável · conflitos apontados pela IA.

**Coleta com veículo próprio.** A ordem de compra tem um campo obrigatório: entrega pelo fornecedor ou coleta com veículo da Imagine. Quando é coleta, ela aparece destacada na agenda de chegadas e na planilha de conciliação, com endereço, horário e material a coletar.

- **Quem recebe a lista de coletas e a notificação:** São Paulo = Samanta e Rômulo · Rio Grande do Sul = Eduardo, Osmar e Leandro (apoio operacional do Eduardo).

### Almoxarifado

Responsáveis: **Rio Grande do Sul = seu Marcos** · **São Paulo = assistente do Rômulo** (a contratar). Os dois usam o app.

- **ALM-E1 · Entrada:** o material comprado entra no estoque quando a chegada é baixada no app (agenda de chegadas).
- **ALM-E2 · Saída:** cada retirada é registrada no app, com material, quantidade, projeto e setor que retirou.
- **ALM-E3 · Conciliação pela IA:** um agente de IA compara a lista de compras com a lista de consumo (saídas) e calcula o saldo de cada item.
- **ALM-E4 · Alerta de segunda-feira:** toda segunda, a IA envia ao responsável da unidade a lista de itens que, a princípio, estão faltando ou abaixo do mínimo.
- **ALM-E5 · Confirmação:** o responsável marca sim ou não em cada item, depois de conferir no estoque.
- **ALM-E6 · Reposição:** os itens com sim viram uma solicitação de compra de reposição para Compras da unidade (Osmar no RS, Samanta em SP), que segue o fluxo normal com aprovação da Maitê.

**Estoque mínimo:** cada item vai ter uma quantidade mínima cadastrada no sistema, por unidade. Os valores ainda não estão definidos. Sugestão: nos primeiros meses, a IA mede o consumo real e propõe o mínimo de cada item, para o seu Marcos e o assistente de São Paulo validarem.

### Frota

Controle de quilometragem e manutenção dos veículos da Imagine, por unidade.

- **FRT-E1 · Cadastro:** cada veículo com placa, modelo, unidade, quilometragem atual e plano de manutenção (troca de óleo e preventivas por quilometragem ou por data).
- **FRT-E2 · Registro de quilometragem:** a quilometragem de cada veículo é lançada no app uma vez por semana, pelo seu Marcos no Rio Grande do Sul e pelo assistente do Rômulo em São Paulo.
- **FRT-E2a · Alerta de registro em falta:** o lançamento da semana anterior vence na segunda-feira. Se não for feito, na terça-feira o sistema alerta o seu Marcos e o assistente do Rômulo (quem lança), além do Eduardo, do Leandro e do Rômulo.
- **FRT-E5 · Lavagem mensal dos veículos:** todo dia 20, o sistema alerta e pede a solicitação de pagamento da lavagem. Rio Grande do Sul: o Leandro solicita, o seu Marcos e o Eduardo conferem. São Paulo: o assistente do Rômulo solicita e o Rômulo confere. Nas duas unidades, a solicitação conferida gera uma ordem de compra para o Financeiro planejar e validar.
- **FRT-E6 · Verba de viagem (combustível, pedágio e estacionamento):** solicitantes: Eduardo e Leandro (RS) · Rômulo e assistente do Rômulo (SP), cada um na sua unidade.
  1. **Solicitação no app:** o combustível é calculado pela tabela padrão: quilômetros a rodar ÷ consumo do veículo (km por litro) × preço do litro. Não é estimativa livre. Pedágio e estacionamento entram com o valor previsto da rota.
  2. **Validação:** o Financeiro valida e libera a verba.
  3. **Comprovação:** o solicitante anexa as notas fiscais de combustível, pedágio e estacionamento.
  4. **Conferência pela IA:** um agente de IA compara o valor liberado com as notas e comprovantes do realizado.
  5. **Sobra de verba:** se o gasto for menor que o liberado, a IA notifica o Financeiro e o solicitante devolve a diferença à empresa. Se o gasto comprovado for maior que o liberado, a empresa reembolsa o solicitante.
- **FRT-E7 · Controles antifraude (regras aprovadas pelo Diego em 31/10):**
  - Rota calculada pelo sistema (origem, destino e km por mapa), não digitada pelo solicitante.
  - Foto do hodômetro na saída e na volta; a IA compara os km rodados com a rota.
  - Preço do litro limitado pela média da região (tabela da ANP); acima disso, exige justificativa.
  - Preferência por cartão de combustível e tag de pedágio da empresa, com dados direto do fornecedor e sem dinheiro adiantado.
  - Prazo de 5 dias após a viagem para anexar os comprovantes; sem eles, nova verba fica bloqueada.
  - A IA confere data, posto, placa e horário das notas com a viagem e aponta repetições e desvios.
  - Descontos em folha só com autorização por escrito e conforme a lei (validar com a Maitê).
- **FRT-E8 · Verba de terceirizados:** montadores terceirizados que recebem verba de combustível, deslocamento, pedágio e estacionamento fazem a solicitação no app com um usuário terceirizado. Esse usuário só acessa a própria verba. O processo e os controles antifraude são os mesmos da FRT-E6 e FRT-E7. Diferença: não há adiantamento nem cartão da empresa. O terceirizado paga do próprio bolso, anexa as notas e a empresa reembolsa, limitado ao valor calculado pela rota e pela tabela padrão.
- **Custos por unidade:** os preços de materiais e de mão de obra são diferentes em São Paulo e no Rio Grande do Sul. A planilha mãe e a base de preços de mercado passam a ter valores separados por unidade. Regra (31/10): como a unidade só é definida no Planejamento, a IA monta a planilha de custos com o maior valor entre as duas unidades, item a item, independentemente de onde o projeto vai ser produzido. Exemplo: se um material custa R$ 100 a mais em São Paulo, entra o valor de São Paulo.
- **Recálculo pela unidade:** quando o Planejamento define a unidade de produção (PLA-E1), o sistema recalcula o custo com os preços reais daquela unidade. A diferença entre o custo orçado (maior valor) e o custo real aparece para o Financeiro como margem extra do projeto, no centro de custos.
- **Planilha mãe (CUS-E12):** continua com a Carol, que controla os preços das duas unidades. Para São Paulo, todo mês, junto com a atualização da planilha mãe, a Carol solicita os preços atualizados à Samanta (compradora de SP) pelo sistema, e a Samanta tem 2 dias para devolver, para a Carol validar e lançar.
- **Novo fluxo de Custos com IA (31/10):**
  1. **Planilha pela IA:** a partir do memorial descritivo e das informações técnicas do projeto, o agente de IA gera a planilha de custos com os parâmetros pré-definidos (base nos casos desta semana). A Carol não elabora mais a planilha.
  2. **Conferência da Carol:** a Carol confere os custos e aponta para a IA os ajustes de cada item. A IA corrige e devolve até o ok da Carol.
  3. **Proposta de operação e montagem pela IA:** com o ok da Carol, o sistema notifica o Financeiro e a IA propõe à Maitê os custos de mão de obra, quantidade de equipe, hospedagem, alimentação, frete e deslocamento. A base é o histórico: rotas e quilometragem pelo mapa, ordens de compra de fretes e de equipes, custo por m², quantidade de montagens e número de estandes. Esses parâmetros ficam configuráveis.
  4. **Validação da Maitê:** a Maitê analisa a proposta da IA e valida ou pede alteração.
  5. **Preço de venda:** com o ok da Maitê, a IA gera o preço de venda automaticamente (custos + logística e operação + margem inicial de 35% + impostos). 6. **Aprovação do Diego:** o Diego aprova o preço final. Junto com o pedido de aprovação, a IA mostra a comparação com o que o cliente pagou na última feira antes de contratar a Imagine (dado do briefing), em valor total e em R$/m², e classifica o orçamento: muito acima, dentro ou muito abaixo do parâmetro do cliente. Muito acima = 10% ou mais acima do que o cliente pagou · muito abaixo = 10% ou mais abaixo · dentro = diferença menor que 10%. Só depois da aprovação a pré-proposta vai para o Anderson.
- **Base histórica de custos realizados (norteador do preço de venda):** todos os agentes de IA (custos, compras, frete, logística, verbas de viagem, equipes terceirizadas, frota) gravam o custo realizado de cada projeto numa base única.
  - **O que entra:** hospedagem, alimentação, passagens aéreas e de ônibus, combustível, pedágio, diárias, despesas de viagem e de veículo, frete, mão de obra, materiais.
  - **Como compara:** projetos parecidos, pela cidade e unidade, m², número de estandes, tamanho da equipe, dias de montagem e complexidade.
  - **Uso no orçamento:** ao montar um novo custo, a IA puxa a média dos projetos parecidos e corrige ou atualiza os valores propostos. Se um item ficar fora da média histórica, a IA aponta para a Carol e a Maitê.
  - **Cuidados:** a média só vale com no mínimo 5 projetos parecidos; valores fora do padrão são marcados e revisados antes de entrar na média; a média é refeita a cada projeto concluído.
- **Projetos repetidos de um ano para o outro:** a IA busca o histórico sem limite de tempo (mais de 12 meses) e encontra o projeto anterior do mesmo cliente e feira. Ela replica o mesmo padrão (itens, quantidades, equipe e logística) e atualiza todos os valores pelos preços atuais da planilha mãe e do mercado. A Carol confere as diferenças entre a edição anterior e a nova.
- **Previsão orçamentária do projeto:** a IA junta a planilha de custos validada pela Carol com a planilha do Audiovisual (modelo padrão gerado pelo Christian no sistema, AUD-E11) e gera uma previsão orçamentária única do projeto. Só a Maitê aprova essa previsão, antes de qualquer compra começar (antes de FIN-E3 e CMP-E1).
- **Relatório de fechamento do mês (para o Diego):** gerado automaticamente no fim de cada mês, com gráficos e dashboard, e enviado ao Diego por notificação.
  - Projetos realizados no mês.
  - Previsto × realizado de cada projeto, no total e por grupo de custo (materiais, mão de obra, logística, viagem, audiovisual).
  - Setores que estouraram o custo planejado, com o valor e o percentual de desvio.
  - Materiais com consumo acima do previsto.
  - Mudanças de projeto que aumentaram o custo (adicionais, novas versões da planilha, retrabalho), com o impacto de cada uma.
  - Análise da IA com as principais causas dos desvios do mês.
- **Estudo orçamentário trimestral:** a partir do 3º mês de operação e depois a cada 3 meses, a IA compila os fechamentos mensais num histórico e gera um estudo orçamentário da empresa: todos os custos da operação, tendências e desvios recorrentes por setor, projeto e unidade. Com esse estudo, a diretoria monta um plano de ação com metas de redução de custos e de aumento de performance das equipes, acompanhado nos fechamentos seguintes e ligado ao Programa de Incentivo (PRG-001).
- **Análise de impacto das alterações de projeto:** a IA cruza o orçado com o realizado e identifica, projeto a projeto, as alterações feitas pelo cliente depois da aprovação que aumentaram o custo. Para cada uma, mostra o item, o valor do aumento, o motivo e o efeito nas metas e no índice previsto × realizado.
  - Quando a alteração não foi cobrada do cliente (não virou adicional), a IA envia um apontamento a Projetos e ao Comercial, com o caso e o prejuízo para a empresa, para evitar que se repita.
  - O Diego recebe cada apontamento na hora, junto com Projetos e Comercial. Os apontamentos também entram no fechamento do mês e no estudo trimestral.
- **Controle de desconto na negociação:** o vendedor registra no sistema todo desconto pedido pelo cliente ou proposto por ele. A IA recalcula a margem na hora. Se o desconto deixar a margem na margem mínima de 25% ou abaixo dela, o sistema alerta o Diego e o Financeiro, que escolhem uma de três saídas:
  1. **A empresa absorve:** o desconto é aceito e a margem menor fica registrada.
  2. **O vendedor absorve:** o desconto é aceito com abatimento na comissão do vendedor.
  3. **O cliente ajusta o projeto:** a IA aponta os itens com custo fora de proporção, e o projeto é alterado ou enxuto para caber no valor, com nova versão da planilha (CUS-E8).
  - A decisão fica registrada no projeto e entra no fechamento do mês.
- **Relatório comercial mensal (COM-E16):** a cada 30 dias, o sistema gera um relatório com dashboard e envia ao Diego.
  - **Volumes por vendedor e da equipe:** clientes captados, propostas enviadas, propostas perdidas e propostas aceitas, com a taxa de conversão.
  - **Análise da IA:** os motivos das propostas perdidas e os pontos que fizeram os clientes fecharem com a Imagine, a partir das reuniões gravadas, do Termômetro, das negociações e dos descontos. Campo obrigatório: ao marcar uma proposta como perdida, o vendedor registra o motivo (sem ele, o status não muda).
  - **Reunião mensal:** com o relatório, o Diego convoca os vendedores para analisar o mês e apontar pontos fortes e pontos fracos da atividade comercial.
- **Índice de Desempenho do Setor (métrica oficial, 31/10):** nota de 0 a 100 calculada pelo sistema com os registros de cada setor.
  1. **Prazo · 25%:** etapas entregues até a data de corte do cronograma.
  2. **Assertividade · 25%:** entregas aprovadas de primeira, sem retorno nem retrabalho.
  3. **Produtividade · 20%:** fichas, itens ou demandas concluídas em relação ao volume planejado.
  4. **Custo · 15%:** previsto × realizado, sem custos adicionais causados pelo setor.
  5. **Satisfação · 15%:** nota do cliente no pós-feira para a etapa do setor e feedback dos setores que recebem o trabalho.
  - **Justiça:** cada setor é medido contra a própria meta e o próprio histórico; ganha quem mais cumpre ou mais evolui. Atraso causado por outro setor não conta contra quem recebeu a tarefa.
  - **Premiação:** ranking mensal visível no painel; prêmio trimestral, ligado ao Programa de Incentivo (PRG-001). Os 3 primeiros meses são só de medição, para calibrar as metas.
- **FRT-E3 · Relatório semanal:** o sistema gera toda semana o relatório de quilometragem de cada veículo.
- **FRT-E4 · Alertas:** veículos no prazo de troca de óleo, de manutenção preventiva ou com necessidade básica de manutenção.
- **Quem recebe:** Rio Grande do Sul = seu Marcos, Eduardo e Leandro · São Paulo = Rômulo.

### 06 · Assistente comercial

- **ACM-E1** Recebe o preço e a pré-proposta.
- **ACM-E2** Finaliza a proposta no modelo da Imagine em até 2 dias após receber o preço.
- **ACM-E3** O Portal encaminha ao vendedor responsável.
- **ACM-E4** O vendedor envia ao cliente, com o assistente em cópia.
- **ACM-E5** O assistente cobra o aceite.
- **ACM-E6** Sem resposta: nova cobrança. Pedido de ajuste: volta ao vendedor e a Custos.
- **ACM-E7** Registra o aceite e avisa vendedor, Diego e Financeiro.
- **ACM-E8** Notifica a Maitê para fazer o contrato.
- **ACM-E9** Contrato enviado para assinatura digital.
- **ACM-E10** Contrato parado: avisa quem precisa assinar.
- **ACM-E11** Contrato assinado registrado → Planejamento.
- **ACM-E12** Em cópia de todos os e-mails do fluxo comercial.
- **ACM-E13** Despacha ou executa cada demanda.
- **ACM-E14** Demanda atrasada: cobra o responsável e, se não resolver, avisa Diego ou Maitê.

### 07 · Planejamento

- **PLA-E1** Érika recebe o projeto fechado (memorial, prancha de amostras e formalização) e define a unidade de produção: Rio Grande do Sul ou São Paulo.
- **PLA-E2** Puxa o cronograma pré-definido.
- **PLA-E3** Monta o cronograma reverso.
- **PLA-E4** Publica o cronograma macro em até 3 dias após o aceite.
- **PLA-E5** Todos os setores são notificados.
- **PLA-E6** Decupa itens e subitens.
- **PLA-E7** Pede o detalhamento a Projetos (3 dias).
- **PLA-E8** O detalhamento sobe e notifica Planejamento e Produção.
- **PLA-E9** Reunião de produção 2 dias depois do detalhamento.
- **PLA-E10** A IA gera a ata.
- **PLA-E11** Pendências com o cliente resolvidas pelo Comercial em até 5 dias.
- **PLA-E12** Marília gera as fichas e as listas por IA (cerca de 5 dias).
- **PLA-E13** Eduardo prevê o tempo de cada ficha (2 dias).
- **PLA-E14** Érika monta o cronograma interno em cadência.
- **PLA-E15** Publica o cronograma de produção.
- **PLA-E16** O Portal gera o formulário do evento → Credenciamento.
- **PLA-E17** O Credenciamento monta a pasta.
- **PLA-E18** Peça pronta: o líder lê o QR code, tira a foto e marca a qualidade.
- **PLA-E19** Baixa na ficha e aviso ao próximo setor.
- **PLA-E20** Atraso: o novo prazo é repassado. Erro: Eduardo e Marília decidem refazer.
- **PLA-E21** Dashboard: prontos × faltam, no prazo, antecipado e atrasado.
- **PLA-E22** Relatório de conformidade com fotos (Suellen e Produção).
- **PLA-E23** O Comercial envia o relatório ao cliente quando ele pede.

**Janela de 25 dias até o carregamento (D0):** bloco 1, D-25 a D-21, detalhamento · bloco 2, D-20 a D-16, reunião, comandas e cronograma · bloco 3, D-15 a D-11, compras e fichas · bloco 4, D-10 a D0, produção.

### 08 · Credenciamento

- **CRD-E1** Notificação com cliente, evento e prazos.
- **CRD-E2** Abre a pasta do projeto.
- **CRD-E3** Coleta os dados cadastrais do cliente.
- **CRD-E4** Pede ao cliente o login do portal do expositor.
- **CRD-E5** Levanta documentos, regras e prazos da feira.
- **CRD-E6** O Portal gera o checklist obrigatório.
- **CRD-E7** Cronograma da feira compatibilizado com o macro.
- **CRD-E8** Notifica o responsável por cada documento.
- **CRD-E9** O responsável devolve pelo Portal em até 3 dias após a notificação.
- **CRD-E10** Elabora o termo de responsabilidade e os formulários.
- **CRD-E11** Checklist 100%, ou a pasta fica bloqueada.
- **CRD-E12** Um agente de IA confere cada documento contra os padrões definidos pela Maitê e a notifica com a lista do que está e do que não está em conformidade.
- **CRD-E13** Ok final da Maitê em até 5 dias.
- **CRD-E14** Publica no portal da feira.
- **CRD-E15** Aprovação da feira, ou ajuste e nova publicação.
- **CRD-E16** Pasta final para a Montagem.

Checklist básico: projeto aprovado, projeto estrutural, detalhamento parcial, planta elétrica, pontos de carga e cabos de aço, laudo do engenheiro, cálculo de carga aérea, RRT de projeto, RRT de execução, RRT de elétrica, termo de responsabilidade, documentos dos funcionários, caminhão e placa, e outros exigidos pela feira.

### 09 · Setores produtivos

Setores: marcenaria, marcenaria de estruturas, serralheria, elétrica, comunicação visual, pintura, tapeçaria, almoxarifado, logística interna e audiovisual.

- **PRD-E1** O líder é notificado no app.
- **PRD-E2** Reunião obrigatória de apresentação das fichas.
- **PRD-E3** Pedido de material por ficha e por código.
- **PRD-E4** O Portal compara com a comanda e o custo.
- **PRD-E5** Acima do previsto: filtro e aprovação.
- **PRD-E6** Material formalizado e pedido para Compras.
- **CVI-E1** O cliente publica os arquivos na aba do cliente até 20 dias antes do início da feira.
- **CVI-E2** A IA confere formato, resolução, cor, medidas, sangria, fontes e corte.
- **CVI-E3** Não apto: o cliente tem 1 dia para republicar. Na 2ª vez, o comercial liga.
- **CVI-E4** Formatação para impressão.
- **CVI-E5** Formatação para corte.
- **CVI-E6** Prova enviada ao cliente.
- **CVI-E7** Validação do cliente, ou ajuste.
- **AUD-E1** Análise do projeto pelo Christian, depois da abertura automática da demanda (AUD-E0).
- **AUD-E2** Alinhamento com o cliente.
- **AUD-E3** Rider técnico.
- **AUD-E4** Conferência de medidas com a montagem, com foto.
- **AUD-E5** Medidas incompatíveis: ajuste e nova conferência.
- **AUD-E6** Fichas dos equipamentos enviadas ao cliente.
- **AUD-E7** O cliente publica os conteúdos até 20 dias antes do início da feira.
- **AUD-E8** Teste dos conteúdos.
- **AUD-E9** Não apto: o cliente é avisado.
- **AUD-E10** Arquivos programados e incluídos no checklist de montagem.
- **PRD-E7** Programação do setor no app.
- **PRD-E8** Ficha produzida com foto e ok.
- **PRD-E9** Atraso: novo prazo e aviso a Eduardo, Marília e Érika.
- **PRD-E10** Ficha vai para a qualidade e a Expedição.

Audiovisual · etapas novas (31/10): **AUD-E0** demanda aberta automaticamente quando o Planejamento identifica equipamento de AV · **AUD-E11** planejamento financeiro (estoque ou sublocação, frete com Eduardo ou Samanta, planilha de custos própria do AV) · **AUD-E12** validação da planilha com o Financeiro. Credenciamento e logística do AV são originados pelo próprio setor.

### 12 · Expedição

- **EXP-E1** Notificação de peça concluída.
- **EXP-E2** Recebimento com leitura do QR code.
- **EXP-E3** Nova verificação de qualidade com foto.
- **EXP-E4** Reprovada: volta para a produção, com alerta e registro no relatório de erros. A produção tem 3 dias para corrigir.
- **EXP-E5** Embalagem.
- **EXP-E6** Etiqueta gerada (proposta de 10 × 15 cm).
- **EXP-E7** Etiqueta colada.
- **EXP-E8** Carregamento com leitura de cada volume.
- **EXP-E9** Carregado × previsto: se faltar item, o sistema alerta quais itens não foram conferidos (não bloqueia a saída).
- **EXP-E10** Descarregamento no pavilhão.
- **EXP-E11** Peça localizada pela foto da etiqueta.
- **EXP-E12** Leitura ao desembalar (a instalação é registrada no MON-E5).

### 13 · Montagem

- **MON-E1** Érika libera o acesso por categoria, só para a equipe escalada.
- **MON-E2** Retirada das credenciais no CAEX.
- **MON-E3** Documentos apresentados pelo app.
- **MON-E4** Peças desembaladas pela etiqueta.
- **MON-E5** Item montado com ok e foto (um não vale sem o outro).
- **MON-E6** Dashboard de montagem.
- **MON-E7** O cliente acessa a aba do cliente.
- **MON-E8** Conferência item a item com o cliente.
- **MON-E9** Ressalvas corrigidas até o dia do cliente. Se o ajuste for inviável, o produtor e o comercial decidem e registram no termo.
- **MON-E10** Termo de aceite assinado → jurídico, financeiro e comercial.
- **MON-E11** O cliente abre um chamado no plantão técnico.
- **MON-E12** Notificação: plantonista, comercial, coordenador de montagem e coordenador de produção.
- **MON-E13** Execução em cerca de 10 minutos, com foto.
- **MON-E14** Relatório e push para o cliente.
- **MON-E15** Desmontagem com checklist e separação das peças que voltam e das descartadas.
- **MON-E16** Acessos encerrados 5 dias após a desmontagem.

### 14 · Pós-feira

- **POS-E1** Abre a aba Pós-feira com o dossiê do evento.
- **POS-E2** O responsável revisa o dossiê.
- **POS-E3** Pesquisa enviada por link sem login, por e-mail e WhatsApp (cerca de 3 minutos).
- **POS-E4** Lembrete para quem não respondeu.
- **POS-E5** Respostas gravadas no histórico do cliente.
- **POS-E6** A IA analisa notas, temas e sentimento.
- **POS-E7** Detrator (0 a 6): Diego e o vendedor são avisados e há contato em até 48 horas.
- **POS-E8** Promotor (9 ou 10): pedido de indicação ou case.
- **POS-E9** Painel com NPS, notas por etapa, setor, vendedor e feira.
- **POS-E10** Reunião de melhoria.
- **POS-E11** Plano de ação 5W2H.
- **POS-E12** Efeito medido na rodada seguinte.

### 15 · Marketing

- **MKT-E1** Recebe as datas do projeto.
- **MKT-E2** Bastidores da produção.
- **MKT-E3** Captação da montagem.
- **MKT-E4** O evento como um todo, com drone.
- **MKT-E5** Fotos de portfólio sem pessoas.
- **MKT-E6** Vídeo do stand.
- **MKT-E7** Depoimento com autorização de imagem.
- **MKT-E8** Material salvo no acervo pelo código.
- **MKT-E9** Seleção para o pós-venda e o portfólio.
- **MKT-E10** Um setor pede acesso com motivo e prazo.
- **MKT-E11** Liberação com termo de uso, ou negativa com motivo.
- **MKT-E12** O acesso expira sozinho e os downloads ficam registrados.
- **MKT-E13** Carta de agradecimento e brinde.
- **MKT-E14** Pontos de fidelidade.
- **MKT-E15** Convite para indicação e case.

### Programa de incentivo

- **INC-E1** O Portal registra os movimentos de cada usuário.
- **INC-E2** Painel individual e de equipe atualizado todo dia.
- **INC-E3** Placar por setor e pessoa: prazo 40%, qualidade 35%, eficiência 25%.
- **INC-E4** Gatilho financeiro da empresa. Se não for atingido, só há reconhecimento não financeiro.
- **INC-E5** Contestações: o atraso causado por outro setor não conta.
- **INC-E6** Maitê e Diego validam valores e forma legal.
- **INC-E7** Pagamento: prêmio, PLR ou bônus em contrato.
- **INC-E8** Revisão semestral.

Níveis: setor 50%, feira 30%, individual 20%. Implantação: 3 meses só medindo e depois um piloto de 1 trimestre.

## Respostas do Diego · 31/10/2026

- **Setores:** 10 = Expedição · 11 = Logística · 12 = Controle de qualidade. O documento SET12 atual cobre Expedição e qualidade e será dividido.
- **Preço de venda (CUS-E4):** preço final = custo de materiais + logística e operação + margem + impostos.
  - Margem inicial: 35% de lucro líquido (usada no preço de venda). Margem mínima: 25% (piso da negociação; ao chegar nela, disparam os alertas de desconto).
  - Impostos: lucro presumido, no modelo híbrido da transição para IBS e CBS.
  - No ERP, as alíquotas ficam configuráveis, porque mudam ao longo da transição.

* **CRM:** RD Station. Sistema financeiro e assinatura digital: o Diego vai verificar.

- **Responsáveis:** Credenciamento = Alexandra · Expedição = Suellen · Pós-feira = ainda sem responsável. Marketing = Érika (também Planejamento) · Assistente comercial = Anderson (confirmado).

* **Etiquetas:** duas etapas. Uma etiqueta simples com QR code é colada no primeiro setor da cadência, para a baixa no app em cada setor. A Expedição cola a etiqueta final com código, nome, foto e QR code.

- **Remuneração por hora [PES-00113]:** cada projeto tem uma planilha com as horas estimadas. O valor da hora é calculado, as horas são acumuladas por projeto e o pagamento a cada projetista segue esse cálculo.

* **Regras da hora:** o valor da hora é negociado com cada projetista e fica parametrizado no ERP, por pessoa. O pagamento é feito pelas horas realizadas, não pelas estimadas. A Érika cria a planilha de horas planejadas de cada projeto.

- **Fluxo de pagamento dos projetistas:** vale para todos os projetistas e freelancers [PES-00114]. 1) Érika estima as horas do projeto no sistema. 2) Ao concluir o projeto, Érika lança as horas realizadas. 3) O sistema gera o valor a pagar a cada projetista pelo valor da hora dele. 4) Maitê valida. 5) Maitê efetua o pagamento. Substitui o modelo antigo de fixo e fixo + %.

* **Comissões dos vendedores:** Os vendedores [PES-00115] recebem comissão pela origem do cliente: 3% em clientes abertos pelo próprio vendedor e 1,5% em clientes que a empresa direciona para ele. Os percentuais ficam cadastrados no sistema. A comissão é calculada sobre o que o cliente efetivamente pagou, com fechamento no fim de cada mês e um único pagamento. Adicionais não geram comissão.

- **Fran:** atende como vendedora (recebe clientes e entra na meta da equipe), é assistente do Diego e também projetista. [PES-00081]. A meta da equipe continua R$ 2 milhões por mês.

* **Modelo de contrato (FIN-E2):** criado e revisado pelo jurídico interno, a Maitê. No ERP, um assistente de IA elabora o contrato junto com a Maitê: preenche o modelo com os dados da proposta aceita e marca os pontos duvidosos (cláusulas fora do padrão, condições de pagamento, prazos, escopo e adicionais) para ela validar antes de liberar.

- **Prazo da proposta (ACM-E2):** o Anderson finaliza a proposta em no máximo 2 dias depois que o preço chega.

* **Cobrança do aceite (ACM-E5):** o Anderson cobra o cliente a cada 3 dias até a resposta. O sistema agenda e lembra cada cobrança. Depois de 10 dias sem resposta, o sistema avisa o Diego e o vendedor.

- **Documentos do Credenciamento (CRD-E9):** cada setor tem 3 dias, a partir da notificação, para devolver o documento à Alexandra.

* **Conferência do Credenciamento (CRD-E12):** um agente de IA verifica os documentos conforme os padrões que a Maitê determinar (padrões a criar). Ele notifica a Maitê com os documentos conformes e não conformes, e ela dá o ok final. Documento não conforme: o agente notifica a Alexandra para refazer e subir de novo no sistema, e a conferência roda outra vez. Prazo da Maitê para o ok final: 5 dias.

- **Arquivos do cliente (CVI-E1 e AUD-E7):** artes de comunicação visual e conteúdos de audiovisual chegam até 20 dias antes do início da feira. O sistema avisa o cliente antes do prazo.

* **Peça reprovada na Expedição (EXP-E4):** a produção tem 3 dias para corrigir.

- **Carregamento (EXP-E9):** o sistema não bloqueia a saída do caminhão. Ele alerta a produção da unidade do projeto sobre quais itens não foram conferidos: Rio Grande do Sul = Eduardo e Marília · São Paulo = Rômulo e Samanta.

* **Unidade de produção:** a Imagine produz no Rio Grande do Sul e em São Paulo. No Planejamento (PLA-E1), a Érika aponta onde o projeto vai ser produzido. A partir daí, o sistema manda as notificações, fichas, alertas e acessos para a equipe da unidade escolhida.
  - Produção RS: Eduardo e Marília.
  - Produção SP: Rômulo e Samanta.
  - No ERP, cada unidade tem a sua equipe cadastrada por papel, e cada projeto leva o campo "unidade de produção".

- **Equipe de São Paulo (11 pessoas):** Planejamento = Samanta · Produção = Rômulo e Samanta · Pintura, elétrica, marcenaria e serralheria = equipes terceirizadas, que não usam o app. Um assistente do Rômulo (a contratar) faz a leitura do QR code, a foto e a baixa das peças no app. O mesmo assistente interno cuida da Expedição e do controle de qualidade. Logística (frete e transporte até a feira) = Samanta. Montagem: coordenador geral = Rômulo · produtor de montagem = a contratar · montadores e plantonista = equipe terceirizada, sem acesso ao app. O produtor de montagem marca o checklist com foto e atende os chamados do plantão no app. Comercial: Luca e Rita atuam na operação de São Paulo, mas o Comercial não é dividido por unidade. Simone, Fran, Luca e Rita vendem para clientes que podem ser produzidos em qualquer unidade, e a unidade de produção só é definida no Planejamento (PLA-E1). Projetos, Credenciamento, Marketing, Custos e Financeiro são compartilhados com a equipe do Rio Grande do Sul.

* **Logística no Rio Grande do Sul (Setor 11):** Eduardo cuida do frete e do transporte até a feira. Ele preenche no app um formulário padrão de solicitação de frete, com transportadora, origem e destino, data de carregamento, horário de chegada na feira, quantidade de veículos, tipo de transporte, valor negociado e data limite para emissão da nota fiscal de remessa de material. O formulário gera uma ordem de compra para o Financeiro (FIN-E7). Em São Paulo, a Samanta usa o mesmo formulário.

- **Etiqueta simples da produção:** impressa e colada no primeiro setor pelo assistente da Marília no Rio Grande do Sul e pelo assistente do Rômulo em São Paulo.

* **Escala e pagamento das equipes terceirizadas:** o Eduardo (RS) e a Samanta (SP) selecionam e escalam a equipe de cada projeto da sua unidade, com o mesmo processo. As equipes terceirizadas recebem toda semana. No app, um formulário padrão por projeto registra quem trabalhou. O formulário gera uma ordem de compra, que o Financeiro valida e coloca no fluxo de pagamento semanal.

- **Campos do formulário semanal das equipes terceirizadas:** projeto · pessoas que trabalharam · número de diárias · valor da diária · valor da diária de alimentação, quando houver · descontos de diária com o motivo (falta do terceirizado ou mudança do combinado antes do prazo) · relatório completo com observações, para o Financeiro saber como proceder em cada caso.

* **Formulário de deslocamento da equipe para a feira:** a equipe terceirizada produz o projeto na empresa e depois viaja para montar na feira. Eduardo (RS) ou Samanta (SP) preenche no app um formulário de planejamento da viagem, com: custo de deslocamento · quantidade de diárias de hotel · quantidade de pessoas · nome de cada pessoa · quem vai ser credenciado na feira.
  - Vai para o Financeiro: gera uma ordem de compra de hotel e deslocamento, que o Financeiro valida (FIN-E7).
  - Vai para o Credenciamento: a Alexandra recebe a lista, coleta os dados cadastrais de cada colaborador e gera os documentos para credenciar na feira (CRD-E8).

- **Prazo do formulário de deslocamento:** segue o manual de cada feira (ex.: 15 ou 20 dias antes). A Alexandra lê o manual e define o prazo limite, que entra no cronograma reverso da Érika já no Planejamento (PLA-E3 e CRD-E7). O sistema avisa Eduardo ou Samanta antes do prazo.

* **Audiovisual técnico e operação:** responsável = Christian, que planeja os projetos do Rio Grande do Sul e de São Paulo. A montagem de audiovisual é sempre feita por equipe terceirizada. Na feira, quem marca o checklist com foto e atende os chamados de AV no app é o produtor de montagem.
  - **Gatilho (AUD-E0):** quando o Planejamento identifica equipamento de audiovisual no projeto (PLA-E6), o sistema notifica o Christian e abre a demanda do setor automaticamente.
  - **Planejamento financeiro (AUD-E11, depois das etapas AUD-E1 a E10):** define se usa equipamento do estoque ou se subloca; planeja a logística e o frete dos equipamentos junto com o Eduardo (RS) ou a Samanta (SP); monta uma planilha de custos separada, só da operação de audiovisual, com equipes, diárias, deslocamento, hospedagem, alimentação, locação de equipamentos, atendimento e plantão.
  - **Validação (AUD-E12):** o Christian valida essa planilha com o Financeiro.
  - **Credenciamento, logística e planejamento:** seguem o mesmo fluxo dos outros setores, mas quem origina as demandas é o próprio Audiovisual. O Christian não planeja sozinho: ele preenche o mesmo formulário de deslocamento usado pelos outros setores (pessoas, diárias, hotel, deslocamento e credenciados), que notifica a Alexandra e o Financeiro. Para credenciar a equipe de audiovisual na feira, o Christian encaminha esse documento à Alexandra, com a lista e os dados da equipe terceirizada.

- **Compras · cotação (FIN-E7):** Compras vira setor próprio, com Osmar (RS) e Samanta (SP) em fluxos separados, cada um com o seu cadastro de fornecedores e as suas ordens de compra. A cotação usa os fornecedores do histórico e escolhe a opção mais barata. A Maitê recebe notificação diária dos dois caminhos. No ERP: cadastro de fornecedores com histórico de preços por material, e registro das cotações e do fornecedor escolhido em cada ordem de compra.

## 6 · Regras de negócio e bloqueios

- **Código único do item:** nasce no memorial (PRJ-E11) e não muda até a montagem. O sistema não aceita item sem código em planilha, comanda, ordem de compra, ficha ou cronograma, e não valida baixa, qualidade, carregamento ou montagem sem código.
- **Validações G1, G2 e G3:** a etapa seguinte de Projetos só é liberada depois da aprovação.
- **Biblioteca:** o arquiteto busca primeiro o que já existe. Os itens novos só entram depois da validação do Diego.
- **Versões:** toda mudança de projeto ou de preço gera uma nova versão da planilha e avisa quem vem depois.
- **Área de Custos restrita:** só Custos, Financeiro e diretoria.
- **Comandas:** sem tolerância. Toda diferença passa pelo Financeiro.
- **Material:** nenhuma ficha começa sem material formalizado.
- **Arquivos do cliente:** nenhum arquivo ou conteúdo segue sem estar apto.
- **Foto e ok:** obrigatórios na produção, na expedição, na montagem e na desmontagem.
- **Credenciamento:** a pasta só é liberada com o checklist em 100% e o ok da Maitê.
- **Acessos de montagem:** por categoria e por feira, expiram 5 dias após a desmontagem. A aba do cliente fecha no fim da feira.
- **Acervo de marketing:** só o Marketing vê. Os outros setores pedem acesso com prazo.
- **Distribuição:** sem resposta do Diego em 2 dias, o cliente segue para o vendedor sugerido.

## 7 · Prazos (SLAs)

| Etapa | Prazo | Responsável |
| --- | --- | --- |
| G1, G2, G3 | 1 dia cada | Comercial |
| Planilha de custos com preço (PRJ-E14 a CUS-E6) | 3 dias | Carol, Maitê e Diego |
| Validação de itens novos (PRJ-E16) | 1 dia | Diego |
| Contrato (FIN-E2) | 1 dia | Maitê |
| Cronograma macro (PLA-E4) | 3 dias após o aceite | Érika |
| Detalhamento técnico (PLA-E7) | 3 dias | Projetos |
| Reunião de produção (PLA-E9) | 2 dias após o detalhamento | Érika |
| Pendências com o cliente (PLA-E11) | 5 dias | Comercial |
| Fichas técnicas (PLA-E12) | cerca de 5 dias | Marília |
| Tempo por ficha (PLA-E13) | 2 dias | Eduardo |
| Aprovação de comanda (FIN-E5) e de ordem de compra (FIN-E7) | 1 dia | Financeiro |
| Nota fiscal no Portal (FIN-E10) | 2 dias após a entrega | Osmar |
| Adicional (CUS-E15 a E18) | até 2 dias por etapa | Comercial, Custos, Financeiro, Anderson |
| Republicar arquivo não apto (CVI-E3) | 1 dia | Cliente |
| Chamado do plantão (MON-E13) | cerca de 10 minutos | Plantonista |
| Contato com detrator (POS-E7) | 48 horas | Vendedor e Diego |
| Encerramento de acessos (MON-E16) | 5 dias após a desmontagem | Portal |
| Funil e dashboard comercial | toda sexta-feira | Vendedores e Diego |
| Planilha mãe e preços de mercado | todo mês | Carol |

## 8 · Perfis de acesso

| Perfil | Pessoas citadas | Acesso principal |
| --- | --- | --- |
| Diretoria comercial e operação | Diego | tudo; aprova peças, vendedores, preço e itens novos |
| Diretoria jurídica e financeira | Maitê | contratos, preço, comandas, credenciamento, incentivo |
| Vendedor | Simone, Luca, Rita, Fran [PES-00116] | só os próprios clientes, funil e Termômetro |
| Assistente comercial | Anderson | propostas, aceites, contratos, painel de demandas |
| Arquiteto | Paulão, Ertal, João, Amanda, Dani, Fran, Jessyka, Rodrigo, freelancers | projetos indicados a ele |
| Custos | Carol | área restrita de custos |
| Planejamento | Érika | cronogramas, fichas, acessos da montagem |
| Produção geral | Eduardo, Marília | fichas, tempos, erros e refação |
| Qualidade | Suellen | relatório de conformidade |
| Compras | Osmar | ordens de compra e notas |
| Líder de setor produtivo | a definir | app do setor |
| Credenciamento e Expedição | Alexandra (Credenciamento), Suellen (Expedição) | aba do setor |
| Equipe de montagem | por feira: encarregado, responsável, produtor, coordenador, plantonista | app da montagem |
| Marketing | Érika | acervo e relacionamento |
| Cliente | por projeto | aba do cliente |

## 9 · Integrações

- CRM RD Station com o WhatsApp Web. Regra (31/10): o WhatsApp de cada usuário do Comercial é integrado ao sistema, e todas as conversas com cada cliente ficam gravadas no histórico do cliente. Regra (31/10): todos os arquivos salvos nos computadores corporativos do Comercial, de Compras e do Planejamento são rastreados pelo sistema, para não haver versões paralelas nem distorção de dados fora do ERP.
- Agente de IA no WhatsApp para o formulário do contato.
- Gravação e transcrição de reuniões por IA.
- Publicação automática em LinkedIn, Instagram, site, blog e newsletter.
- Sistema de gestão financeira (nome não informado).
- Plataforma de assinatura digital (não informada).
- Caixa de e-mail do fluxo comercial, com o assistente em cópia.
- Portal do expositor de cada feira, acessado com o login do cliente.
- App mobile com leitor de QR code e câmera.
- Impressão de etiquetas.
- Push e e-mail para o cliente.

## 10 · Dashboards e indicadores

- **Comercial (COM-E15):** meta × realizado, funil, m² e R$/m², classes, reuniões, previsão ponderada.
- **Financeiro (FIN-E15):** comissões, volume de vendas, curva da meta do mês.
- **Produção (PLA-E21):** prontos × faltam, no prazo, antecipado, atrasado, erros.
- **Montagem (MON-E6):** itens com ok.
- **Pós-feira (POS-E9):** NPS, CSAT por etapa, CES, recompra, taxa de resposta, tempo de retorno ao detrator, temas recorrentes.
- **Incentivo (INC-E2):** tempo de resposta, data de corte cumprida, primeira vez certa, retrabalho, informação incompleta.

## 11 · Pendências a validar antes do desenvolvimento

- Setores 10 (Expedição) e 11 (Logística): definidos, falta mapear o fluxo de cada um.
- Documentos-mestres PLANDEM\_FLX-001 e PLANDEM\_SET-001 não estão na pasta. O índice ainda marca os setores 02 e 14 como não recebidos.
- Preço de venda: regra definida; faltam as alíquotas exatas de cada imposto.
- Nomes do CRM, do sistema financeiro e da plataforma de assinatura digital.
- Responsáveis de Credenciamento, Expedição, Pós-feira e Marketing, e confirmação do Anderson como assistente comercial.
- Etiqueta: modelo em duas etapas definido. A etiqueta simples do primeiro setor é impressa e colada pelo assistente da Marília (RS) e pelo assistente do Rômulo (SP).
- Remuneração de projetistas e freelancers, valor da hora e momento de pagar a comissão [PES-00117].
- Prazos não definidos: finalizar a proposta, cadência de cobrança do aceite, devolução de documentos ao Credenciamento, ok da Maitê, data limite de arquivos e conteúdos do cliente, correção de peça reprovada na expedição.
- Se o Portal bloqueia a saída do caminhão quando falta item.
- Diferença de leitura do QR code entre Expedição V01 e Montagem V03: vale a Montagem V03.
- Regras de fidelidade e indicação e o desenho legal do incentivo dependem de validação financeira, jurídica e contábil.

## 12 · Experiência do cliente no Portal (31/10)

O cliente acompanha o projeto inteiro pelo Portal, em seis momentos, todos aprovados pelo Diego.

1. **Início · painel de boas-vindas:** linha do tempo do projeto, do briefing à pós-feira, e quem é quem (vendedor, arquiteto e assistente, com foto e contato).
2. **Projeto e proposta:** o cliente vê os renders 3D no Portal, comenta sobre cada imagem e compara as versões lado a lado. A proposta traz um resumo claro do que está incluso e do que é adicional.
3. **Produção · acompanhamento em tempo real:** percentual pronto do estande e fotos das peças saindo da fábrica, usando as fotos já tiradas no app.
4. **Antes da feira · checklist do cliente:** prazos com contagem regressiva do que falta ele entregar (artes, vídeos, dados de credenciamento), com lembretes automáticos no WhatsApp.
5. **Na feira · guia do estande:** contatos do plantão, horários de montagem e desmontagem e manual de uso dos equipamentos.
6. **Depois da feira · relatório final:** fotos profissionais do estande, galeria do Marketing e convite para reservar a próxima edição.

**Validação de amostras pelo cliente (etapa obrigatória):** na data definida no cronograma reverso do Planejamento, o sistema notifica o cliente (Portal e WhatsApp) com a lista dos itens que precisam do ok dele: materiais, acabamentos, cores e peças de referência, cada um com foto da amostra.

- O cliente aprova ou reprova item a item no Portal, com comentário quando reprovar.
- Item reprovado volta para Projetos e Produção ajustarem, e uma nova amostra é enviada para validação.
- O cliente tem 2 dias para responder. Sem resposta no prazo, o sistema avisa o vendedor e o Planejamento, porque o atraso pode mexer no cronograma de produção.
- Nenhuma ficha de item com amostra começa a produção sem o ok do cliente registrado.

**Formulário pré-evento do cliente (etapa em que a montagem começa a ser combinada):** o cliente preenche no Portal até 15 dias antes do início da feira (o sistema lembra antes do prazo):

1. **Responsáveis do cliente:** quem fala com a Imagine na montagem, o que cada um cuida e por qual assunto responde pela empresa.
2. **Validador da montagem:** quem valida a montagem na feira, com nome e dados para a autenticação eletrônica no app da Imagine (assinatura do termo de aceite).
3. **Cronograma do cliente na feira:** chegada de produtos, chegada de amostras, chegada e saída da equipe.
4. **Fornecedores terceirizados do cliente** que vão atuar no evento e impactam a operação da Imagine.

**Itens de cortesia e retirada pelo cliente:** a Imagine aponta no Portal quais itens podem ficar com o cliente como cortesia (por exemplo peças de comunicação visual, expositores, móveis ou outros itens do projeto). O cliente confirma o aceite e a retirada é feita por ele no próprio evento. A partir da retirada, a responsabilidade é do cliente: a Imagine não faz entrega posterior e não responde por danos de transporte. O aceite fica registrado no sistema. Quem define os itens de cortesia é o Comercial, com validação do Diego.

**Termo de entrega oficial com assinatura eletrônica (MON-E10):** ao fim da montagem, o app gera automaticamente o termo de entrega do estande, em PDF, com valor jurídico para contestações posteriores ao término da feira.

- **Conteúdo:** dados do projeto, cliente e feira; lista de todos os itens do memorial com o ok e a foto de cada um; ressalvas registradas; itens de cortesia retirados pelo cliente; data, hora e local.
- **Assinatura:** o validador indicado no formulário pré-evento assina eletronicamente no app, com autenticação pelos dados que ele cadastrou. O produtor de montagem assina pela Imagine.
- **Registro:** o termo assinado fica no histórico do projeto e é enviado por e-mail ao cliente, ao Jurídico (Maitê), ao Financeiro e ao Comercial.
- A plataforma de assinatura eletrônica deve garantir validade jurídica (validar com a Maitê).

**Congelamento do projeto (prazo limite de alterações):** o sistema calcula no cronograma de produção uma data limite para alterações, a partir da data de carregamento (D0). Padrão: D-10 (ex.: carregamento no dia 10 → limite 10 dias antes), configurável por projeto.

- O cliente é notificado (Portal e WhatsApp) antes da data limite e no dia em que o projeto congela.
- A mensagem explica que não é possível nenhuma nova alteração, porque a produção está encerrando e não há mais tempo para recompra de materiais, planejamento do item, nova ficha técnica e demanda aos setores para produzir ou ajustar uma peça já concluída.
- Depois do congelamento, o Portal bloqueia novos pedidos de alteração e de adicional para aquele projeto. Exceção só com aprovação do Diego, registrada no sistema.

## 13 · Programa de indicação com recompensa (31/10)

O cliente indica outras empresas e ganha upgrade no próximo estande, em três níveis com selo. A recompensa vai sempre para a empresa do cliente (upgrade), nunca em dinheiro para a pessoa que indicou (validar compliance com a Maitê).

**Metodologia**

1. O cliente indica pelo Portal: empresa, contato e feira, ou link de indicação.
2. A indicação entra no CRM (RD Station) com a origem do cliente indicador, e o vendedor atende.
3. A indicação só conta depois do contrato assinado e do primeiro pagamento recebido.
4. O upgrade fica disponível para o próximo projeto do cliente, com validade de 12 meses.
5. O controle usa a base de pontos de fidelidade do Marketing (MKT-E14).

| Nível | Indicações fechadas | Upgrade (% do contrato indicado) | Benefícios extras |
| --- | --- | --- | --- |
| Parceiro Imagine | 1 | até 0,5% | mobiliário, iluminação ou comunicação visual extra |
| Embaixador Imagine | 3 | até 1% | prioridade na agenda de feiras concorridas |
| Imagine Signature | 5 | até 1,5% | item exclusivo no estande e convite para eventos da Imagine |

**Selo:** selo digital do nível no Portal, plaquinha discreta no estande se o cliente quiser, e nível visível para o vendedor no CRM.

**Ambiente do programa no Portal:** uma página própria, em formato de apresentação, com o regulamento completo, o passo a passo da indicação, os três níveis e selos, o nível atual do cliente e o histórico das indicações dele.

**Biblioteca de fidelização (itens de upgrade):** um portfólio dentro da biblioteca de itens macro da Imagine, com foto, descrição e nível mínimo de cada item. Os itens disponíveis ainda estão a definir. A Imagine define no início do ano todos os itens do ciclo e libera novos itens a cada mês.

**Plano de comunicação mensal:**

1. No início do ano, o Marketing (Érika, responsável pelas campanhas) monta o calendário anual de campanhas, com os itens que entram em cada mês.
2. Todo mês, os novos itens entram na biblioteca de fidelização.
3. O sistema dispara uma campanha pelo WhatsApp integrado para os clientes, com os itens novos, sugestões de uso no próximo estande e um convite para indicar.
4. A mensagem leva para a página do programa no Portal.
5. O relatório da campanha mostra mensagens enviadas, acessos à página e indicações geradas no mês.

## 14 · Projeto Collabs com marcas parceiras (31/10)

A Imagine propõe ao cliente experiências de marcas parceiras dentro do estande, personalizadas para a marca do cliente, para aumentar a experiência dos visitantes e da diretoria. Responsáveis pelas parcerias: Diego e Érika.

**Exemplos de collabs:**

- Café com máquina e gravação do nome da marca.
- Cachaça customizada para a marca (ex.: Weber Haus), servida à diretoria no estande.
- Energético personalizado com a marca do cliente.
- Vinhos personalizados.
- Souvenirs e outros itens que a Imagine proponha.
  - Kits presente para os clientes VIP do nosso cliente, montados com produtos das marcas parceiras e personalizados com a marca do cliente.

**Como entra no sistema:**

1. Catálogo de collabs dentro da biblioteca de itens macro, com marca parceira, foto, descrição, personalização possível e prazo de produção.
2. Duas formas de oferta: como item adicional vendido ao cliente, ou como benefício do programa de upgrade por indicação.
3. As collabs entram no plano de comunicação mensal, junto com os novos itens de upgrade.

## 15 · Divisão de Inovação e Tecnologia Imagine (31/10)

Nova divisão de negócios, em duas frentes, oferecida ao mesmo cliente que já compra estandes, feiras e eventos.

### Frente 1 · Estúdio 3D Farm

Peças customizadas com a marca do cliente, produzidas no estúdio de 3D Farm da Imagine, para estande, ambiente, showroom ou PDV.

**O que oferecer**

1. Peças de marca para o estande: logos em 3D, displays de produto, troféus, expositores e decoração.
2. Peças para showroom e PDV, que ficam com o cliente o ano inteiro.
3. Brindes e miniaturas impressos em 3D, combináveis com as collabs.

**Como vender**

1. Na proposta do estande: o projeto sugere duas ou três peças 3D customizadas como opcional, com render e preço.
2. Fora da feira: peças para showroom ou PDV, gerando receita entre uma feira e outra.
3. Pacote anual: contrato com número de peças por ano e preço melhor.

**Metodologia**

1. Briefing rápido pelo Portal.
2. Modelagem 3D e render para aprovação.
3. Protótipo ou amostra, pela validação de amostras do Portal.
4. Produção na 3D Farm, com acompanhamento no Portal.
5. Entrega, ou instalação junto com o estande.

### Frente 2 · Tecnologia de performance do estande

Ferramentas para o cliente medir e melhorar o resultado do estande, entregues num painel no Portal ao fim da feira.

1. **Captação de leads:** app em que a equipe do cliente lê o QR code do crachá do visitante e o contato vai direto para o CRM do cliente; totens de cadastro e sorteios.
2. **Contagem de público:** sensores na entrada do estande com número de pessoas, horários e tempo de permanência.
3. **Mapa de calor e movimento:** câmeras com IA mostrando onde as pessoas pararam, o que olharam e por onde circularam.
4. **Fluxo no pavilhão:** sensores de Wi-Fi e Bluetooth estimando quantas pessoas passaram perto e quantas entraram (taxa de conversão do espaço).

**LGPD:** contagem e mapa de calor de forma anônima, sem identificar pessoas. Identificação só com aviso e consentimento do visitante (ex.: leitura do QR code). Validar com a Maitê.

**Desenvolver ou contratar (a decidir):** captação de leads pode ser desenvolvida internamente com IA; contagem e mapa de calor podem ser modelo híbrido (câmeras e sensores comprados, análise própria); fluxo no pavilhão tende a exigir fornecedor especializado. Pesquisa de fornecedores e custos pendente.

**Pesquisa inicial de fornecedores (31/10/2026):**

| Tecnologia | Fornecedores e opções encontrados | Observação |
| --- | --- | --- |
| Contagem e mapa de calor com IA | [Seed](https://seeddigital.com.br/fluxo-em-loja), [FX Data Intelligence](https://fxdata.com.br/) (SP), [Flowix](https://www.flowix.ai/) | focados em varejo e shopping; Flowix usa câmeras já existentes; leitura de idade, gênero e humor exige termo LGPD |
| Câmeras com contagem embutida | Intelbras e Hikvision ([Softpad](https://softpad.pro/artigos/contagem-de-pessoas-com-camera/)) | compra de equipamento; câmera no teto apontada para o chão, uma por entrada |
| Contagem simples | [HeadCounter](https://headcounter.app/pt/) (app gratuito) | contagem manual de entrada e saída |
| Captação de leads | apps de leitura de crachá ([comparativo Wave Connect](https://wavecnct.com/blogs/best-tools-lead-capture-trade-shows)) | cobrança por locação de leitor ou por lead; desenvolvimento próprio é viável |
| Fluxo no pavilhão por Wi-Fi | [Altervision](https://www.altervision.com.br/posts/guia-completo-do-contador-de-fluxo-de-pessoas) | pouco confiável: celulares atuais embaralham o endereço do aparelho; usar só como medida secundária |

- Nenhum fornecedor publica preço: é preciso pedir orçamento, especificando uso temporário em feiras.
- Ajuste na recomendação: fluxo no pavilhão por Wi-Fi e Bluetooth perde força; priorizar câmeras com IA para contagem e mapa de calor.

## 16 · Compras · pesquisa paralela de preços (31/10)

Em paralelo à cotação do comprador (CMP-E2), o sistema faz uma pesquisa automática de preços, com três fontes:

1. **Histórico da Imagine:** compara com o último preço pago e com a média dos últimos meses do mesmo material.
2. **Cotação automática:** ao nascer a comanda, o sistema envia o pedido de preço por e-mail ou WhatsApp para três ou mais fornecedores cadastrados da unidade; as respostas entram direto no sistema.
3. **Pesquisa na internet:** um agente de IA busca o mesmo material em lojas online e distribuidores e traz o menor preço com frete.

**Quadro comparativo:** o preço do comprador aparece ao lado das três fontes. Se a diferença passar do limite, a ordem de compra não segue direto: o comprador (Osmar no RS, Samanta em SP) e a Maitê recebem alerta, e o comprador justifica a escolha ou renegocia. Limite do alerta: 10% (configurável).

## 17 · Política de uso de dispositivos e WhatsApp corporativo (31/10)

Todo contato de trabalho com clientes e fornecedores passa por notebook e número de WhatsApp Business da Imagine, monitorados pelo sistema. Política completa no Drive (PLANDEM\_POL-001); validar com a Maitê antes de aplicar.

- **Monitoramento:** a IA analisa as conversas do WhatsApp corporativo, no computador e no celular, e aponta sinais de risco em Compras: pedido de pagamento por fora, valores diferentes da ordem de compra, fornecedor sem cadastro, combinações fora do sistema.
- **Proibido:** negociar com clientes ou fornecedores pelo número ou aparelho pessoal. Aparelhos e contas pessoais nunca são monitorados.
- **Ciência:** cada usuário assina o termo da política antes de receber os equipamentos.

**Checklist de aquisição**

- [ ] Notebooks corporativos: Comercial, Compras e Operação
- [ ] Celulares corporativos: Comercial, Compras e Operação
- [ ] Números de WhatsApp Business da empresa para cada usuário
- [ ] Integração dos números e notebooks ao ERP (WhatsApp e rastreamento de arquivos)
- [ ] Termo da política assinado por cada usuário
- [ ] Validação jurídica da política pela Maitê

**Telas do modo TV (incluído em 01/11)**

- [ ] TVs para cada setor produtivo, nas duas unidades (RS e SP)
- [ ] Painel de telas para a sala do Planejamento de produção: cronograma geral + uma tela por setor, em cada unidade
- [ ] Mini PC ou TV box com navegador para cada TV que não seja smart TV
- [ ] Suportes de parede e pontos de rede ou Wi-Fi em cada setor
- [ ] Login de exibição (só leitura) do ERP para cada tela

## 18 · Locações (31/10)

Setor próprio, com o mesmo modelo de Compras. Responsáveis: **Rio Grande do Sul = Érika** · **São Paulo = Samanta**.

- Cotação pelo histórico de fornecedores de locação da unidade.
- Pesquisa paralela de preços (histórico, cotação automática e internet), com alerta acima de 10%.
- Ordem de locação com data e horário de entrega obrigatórios e aprovação da Maitê em 1 dia.
- Agenda de chegadas e conciliação diária, junto com Compras.
- Contato com fornecedores só pelo WhatsApp corporativo, conforme a política PLANDEM\_POL-001.
- Controle de devolução, feito pelo produtor de montagem na feira, no app: data e horário de devolução de cada item locado; conferência com foto na chegada e na devolução; registro de avarias, com aviso à Érika (RS) ou à Samanta (SP) e à Maitê para tratar a cobrança com o fornecedor. Notificação obrigatória no app: o produtor de montagem recebe aviso no horário de chegada de cada item locado e na véspera e no horário da devolução. Se a conferência com foto não for registrada, o sistema avisa de novo o produtor e alerta a Érika (RS) ou a Samanta (SP).

**Divisão das locações:** Érika (RS) e Samanta (SP) cuidam de móveis e demais locações. **Locação de equipamentos de audiovisual é demanda do Christian**, nas duas unidades, com o mesmo controle completo: cotação pelo histórico, pesquisa paralela de preços com alerta acima de 10%, ordem com aprovação da Maitê, agenda de chegadas, WhatsApp corporativo, e conferência de chegada e devolução com foto pelo produtor de montagem na feira, com as mesmas notificações. Avarias e conferências não registradas alertam o Christian e a Maitê.

## 19 · Prospecção na feira pelo app (31/10)

Seção do app para o vendedor usar ao visitar uma feira, com registro de cada estande visitado.

**Registro por estande**

1. Foto do estande, com feira, data e horário gravados automaticamente.
2. Foto do cartão de visita: a IA lê e preenche nome, cargo, empresa, telefone e e-mail.
3. Pré-cadastro rápido: número do estande, tamanho aproximado, montadora atual, nível de interesse e observações por texto ou áudio.
4. Gravação de áudio da abordagem, com aviso e consentimento do cliente (validar LGPD com a Maitê).
5. O lead entra no RD Station com origem "visita em feira", vendedor responsável e data de recontato sugerida.

**Análise da IA na gravação**

- Tom da conversa.
- Itens que chamaram a atenção do cliente.
- Críticas e objeções.
- Pontos positivos.
- Necessidades e oportunidades identificadas no relato.
- Status do cliente (ex.: abertura para contrato futuro).
- Lista de feiras que o cliente faz, tamanho dos estandes e quando abre concorrência.
- Mapa de compra: contato, gerente, decisor, comprador e influenciador.
  - Metragem do estande atual (m²) e quanto pagou por m².
  - Fidelização com a montadora atual: se tem, se pensa em trocar ou buscar novas oportunidades.
  - Verba: se a verba da última feira se mantém, aumentou ou diminuiu.

**Fotos com pontos da conversa:** área do app para fotografar partes do estande e marcar em cada foto o ponto da conversa a que ela se refere, com categoria (crítica, objeção, desejo de melhoria, ponto positivo) e comentário por texto ou áudio. Exemplos: o expositor que o cliente disse que não ficou bom; a fachada que ele gostaria de melhorar. A IA liga cada foto ao trecho da gravação em que o assunto aparece, e as fotos vão para o histórico do cliente e para o briefing de Projetos.

**Script do vendedor:** o app mostra na tela, durante a visita, um roteiro com os mesmos pontos, para o vendedor lembrar de perguntar. Ao fim, a IA marca no pré-cadastro o que foi coletado e o que ficou faltando, para completar no recontato.

**Roteiro do vendedor na visita (exibido no app)**

1. **Abertura e consentimento:** "Olá, sou \[nome\], da Imagine Arquitetura Efêmera. Fazemos estandes para feiras no Brasil todo. Posso gravar nossa conversa para não perder nenhum detalhe? Ela fica só com a nossa equipe." Sem autorização, não grava e registra por texto.
2. **Contato:** "Com quem eu estou falando? Qual o seu cargo?" Pedir o cartão e fotografar.
3. **Estande atual:** "Quantos m² tem este estande?" · "Vocês costumam ficar nesse tamanho?"
4. **Opinião sobre o estande:** "O que vocês mais gostaram neste estande?" · "Tem alguma coisa que não ficou como vocês queriam?" Fotografar e marcar cada ponto citado.
5. **Desejos de melhoria:** "Se pudessem mudar algo para a próxima edição, o que seria?"
6. **Montadora atual:** "Vocês trabalham sempre com a mesma montadora?" · "Estão abertos a conhecer outras opções?"
7. **Investimento:** "Quanto vocês investiram por m² neste estande?" · "A verba para a próxima feira se mantém, aumenta ou diminui?"
8. **Calendário:** "Em quais outras feiras vocês participam durante o ano?" · "Com qual tamanho de estande?" · "Quando abre a concorrência para a próxima?"
9. **Processo de compra:** "Quem cuida da contratação do estande?" · "Quem decide no final?" · "Quem mais participa ou influencia essa escolha?" Identificar contato, gerente, decisor, comprador e influenciador.
10. **Fechamento:** "Posso enviar nosso portfólio e marcar uma conversa?" · "Qual o melhor contato e a melhor data?" Registrar a data de recontato.

Ao encerrar, a IA mostra o que foi coletado e o que ficou faltando, para o vendedor completar ainda no estande ou no recontato.

**Próximo contato automático na agenda de prospecção:** ao fim da visita, a IA cria o compromisso na agenda de prospecção do vendedor, a partir da conversa gravada:

1. **Data combinada:** se o cliente marcou um dia, o compromisso entra nessa data.
2. **Período combinado:** se ficou um período (ex.: "depois da feira", "em março"), a IA escolhe uma data dentro dele.
3. **Sem data:** a IA sugere uma data pelo contexto, como a abertura da concorrência ou a próxima feira do cliente.

O compromisso traz o resumo da visita, as fotos e os pontos que ficaram faltando. O vendedor confirma ou ajusta a data no app, e o lembrete chega antes do contato.

## 20 · Formulário completo de entrada do cliente (31/10)

Vale para as duas entradas: cliente vindo da Prospecção ou aberto direto pelo vendedor. O briefing só é liberado para o Planejamento com os campos obrigatórios preenchidos. Os dados alimentam os dashboards e as estatísticas comerciais.

| Bloco | Campos | Setores que usam |
| --- | --- | --- |
| 1 · Cliente e contatos | razão social, CNPJ, segmento, porte; mapa de compra: contato, decisor, comprador e influenciador, com cargo, telefone e e-mail | Comercial, Financeiro, Credenciamento |
| 2 · Origem | Prospecção, aberto pelo vendedor, indicação ou cliente antigo | Comercial (comissão), Marketing, programa de indicação |
| 3 · Feira | nome, cidade, pavilhão, datas de montagem, evento e desmontagem, link do manual do expositor | Planejamento, Credenciamento, Logística |
| 4 · Estande | metragem, número, tipo (ilha, esquina, corredor), planta da área | Projetos, Custos |
| 5 · Histórico | montadora anterior, valor pago total e por m², o que gostou e o que não gostou, fotos da última edição | Custos (comparação de preço), Projetos |
| 6 · Verba e prazos | verba prevista, forma de pagamento, data limite da proposta, concorrência com outras montadoras | Comercial, Custos, Financeiro |
| 7 · Necessidades do projeto | objetivo na feira, número de pessoas recebidas, ambientes (recepção, reunião, depósito, copa, lounge), produtos expostos, audiovisual, comunicação visual, identidade da marca | Projetos, Audiovisual, Comunicação visual |
| 8 · Extras | interesse em collabs, peças 3D, tecnologia de leads e mapa de calor, itens que o cliente quer levar após a feira | Comercial, Inovação, Montagem |

**Estatísticas geradas:** conversão por origem, ticket por m², segmentos atendidos, feiras, comparação com a montadora anterior e motivos de perda.

## 21 · Apresentação institucional dentro do ERP (01/11)

A apresentação institucional da Imagine (roteiro PLANDEM\_COM-APR-001) fica disponível no ERP para o vendedor.

1. **Uso na reunião:** o vendedor abre a apresentação pelo ERP, em tela cheia, para compartilhar na reunião online ou presencial. O ERP registra a data da apresentação no histórico do cliente.
2. **Envio por e-mail:** o vendedor gera um PDF da apresentação e envia ao cliente pelo próprio ERP, com o e-mail corporativo.
3. **Rastreamento:** o ERP registra data e hora do envio e a abertura do e-mail. Mostra também se o cliente abriu o link da apresentação, quantas vezes e quando.
4. **Alertas:** quando o cliente abre o e-mail ou a apresentação, o vendedor é notificado, para fazer o contato no momento certo. Sem abertura em 3 dias, o sistema lembra o vendedor de reenviar ou ligar.
5. **Versão única:** só a versão oficial aprovada pelo Diego fica disponível, para evitar apresentações desatualizadas.

Observação: a leitura de abertura funciona melhor por link rastreado do que por anexo, porque alguns programas de e-mail bloqueiam o registro de abertura.

## 22 · Apresentação personalizada por IA (01/11)

Depois da reunião de briefing, a IA gera uma versão da apresentação adaptada à real necessidade do cliente, a partir da gravação, do Termômetro e do formulário de entrada.

1. **Leitura da reunião:** a IA identifica objetivos, desafios, problemas da última feira, objeções e oportunidades.
2. **Narrativa sob medida:** para cada ponto, a IA escreve textos que mostram como a Imagine resolve aquele problema. Exemplo: se o cliente reclamou de atraso na montagem anterior, o slide de controle de qualidade e cronograma abre com essa resposta.
3. **Seleção de conteúdo:** a IA escolhe os cases do mesmo segmento, destaca os diferenciais ligados às dores dele e tira o que não interessa.
4. **Revisão do vendedor:** o vendedor confere e ajusta antes de enviar. Nada sai sem esse ok.
5. **Envio e rastreamento:** a versão personalizada é enviada pelo ERP, com registro de envio e de abertura, e fica no histórico do cliente.

Regra: a IA usa só dados reais da Imagine e o que o cliente disse; não inventa números, cases ou promessas.

## 23 · Banco de imagens para as apresentações (01/11)

Área no ERP e no app para salvar e organizar fotos, usada pela IA para montar as apresentações personalizadas.

1. **Cadastro:** fotos enviadas pelo app ou pelo ERP, ligadas ao projeto pelo código, e integradas ao acervo do Marketing (MKT-E8).
2. **Categorias:** segmento (náutico, segurança, calçados e moda, alimentos e bebidas, turismo, máquinas e outros), feira, cliente, tipo de imagem (fachada, interior, detalhe, audiovisual, 3D Farm, collabs, bastidores da fábrica, montagem) e os segmentos do planejamento de prospecção.
3. **Etiquetas pela IA:** a IA sugere as etiquetas de cada foto; o Marketing confere.
4. **Autorização de uso:** cada foto indica se pode ser usada em apresentação externa (autorização do cliente e da marca). A IA só usa fotos liberadas.
5. **Uso na apresentação:** ao personalizar a apresentação, a IA busca as imagens do segmento e do problema do cliente e aplica nos slides; o vendedor confere antes do envio.
6. **Responsável:** Marketing (Érika) cuida da curadoria e das autorizações.

## 24 · Biblioteca de referências e projetos para o setor de Projetos (01/11)

Banco de imagens de referência e de arquivos de projetos já feitos, para pesquisa dos arquitetos e para reaproveitar soluções que deram certo.

**Categorias**

| Filtro | Opções |
| --- | --- |
| Segmento | náutico, segurança, calçados e moda, alimentos e bebidas, turismo, pesca, máquinas e outros |
| Feira | ex.: Fishing Show Brasil |
| Tipo de estande | fechado, aberto, outdoor, só estrutura aérea |
| Porte | por faixa de m² |
| Estilo | futurista, rústico, temático, corporativo e outros |
| Material predominante | metal, madeira, madeira de demolição, painéis de LED, elementos aéreos |
| Expositores específicos | ex.: expositores de produtos de pesca |

**O que cada item guarda:** imagens de referência, renders, fotos do estande montado, arquivos 3D, pranchas, memorial, custos realizados e avaliação do cliente no pós-feira.

**Uso automático pela IA:** quando o vendedor abre um projeto, por exemplo um estande de pesca para a Fishing Show Brasil, a IA cruza segmento, feira, tipo e porte e já deixa disponível para o arquiteto, na aba do projeto:

1. Projetos anteriores parecidos, com arquivos prontos para reaproveitar.
2. Expositores e peças que deram certo, com o código da biblioteca (BIB) e o custo realizado.
3. Referências de estilo e materiais da mesma categoria.

Objetivo: acelerar o projeto e reduzir custos reaproveitando o que já foi validado. Integrado à biblioteca de itens (PRJ-E7) e à base histórica de custos. Responsável pela curadoria: Érika. No fim de cada projeto, o sistema salva arquivos e fotos automaticamente e a IA sugere as categorias. A IA notifica a Érika a cada projeto concluído, com as fotos, os arquivos e as categorias sugeridas numa fila de aprovação; ela confere, ajusta se precisar e dá o ok. Só depois do ok o material entra na biblioteca. Itens parados na fila geram lembrete.

## 25 · Integração automática do projeto até a ordem de compra (01/11)

O mesmo código de item atravessa todo o fluxo, sem redigitação.

1. **Projeto:** o arquiteto monta o 3D com itens da biblioteca, cada um com código.
2. **Memorial:** gerado pelo sistema a partir do projeto, com os mesmos códigos.
3. **Custos:** a IA gera a planilha a partir do memorial, com histórico e biblioteca; Carol confere, Maitê valida operação, Diego aprova o preço.
4. **Previsão orçamentária:** Custos + Audiovisual, aprovada pela Maitê.
5. **Base de compras automática (novo):** com contrato assinado e previsão aprovada, o sistema converte a planilha de custos, item a item e pelo mesmo código, numa pré-comanda separada pela unidade de produção (RS ou SP), com materiais, quantidades e valores previstos.
6. **Conferência dos setores:** os setores produtivos só conferem e ajustam a pré-comanda (substitui a listagem manual do FIN-E3). Toda diferença em relação ao orçado passa pelo Financeiro.
7. **Ordem de compra:** nasce da pré-comanda aprovada, já comparando comprado × orçado item a item, com a pesquisa paralela de preços.
8. **Financeiro:** acompanha em tempo real o previsto × comprado × realizado por projeto e por código, alimentando a base histórica de custos.

**Destino de cada item codificado (01/11):** já na planilha de custos, cada item recebe o tipo, que define para onde ele vai quando o projeto é aprovado:

1. **Item a produzir:** o sistema gera automaticamente a ficha técnica de produção daquele item, com o mesmo código (material, medidas, quantidade, setores da cadência). A ficha vai para o Planejamento e para a produção da unidade, e tem o campo obrigatório de foto do item produzido, que fecha a ficha com o ok do líder.
2. **Item a locar:** o sistema compila todos os itens de locação do projeto e gera automaticamente a solicitação de locação: móveis e demais itens para a Érika (RS) ou a Samanta (SP); equipamentos de audiovisual para o Christian.
3. **Item a comprar pronto:** entra na base de compras (pré-comanda) da unidade.
4. **Item de estoque:** é reservado no almoxarifado da unidade, com baixa na saída.

O código é o mesmo da ficha, da etiqueta com QR code, do carregamento e da montagem.

**Dois momentos distintos (01/11):**

- **Antes do contrato (fase comercial):** só o projeto 3D feito pelo arquiteto e o memorial descritivo gerado pela IA a partir dele, que alimentam custos e proposta.
- **Depois do contrato assinado:** o sistema abre a demanda de detalhamento técnico (gerado pela IA e conferido pelo arquiteto) e, a partir dele, gera as fichas técnicas de produção. Nenhum detalhamento ou ficha é gerado antes da formalização do contrato.

**Da ficha técnica à baixa na produção (01/11)**

1. **Origem:** o memorial é gerado pela IA no projeto; o detalhamento técnico é gerado pela IA e conferido pelo arquiteto; a ficha técnica de cada item a produzir sai desse detalhamento, compilada pelo mesmo código do item.
2. **Ficha impressa:** a ficha é impressa em papel para cada setor (pintura, marcenaria, serralheria e demais), com o código e um QR code da ficha.
3. **Foto e identificação:** ao concluir sua etapa, o operador do setor fotografa com o celular o item pronto junto com a ficha. O sistema lê o QR code e o código da ficha na foto e vincula automaticamente a foto àquela ficha e àquele item. Se não reconhecer, pede a confirmação do código.
4. **Baixa:** o operador dá o ok no app; a etapa do setor fica concluída e a ficha segue para o próximo setor da cadência.
5. **Visão do Planejamento:** o responsável pelo planejamento da unidade vê no painel, em tempo real, os itens concluídos por setor, cada um com a ficha e a foto correspondentes.

Em São Paulo, onde os setores são terceirizados sem acesso ao app, a foto e a baixa são feitas pelo assistente do Rômulo.

## 26 · Comunicação visual · controle por etapa no ERP (01/11)

Cada peça de comunicação visual, com seu código, passa pelas etapas CVI-E1 a E7 dentro do ERP. Nenhum controle paralelo (planilha, WhatsApp, papel) é aceito. Responsáveis de comunicação visual: Rio Grande do Sul = Carol (solicita e controla o planejamento das peças) e Adair (chefe do setor, executa e dá o ok de cada etapa) · São Paulo = a definir.

1. **Checklist por etapa:** em cada etapa, o responsável de comunicação visual da unidade marca o ok no sistema, com data, hora e usuário. A peça só avança para a etapa seguinte com esse ok.
2. **Planejamento junto:** o planejamento de produção da unidade acompanha e confere as mesmas etapas, e recebe alerta quando uma peça atrasa em relação ao cronograma.
3. **Painel em tempo real:** quadro por etapa (colunas CVI-E1 a E7) mostrando todas as peças de todos os projetos, com filtros por projeto, feira, cliente, unidade e responsável. O Diego, ou qualquer gestor, vê na hora quantas e quais peças estão em cada etapa, ex.: todas na etapa 3, na 4, na 5.
4. **Alertas:** peça parada numa etapa além do prazo gera alerta ao responsável e ao Planejamento.
5. **Histórico:** cada peça guarda quem deu cada ok, quando, e os arquivos e provas de cada etapa.

**Modo TV para o setor (01/11):** o painel tem uma versão para tela grande, exibida numa TV no setor.

- **Como funciona:** um endereço próprio do ERP em modo TV, aberto numa smart TV ou num mini PC ou TV box com navegador. O aparelho usa um login de exibição, só leitura, sem permitir alterações.
- **Atualização automática:** os dados se atualizam sozinhos a cada poucos segundos, sem ninguém mexer.
- **Leitura de longe:** letras grandes e cores por situação: vermelho = falta fazer · amarelo = em produção · verde = concluído · azul = embalado.
- **Filtro por setor e unidade:** cada TV mostra só o seu setor (ex.: comunicação visual no RS), com os projetos ordenados pela data de carregamento mais próxima.
- **Totais no topo:** quantas peças faltam, quantas estão concluídas e quantas embaladas, por projeto.
- Cada setor produtivo do planejamento (marcenaria, serralheria, pintura, elétrica, comunicação visual, tapeçaria e demais) tem a sua tela, nas duas unidades.
  - **Sala do Planejamento de produção:** painel com várias telas: uma com o cronograma geral de produção e uma tela para cada setor, mostrando os itens de todos os setores ao mesmo tempo.

## 27 · Ficha técnica de comunicação visual (item a desenvolver · 01/11)

**Manual de comunicação visual (gerado no detalhamento técnico):** tabela com três colunas: 1) foto ou render do item · 2) descrição, medidas e material · 3) código do item + letra (A, B, C…). A letra é o nome que o arquivo de arte do cliente deve ter ao ser enviado no Portal; o sistema usa a letra para ligar cada arte ao seu item e avisa se faltar alguma.

**Ficha técnica por item (novo modelo, específico de comunicação visual):** além do manual, cada item de comunicação visual ganha a sua ficha técnica, no mesmo padrão das fichas de móveis e outros setores, impressa com QR code e com o campo de foto do item produzido.

| Campo | Exemplo: letra caixa |
| --- | --- |
| Código + letra | código do item · letra A |
| Imagem | render ou foto de referência com cotas |
| Descrição | letra caixa com logo do cliente |
| Medidas | altura, largura, espessura e afastamento da parede |
| Material e acabamento | acrílico, adesivado |
| Processo | corte a laser |
| Fixação | suporte afastador da parede |
| Iluminação | fita LED (tipo, cor da luz, potência), fonte e cabeamento |
| Instalação | máscara ou gabarito de instalação |
| Arte vinculada | arquivo da letra A e status da validação (CVI-E1 a E7) |
| Setores | sequência: comunicação visual → elétrica → embalagem |
| Baixa | foto do item pronto com a ficha e ok do responsável |

Geração: depois do contrato, junto com as demais fichas, a partir do detalhamento técnico e com o mesmo código.

## 28 · Embalagem calculada na ficha técnica (01/11)

1. **Por item:** ao gerar cada ficha técnica, a IA define a embalagem ideal pelo tipo, medidas, peso e fragilidade do item (ex.: plástico bolha, filme stretch, cantoneira de papelão, fita crepe, caixa, manta, proteção de canto) e calcula as quantidades. A embalagem entra na lista de materiais da ficha.
2. **Por projeto:** o sistema soma a embalagem de todos os itens e gera a lista total de compra de embalagem do projeto, que entra na base de compras da unidade (com estoque do almoxarifado descontado).
3. **Expedição:** a ficha mostra à Expedição como embalar cada item.
4. **Custos:** já no orçamento, a IA estima o custo de embalagem a partir do memorial e do histórico; a quantidade exata vem da ficha, depois do contrato.
5. **Aprendizado:** a IA compara o previsto com o consumido em cada projeto e ajusta os cálculos.

## 29 · Tela inicial de cada usuário (01/11)

Cada usuário tem uma tela inicial própria, montada pelo seu papel e setor.

1. **Minha fila do dia:** só as demandas da pessoa: tarefas de hoje, próximos vencimentos e atrasos, em verde, amarelo e vermelho, com o projeto e o prazo de cada uma.
2. **Aprovações:** fila de itens que dependem do ok da pessoa, com aprovar ou devolver na própria tela.
3. **Notificações:** nova tarefa ou prazo próximo gera aviso no celular; o que é urgente também vai pelo WhatsApp corporativo.
4. **Acesso:** escritório pelo ERP no computador; fábrica e feira pelo app, com fichas, QR code e câmera.
5. **Visão de gestor:** Diego, Maitê e coordenadores veem a fila de cada pessoa e de cada setor, com gargalos e atrasos.
6. **Integração:** a mesma informação alimenta o modo TV dos setores e o Índice de Desempenho do Setor.

## 30 · Página do projeto · visão completa (01/11)

Qualquer usuário com permissão acompanha um projeto numa página única. Exemplo: a Carol quer saber em que pé está o projeto da Coca-Cola.

1. **Busca:** por cliente, projeto, feira ou código; se o cliente tiver vários projetos, todos aparecem, com a feira de cada um.
2. **Topo:** linha do tempo das 12 etapas (da proposta ao pós-feira), etapa atual destacada, percentual geral, data de carregamento e dias restantes.
3. **Pendências:** o que falta, com responsável, prazo e atrasos em vermelho (ex.: arte B não enviada pelo cliente, amostra aguardando aprovação).
4. **Itens:** todos os itens pelo código, separados em a produzir, em produção, concluídos e embalados, com ficha e foto.
5. **Abas:** custos (previsto × realizado, só para perfis autorizados), documentos, aprovações do cliente, locações, credenciamento e histórico de quem fez o quê.
6. **Resumo pela IA:** o usuário pergunta "como está o projeto da Coca-Cola?" e a IA responde com etapa atual, principais pendências e riscos de atraso.

As permissões seguem o perfil de cada usuário (seção Perfis de acesso).

## 31 · Estimativa de volume de carga por projeto (01/11)

1. **Cálculo:** com as medidas e o peso de cada item da ficha técnica, já com a embalagem, a IA calcula o volume (m³) e o peso total do projeto, considerando itens frágeis ou que não podem ser empilhados.
2. **Sugestão de veículos:** a IA indica o tipo e a quantidade de veículos (ex.: utilitário pequeno, 3/4, caminhão baú, truck baú, carreta baú) e uma sugestão de distribuição da carga. Capacidades de cada tipo de veículo ficam configuráveis, com os dados reais das transportadoras.
3. **Uso:** a estimativa preenche o formulário de frete do Eduardo (RS) ou da Samanta (SP) e ajuda a Expedição a planejar o carregamento.
4. **Antes do contrato:** a IA faz uma estimativa preliminar a partir do memorial e de projetos parecidos, para o custo de frete no orçamento.
5. **Aprendizado:** depois do carregamento, o sistema compara o estimado com os veículos realmente usados e ajusta os cálculos.

**Itens que não são carregados pela Imagine (01/11):** muitas locações, equipamentos de audiovisual, totens digitais e itens especiais são entregues pelo fornecedor direto na feira.

- Cada item tem o campo "transporte": carregado pela Imagine ou entregue pelo fornecedor na feira. O sistema já sugere pelo que foi registrado na ordem de compra ou de locação.
- **Confirmação obrigatória:** antes de fechar o cálculo de carga, o sistema pede ao Eduardo (RS) ou à Samanta (SP), e ao Christian para o audiovisual, que confirmem a lista de itens que não vão no caminhão da Imagine.
- Esses itens saem do cálculo de volume e de veículos, mas entram na agenda de entregas na feira, com fornecedor, data e horário, para o produtor de montagem conferir a chegada com foto.

## 32 · Pintura especificada e calculada na ficha técnica (01/11)

1. **Especificação por peça:** a ficha técnica traz o bloco de pintura: substrato (MDF, madeira, metal, outro), preparação (fundo ou selador), tipo de tinta (PVA à base d'água, acrílica, esmalte sintético, automotiva, só selador, entre outras), cor (código do fabricante ou Pantone), acabamento (fosco, acetinado, brilho) e número de demãos.
2. **Cálculo da quantidade:** a IA calcula a área a pintar de cada peça a partir das medidas do 3D e do detalhamento, multiplica pelas demãos e divide pelo rendimento do produto, com um percentual de perda. O resultado (litros de tinta, selador e diluente por peça) entra na lista de materiais da ficha.
3. **Rendimentos configuráveis:** o rendimento de cada produto e marca e o percentual de perda ficam cadastrados no sistema, ajustáveis pelo setor de pintura.
4. **Por projeto:** a soma de todas as peças gera a lista de compra de tintas por tipo e cor, descontando o estoque, e entra na base de compras da unidade.
5. **Aprendizado:** o setor registra o consumo real; a IA compara com o previsto e ajusta os cálculos.

## 33 · Marcenaria · duas categorias e padrões construtivos (01/11 · demanda de especificação)

**Categorias, com modelos de ficha diferentes:**

- **Marcenaria de móveis:** padrão de indústria de móveis (balcões, mesas, expositores, mobiliário).
- **Marcenaria estrutural:** paredes, sancas, travessas, colunas, pergolados, fachadas, testeiras, forros, elementos cenográficos, fundo de palco, trainel, bastidor, molduras de painel de LED.

**Uma ficha por item:** a IA gera uma ficha para cada item com código próprio. Ex.: 5 travessas de medidas diferentes = 5 fichas; testeiras da frente, das laterais e do fundo = uma ficha para cada. Itens idênticos podem ficar numa ficha com quantidade.

**Como é produzido (campos da ficha estrutural):** estrutura interna (bitola e espaçamento do sarrafo), chapeamento (tipo e espessura da chapa), acabamento (pintura, revestimento ou laminado), fita de borda (sim ou não), fixação e travamento, divisão em partes para transporte e montagem, e vista explodida com medidas.

**Moldura de painel de LED:** a IA usa a especificação do painel (medidas dos gabinetes, quantidade e montagem) e respeita a margem de instalação em volta do painel para encaixe das placas; depois aplica a moldura de acabamento. A margem padrão fica configurável.

**Biblioteca de padrões construtivos:** abre-se uma demanda para cadastrar os padrões de produção de cada tipo de item (como se faz uma parede, uma testeira, uma sanca, uma moldura de LED), com desenhos e regras. A IA usa esses padrões para gerar as fichas, o arquiteto confere e a marcenaria valida. Os padrões são refinados a cada projeto, à medida que a operação evolui. Validadores dos padrões: Rio Grande do Sul = Marco (marcenaria, não é o seu Marcos do almoxarifado), Wagner, Leonardo e Henrique · São Paulo = Rômulo.

## 34 · Elétrica · biblioteca, catálogo e cálculo de LED (01/11 · demanda de especificação)

1. **Catálogo de materiais elétricos:** fitas LED (tensão, potência por metro, temperatura de cor, proteção, tamanho mínimo de corte), neon flex, módulos LED, fontes, cabos, conectores, interruptores, tomadas, quadros e disjuntores, com fornecedor e custo.
2. **Padrões construtivos de elétrica:** como a Imagine instala LED em letra caixa, sanca, testeira, nicho, prateleira e painel; regras de emenda, alimentação e passagem de cabos. Mesmo modelo da biblioteca da marcenaria, com validação do responsável de elétrica: Rio Grande do Sul = Alexandre · São Paulo = equipe terceirizada (nome do responsável a definir). Enquanto não houver responsável em SP, o Alexandre valida os padrões das duas unidades, que são os mesmos.
3. **Cálculo na ficha técnica:** para cada item com iluminação (comunicação visual ou marcenaria), a IA calcula pelo desenho:
   - **Neon flex ou LED de contorno:** pelo perímetro da peça.
   - **Fita LED em face ou sanca:** pelo número de linhas e espaçamento sobre a área, ou pelo comprimento da sanca.
   - **Módulos:** pela área e pela densidade recomendada.
   - Arredonda pelo tamanho mínimo de corte e soma a margem de perda.
   - **Fonte:** dimensionada pela potência total com folga de segurança configurável.
   - **Cabeamento:** comprimento até o ponto de energia.
4. **Por projeto:** soma de metros de fita e neon, fontes e cabos vira a lista de compra da elétrica e a carga elétrica total do estande, que alimenta a planta elétrica, a RRT e o credenciamento.
5. **Aprendizado:** consumo real registrado pela elétrica e comparado com o previsto.

## 35 · Padrões construtivos ensinados por vídeo (01/11)

Responsável pela ação de vídeos: **Marília**.

1. **Gravação:** o profissional do setor grava a produção de cada item, em vídeos curtos por etapa, narrando o que faz (materiais, medidas, encaixes, travamento, fixação) e mostrando a trena na câmera. Ângulo fixo para a visão geral e aproximação nos detalhes.
2. **Envio:** os vídeos são enviados pelo app, ligados ao tipo de item (parede, testeira, sanca, moldura de LED, letra caixa etc.).
3. **Processamento pela IA:** transcreve a narração, separa as imagens de cada etapa e gera um rascunho do padrão construtivo: passo a passo, materiais, medidas citadas e foto de cada etapa.
4. **Validação:** o rascunho vai para os validadores do setor (marcenaria: Marco, Wagner, Leonardo, Henrique, Rômulo · elétrica: Alexandre). Só depois do ok entra na biblioteca de padrões e passa a ser usado pela IA nas fichas técnicas.
5. **Treinamento:** os vídeos ficam guardados como material de treinamento para novos colaboradores.

Observação: o processamento é feito a partir de vídeos gravados, não em tempo real; medidas exatas dependem da narração e da trena aparecendo no vídeo.

**Regra para a geração das fichas técnicas:** ao gerar cada ficha, a IA consulta obrigatoriamente a biblioteca de padrões construtivos (incluindo os padrões captados pelos vídeos) e detalha o item conforme esse histórico validado. A ficha indica qual padrão foi usado (código e versão). Se não existir padrão para aquele tipo de item, a IA sinaliza na ficha e avisa o validador do setor e a Marília, para que o item entre na lista de gravação. A lista de gravação é viva, fica no sistema sob gestão da Marília e cresce sempre que surge uma necessidade: item novo sem padrão, padrão com erro apontado pelo validador, peça reprovada ou retrabalho que indique falha no padrão, ou material e técnica novos. Guia de gravação: PLANDEM\_PRD-VID-001.

## 36 · Setor de Impressão 3D (3D Farm) (01/11)

Novo setor produtivo, com o mesmo fluxo dos demais: código único, ficha técnica, foto, ok e checklist até a expedição e a montagem.

1. **Integração com o software da impressora:** o ERP se conecta ao software de fatiamento ou ao gerenciador da farm (por integração direta, quando o software permitir, ou pela leitura dos arquivos exportados) e importa de cada peça: arquivo 3D, impressora, material e cor, peso ou metragem de filamento, tempo de impressão, número de placas e configurações.
2. **Ficha técnica 3D:** com esses dados, a IA gera a ficha da peça com o mesmo código do projeto: material, quantidade, tempo, custo de material e máquina, acabamento posterior (lixa, primer, pintura, montagem de partes) e sequência de setores.
3. **Planejamento:** o tempo de impressão de cada peça entra no cronograma de produção, com a fila de cada impressora, para o Planejamento ver capacidade e prazos.
4. **Checklist até a montagem:** a peça segue o roadmap da produção com QR code, foto e ok em cada etapa (impressão → acabamento → expedição → montagem).
5. **Custos e compras:** o consumo de filamento por projeto alimenta a planilha de custos e a lista de compra de material.

**Responsável:** Pedro. **Equipamento:** impressoras Bambu Lab (software Bambu Studio).

**Forma de integração (pesquisa de 01/11):**

1. **Leitura do arquivo fatiado (caminho mais simples):** o arquivo .gcode.3mf exportado pelo Bambu Studio já traz, por placa, o tempo estimado, o filamento usado em metros e gramas, o tipo e a cor do material e o modelo da impressora. O ERP lê esse arquivo quando o Pedro sobe a peça e preenche a ficha técnica automaticamente.
2. **Gerenciador da farm com API:** para acompanhar fila e status em tempo real, avaliar ferramentas que conectam as Bambu e oferecem API, como o SimplyPrint (API liberada em planos pagos) ou soluções locais como o Bambuddy. A Bambu também oferece o Bambu Farm Manager e um servidor local para integração de terceiros.
3. **Cuidado:** o controle direto das impressoras Bambu por software de terceiros tem limitações impostas pelo fabricante; a integração de leitura de dados é a mais segura para começar.

Pendência: validar com o Pedro a ferramenta de gestão da farm e o modelo das impressoras.

## 37 · Setor de Decoração (01/11)

Novo setor produtivo para itens artesanais e decorativos, principalmente em projetos de Natal e cenografia temática.

**Responsável:** André (decorador), que dá o ok nos itens produzidos e montados, sob coordenação do setor de Produção da unidade.

1. **Demanda automática:** quando o projeto tem itens de decoração (ex.: projeto de Natal), o sistema abre a demanda do setor de Decoração, com o mesmo código único e prazos do cronograma reverso.
2. **Ficha técnica de decoração:** para cada item (bolas de Natal produzidas, festões, galhos, guirlandas, objetos decorativos, peças de tecido, árvores montadas): medidas, materiais, cores e acabamentos, quantidade, foto de referência, processo artesanal e quem executa (costureira, decorador, montagem de objetos nas árvores).
3. **Materiais e compras:** a IA calcula os materiais por item (tecidos, fitas, enchimento, galhos, adornos, colas, fixações) e soma por projeto para a base de compras.
4. **Mão de obra:** costureiras e decoradores, próprios ou terceirizados, entram na escala e no pagamento como os demais terceirizados.
5. **Checklist até a montagem:** cada item segue com QR code, foto e ok em cada etapa (produção → montagem decorativa → embalagem → expedição → montagem no local), com atenção especial à embalagem de itens frágeis.
6. **Biblioteca:** os itens de decoração entram na biblioteca de itens e no banco de referências, e os padrões de produção podem ser ensinados por vídeo (lista de gravação da Marília).

## 38 · Setor de Criação Gráfica (01/11)

**Responsável:** Beto. Atende as solicitações da Carol (comunicação visual), com o mesmo fluxo dos demais setores.

1. **Demandas:** a Carol abre a solicitação no ERP ligada ao item e ao código (com a letra da arte). Tipos: preparar arquivo para impressão, criar faca de corte em vetor (letras, logos), corrigir arquivo do cliente que veio com erro, preparar materiais gráficos.
2. **Gatilho automático:** quando a IA reprova um arquivo do cliente na conferência (CVI-E2) por erro corrigível internamente, o sistema sugere abrir a demanda ao Beto em vez de devolver ao cliente, para agilizar.
3. **Prazo e fila:** cada demanda tem prazo pelo cronograma; o Beto vê a sua fila na tela inicial.
4. **Entrega e ok:** o Beto sobe o arquivo final (vetor, faca, arquivo de impressão) na ficha do item e dá o ok; a Carol confere e libera para a etapa seguinte de comunicação visual.
5. **Histórico:** versões dos arquivos e correções ficam registradas; correções frequentes do mesmo tipo geram orientação para o cliente no Portal.

## 39 · Setor de Tecnologia e Experiências Interativas (01/11)

**Responsável:** Bruno. Setor complementar, com demandas paralelas, no mesmo fluxo de planejamento dos demais. Integra a Divisão de Inovação e Tecnologia.

Exemplos (projeto de Natal): totem com automação de WhatsApp por IA para mandar recado ao Papai Noel; totem que grava vídeo com o desejo de Natal, marca o Instagram da pessoa e publica ou envia pelo WhatsApp.

1. **Demanda:** quando o projeto prevê uma experiência interativa, o sistema abre a demanda ao Bruno, com prazo pelo cronograma reverso.
2. **Ficha técnica da solução:** objetivo da experiência, roteiro do usuário, telas, integrações (WhatsApp, Instagram, IA), equipamentos (totem, tela, câmera, internet), fornecedores e custos.
3. **Etapas com ok:** pesquisa e proposta → aprovação interna e do cliente → desenvolvimento → teste interno → teste no local → operação no evento → relatório de uso. Cada etapa com ok do Bruno no sistema.
4. **Integração com os outros setores:** totens e estruturas ficam com a marcenaria e a elétrica; telas e equipamentos com o Audiovisual (Christian); internet e energia entram no credenciamento.
5. **LGPD e uso de imagem:** experiências que gravam vídeo, coletam dados ou publicam em redes sociais exigem consentimento na tela e regras validadas pela Maitê.
6. **Biblioteca de soluções:** cada aplicação desenvolvida fica registrada para ser reaproveitada e oferecida em novos projetos como adicional.

**Assistente técnico da IA para o Bruno:** ao abrir a demanda, a IA lê o briefing e propõe o caminho técnico: ferramentas e recursos indicados, integrações necessárias, soluções já feitas na biblioteca que podem ser reaproveitadas, estimativa de prazo e custo e riscos (ex.: aprovação do WhatsApp, internet no local). O Bruno avalia, ajusta e decide; a proposta segue o passo a passo PLANDEM\_TEC-001. A IA aprende com as escolhas e resultados de cada projeto.

## 40 · Produção de Evento · gestão completa (01/11)

Novo módulo para projetos em que o cliente contrata a Imagine para a gestão do evento inteiro (ex.: [evento] com o [cliente]), misturando serviços da Imagine e de outras empresas sob gerenciamento da Imagine.

**Tipos de fornecedor no módulo:**

| Tipo | Contrata | Paga | Na Imagine |
| --- | --- | --- | --- |
| Serviço Imagine | Imagine | cliente paga a Imagine | fluxo normal de produção |
| Fornecedor intermediado | Imagine | Imagine (repassado ao cliente) | entra em custos e compras |
| Fornecedor gerenciado | Imagine, em nome do cliente | cliente paga direto | controle de prazo, entrega e qualidade; não entra no caixa |

**Fases do escopo:**

1. **Criação:** conceito, briefing, identidade do evento, experiência do público.
2. **Planejamento:** cronograma mestre (pré-produção, montagem, evento, desmontagem), orçamento geral por rubrica, matriz de responsabilidades, mapa de riscos.
3. **Projetos:** arquitetônico, elétrico, PPCI, estrutural com engenheiro (ART/RRT), layout, acessibilidade, comunicação visual, audiovisual e demais exigidos pelo local e pelos órgãos.
4. **Documentos e licenças:** alvarás, Bombeiros, prefeitura, ECAD, seguros, laudos, manuais do evento para fornecedores.
5. **Contratação:** cotação, escolha e contrato de cada fornecedor, com escopo, prazos, documentos exigidos e forma de pagamento (pela Imagine ou direto pelo cliente). Aprovação do cliente quando ele paga direto.
6. **Controle:** cronograma integrado com tarefas da Imagine e dos fornecedores; checklist de entregas de cada um; acompanhamento de pagamentos feitos pelo cliente; reuniões e atas no sistema.
7. **Operação:** roteiro minuto a minuto, credenciamento de equipes, comunicação no dia, plantão, ocorrências registradas no app com foto.
8. **Encerramento:** desmontagem, devoluções, pesquisa de satisfação, relatório final ao cliente e avaliação de cada fornecedor.

**Portal do cliente:** cronograma mestre, documentos, aprovações, status de cada fornecedor e pagamentos que dependem dele.

**Remuneração da Imagine:** taxa de gestão (valor fixo ou percentual sobre o orçamento gerenciado) além dos serviços próprios; definida em contrato.

Pendências: responsável pelo módulo e modelo da taxa de gestão.

## 41 · Categorias de serviço na entrada da demanda (01/11)

No formulário de entrada, o vendedor seleciona a categoria do serviço. Pode marcar mais de uma; uma delas é a principal.

| Categoria | O que o sistema abre |
| --- | --- |
| Estande | fluxo padrão: projeto, custos, produção, expedição, montagem |
| Cenografia (inclui decoração temática e Natal) | fluxo padrão + setor de Decoração quando houver |
| Audiovisual, som e luz | demanda do Christian, locações de AV, planilha de AV |
| Tecnologia e experiências interativas | demanda do Bruno, passo a passo PLANDEM\_TEC-001 |
| Estúdio 3D Farm | demanda do Pedro |
| Produção de evento (gestão completa) | módulo de Produção de Evento: cronograma mestre, projetos complementares (elétrico, PPCI, estrutural), documentos e licenças, fornecedores gerenciados e taxa de gestão |

**Regras:**

- A categoria define o formulário de briefing, as etapas, os setores acionados, o modelo de cronograma, a forma de cálculo de custos e o tipo de contrato.
- Quando a categoria principal é **Produção de evento**, o projeto vira um projeto-mãe: as demais categorias (estande, cenografia, AV, tecnologia) viram subprojetos dentro dele, com seus fluxos normais, e todos entram no cronograma mestre do evento.
- Relatórios, metas e indicadores podem ser filtrados por categoria.

**Briefing específico por categoria (01/11):** os blocos comuns do formulário de entrada (cliente, origem, verba e prazos) valem para todas; cada categoria acrescenta o seu bloco próprio.

| Categoria | Perguntas específicas |
| --- | --- |
| Estande | feira e manual, m² e tipo de estande, histórico da última feira, ambientes, produtos expostos |
| Cenografia e decoração | local (shopping, loja, evento), área e altura, tema e conceito, período de exposição, circulação do público, itens artesanais, normas do local |
| Audiovisual, som e luz | tipo de evento, público, palco ou estande, telas e painéis de LED, som, luz, conteúdos, operação técnica, energia disponível |
| Tecnologia | objetivo da experiência, usuário, dados coletados, integrações (WhatsApp, Instagram, IA), internet no local, duração |
| Estúdio 3D Farm | peças, quantidades, tamanho, material e cor, arquivos da marca, uso (estande, PDV, brinde) |
| Produção de evento | formato e público, local e datas (montagem, evento, desmontagem), serviços da Imagine e de terceiros, fornecedores já definidos pelo cliente, quem paga o quê, licenças e projetos exigidos, orçamento geral |

Modelos detalhados a desenvolver.

**Categorias acrescentadas (01/11):**

- **Serviço de arquitetura (projeto arquitetônico):** categoria própria, com briefing específico (programa de necessidades, levantamento do local, normas e aprovações, estilo, etapas do projeto: estudo preliminar, anteprojeto, executivo, detalhamento, compatibilização). Pode ser vendido isolado ou como parte de outra categoria.
- **Gestão de obra:** categoria própria, com briefing e planejamento específicos (ex.: obra de showroom de incorporadora). Funciona como **projeto-mãe**, igual à Produção de evento: reúne serviços da Imagine e fornecedores de obra (alvenaria, hidráulica, elétrica predial, ar-condicionado, gesso, pisos, vidros, pintura), com os três tipos de fornecedor (serviço Imagine, intermediado e gerenciado com pagamento direto pelo cliente), cronograma físico-financeiro, medições, diário de obra no app com fotos, documentos (ART/RRT, alvarás, regras do condomínio) e taxa de gestão.

* **Trade marketing · design de PDV e expositores:** categoria própria, com briefing específico (produto, rede e pontos de venda, quantidade de lojas, tipo de peça: expositor de chão, balcão, gôndola, ilha, display, wobbler, vitrine; regras das redes; vida útil; montagem e logística de distribuição). Fluxo: design → protótipo → aprovação → produção em série → distribuição e instalação nos pontos, com fotos por loja. Integra marcenaria, serralheria, comunicação visual, elétrica e 3D Farm.
