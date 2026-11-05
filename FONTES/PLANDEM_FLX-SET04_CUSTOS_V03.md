# Setor 04 · Custos: planilha, validações e versões

Como o setor de Custos funciona no Portal Imagine: a IA gera a planilha a partir do 3D e do memorial, a Carol confere, Maitê e Diego lançam a logística e formam o preço de venda e o Anderson recebe a pré-proposta. Toda alteração de projeto ou de preço gera uma nova versão, com aviso a cada setor. Os adicionais pedidos pelo cliente durante a produção seguem um circuito paralelo.

**DOC** PLANDEM\_FLX-SET04 · **VERSÃO** V03 · proposta · **DATA** 28/10/2026 · **BASE** FLX-001 \+ ditado 28/10

## 01 · Fluxo macro

A planilha nasce pronta da IA, passa por três validações e volta a rodar sempre que o projeto ou o preço muda. Os adicionais da produção têm circuito próprio.

- **FASE 1** · Planilha pela IA — CUS-E1 – E4 Custos de materiais, logística e preço sugerido  
- **FASE 2** · Validações — CUS-E5 – E7 Carol, depois Maitê e Diego, depois Anderson  
- **FASE 3** · Revisões — CUS-E8 – E11 V2 com novo aviso a cada setor  
- **FASE 4** · Base de custos — CUS-E12 – E13 Planilha mãe e preços de mercado  
- **FASE 5** · Adicionais — CUS-E14 – E19 Pedidos do cliente durante a produção  
- *Proposta comercial*

## 02 · Fluxograma detalhado

Cada passagem entre setores é uma notificação no Portal.

### FASES 1 E 2 · PLANILHA E VALIDAÇÕES

- *Início · notificação de Projetos (PRJ-E14)*

**FASE 1 · PLANILHA GERADA PELA IA**

- **CUS-E1** · IA lê o projeto 3D e o memorial descritivo — projeto ainda sem detalhamento técnico  
- **CUS-E2** · Planilha de custos de materiais — item · material · especificação · unidade · valor unitário e total · preços de mercado  
- **CUS-E3** · Bloco de logística e operação pronto para o Financeiro — mão de obra · frete · combustível · hotel · alimentação · limpeza · taxas · RRT  
- **CUS-E4** · Preço de venda sugerido — calculado pela planilha base da Imagine

**FASE 2 · VALIDAÇÕES**

- **CUS-E5** · Carol confere a planilha — prazo de 3 dias no total, contando o Financeiro  
- ◆ **CUS-E5** · A planilha está correta? → **se sim** segue  
  - **se não** → Carol corrige a planilha — e confere de novo (inferido)  
- **CUS-E6** · Financeiro lança logística e operação e forma o preço — Maitê e Diego, no Portal  
- ◆ **CUS-E6** · Maitê e Diego validam o preço? → **se sim** segue  
  - **se não** → Maitê e Diego ajustam o preço no Portal  
- **CUS-E7** · Preço e pré-proposta comercial enviados ao Anderson — assistente comercial emite a proposta  
- *Fim · proposta comercial ao cliente*

### FASES 3 E 4 · REVISÕES E BASE DE CUSTOS

**FASE 3 · REVISÕES (V2, V3…)**

- Gatilhos: projeto alterado pelo cliente (Setor 03\) · item fora do escopo inicial  
- **CUS-E8** · Portal gera a versão 2 da planilha e notifica a Carol — “houve alteração no projeto X”  
- **CUS-E9** · Carol revisa e valida a V2 — tira e inclui itens, muda quantidades  
- Aprovado 1 dia ou mais depois do orçamento: Portal alerta reajuste de preço  
- **CUS-E10** · Financeiro valida o novo preço — Maitê e Diego recebem o aviso da V2  
- **CUS-E11** · Anderson recebe a V2 — “alteração no preço de venda do projeto X”  
- *Nova proposta comercial*

**FASE 4 · BASE DE CUSTOS (CONTÍNUA)**

- **CUS-E12** · Carol atualiza a planilha mãe de custos — todo mês: novos materiais · especificações · preços de mercado · itens fora do escopo  
- **CUS-E13** · Portal e IA recebem a atualização — a próxima planilha já sai com os valores novos

### FASE 5 · ADICIONAIS DURANTE A PRODUÇÃO

**FASE 5 · ADICIONAIS DURANTE A PRODUÇÃO · ATÉ 2 DIAS POR ETAPA**

- *Início · projeto aprovado, já em produção*  
- **CUS-E14** · Cliente pede o adicional no Portal — ex.: TV, totem adesivado, balcão, paisagismo, parede verde, LED maior, piso mais caro  
- **CUS-E15** · Comercial é notificado e avalia o prazo pelo cronograma — até 2 dias · dá retorno ao cliente  
- **CUS-E16** · Custos gera a planilha adicional — escopo pré-definido pelo Portal · até 2 dias · a planilha do projeto segue finalizada  
- **CUS-E17** · Maitê e Diego validam o preço do adicional  
- **CUS-E18** · Anderson elabora a proposta e devolve ao Comercial  
- ◆ **CUS-E19** · O cliente aprova o adicional? → **se sim** segue  
  - **se não** → Projeto segue como foi aprovado — adicional registrado como recusado  
- Adicional entra no projeto e na produção — o Portal avisa todos os setores

Os adicionais são uma demanda paralela: a planilha do projeto aprovado continua como etapa finalizada, e cada adicional ganha a sua própria planilha e proposta.

## 03 · Composição do setor no Portal

O que precisa existir no Portal para o setor de Custos funcionar.

| Componente | O que é |
| :---- | :---- |
| Usuários | Carol (Custos) · Maitê e Diego (Financeiro, preço de venda) · Anderson (assistente comercial, proposta). Cada um com usuário no Portal e só os itens do seu setor. |
| Planilha mãe de custos | Base de todos os materiais com especificação, unidade e preço, em Excel ou no Portal. A Carol atualiza todo mês (CUS-E12). |
| Base de preços de mercado | Tabela anexada ao Portal com os preços atuais, atualizada todo mês, para a IA cruzar com a planilha de cada projeto. |
| Biblioteca de itens e catálogo de locações | Vêm de Projetos com os mesmos códigos, para o item do 3D e do memorial cair na linha certa da planilha. |
| Planilha de custos do projeto | Uma por projeto, com versões (V01, V02…), aberta automaticamente pelo Portal na pasta de Custos. |
| Área restrita | A área de Custos só é visível para Custos, Financeiro e diretoria (regra do fluxo de 22/10). |

## 04 · Estrutura da planilha de custos

Gerada pela IA em cada projeto (CUS-E2 a CUS-E4), em três blocos: materiais, logística e operação, e o resumo com o preço de venda sugerido.

### Bloco 1 · Materiais

| Coluna | Conteúdo |
| :---- | :---- |
| Item | nome e código (BIB ou LOC), vindo do 3D e do memorial |
| Tipo de material | ex.: MDF, melamina, alumínio, tecido |
| Especificação | marca, modelo, acabamento, espessura |
| Unidade | metro · metro linear · metro quadrado · peça · volume |
| Quantidade | lida do projeto 3D |
| Valor unitário | da planilha mãe, cruzado com o preço de mercado |
| Valor total | quantidade × valor unitário |

### Bloco 2 · Logística e operação (estrutura pronta, valores lançados pelo Financeiro)

mão de obra de produção · mão de obra de montagem · frete · combustível · hotel · alimentação · limpeza · taxas · RRT

### Bloco 3 · Resumo

Custo total de materiais, custo total de logística e operação, custo total do projeto e preço de venda sugerido, calculado pela planilha base da Imagine.

## 05 · Versões e notificações

Cada mudança gera uma nova versão da planilha (V02, V03…) e um aviso para quem vem depois. Ninguém trabalha em cima de número desatualizado.

| Quando | Quem recebe | Mensagem |
| :---- | :---- | :---- |
| Projetos conclui a PRJ-E14 | Carol | Nova planilha de custos do projeto X. Prazo de 3 dias, incluindo o Financeiro. |
| Carol valida (CUS-E5) | Maitê e Diego | Planilha do projeto X validada. Formar o preço de venda. |
| Financeiro valida (CUS-E6) | Anderson | Preço de venda do projeto X liberado, com a pré-proposta pronta. |
| Projeto alterado em Projetos | Carol | Houve alteração no projeto X e foi gerada a V2 dos custos. Validar para enviar ao Financeiro. |
| Carol valida a V2 (CUS-E9) | Maitê e Diego | O projeto X foi atualizado e Custos atualizou a planilha. Validar o preço de venda. |
| Financeiro valida a V2 (CUS-E10) | Anderson | Houve alteração no preço de venda do projeto X. V2 para emissão de proposta. |
| Projeto aprovado 1 dia ou mais depois do orçamento | Maitê e Diego | Os preços do projeto X precisam de reajuste. Atualizar o preço de venda. |
| Cliente pede adicional (CUS-E14) | Comercial e Carol | O cliente do projeto X pediu um adicional. Avaliar o prazo pelo cronograma e gerar a planilha adicional, em até 2 dias cada. |
| Carol gera a planilha adicional (CUS-E16) | Maitê e Diego | Adicional do projeto X orçado. Validar o preço em até 2 dias. |
| Financeiro valida o adicional (CUS-E17) | Anderson | Preço do adicional do projeto X liberado. Elaborar a proposta em até 2 dias e devolver ao Comercial. |
| Anderson conclui a proposta (CUS-E18) | Comercial | Proposta do adicional do projeto X pronta para aprovar com o cliente. |
| Cliente aprova o adicional (CUS-E19) | Todos os setores | Adicional do projeto X aprovado. Atualizar projeto, produção e cronograma. |

Exemplo: o custo foi feito em 1º de janeiro e o projeto só foi aprovado em 1º de março. O Portal alerta o Financeiro, que reajusta o preço, e o Anderson recebe a nova versão para a proposta. A Carol só entra quando o projeto muda.

## 06 · Checklist passo a passo

O que precisa estar feito em cada fase antes de seguir.

### Fase 1 · Planilha pela IA

*Portal*

- [ ] **CUS-E1** Projeto 3D e memorial lidos pela IA.  
- [ ] **CUS-E2** Materiais com especificação, unidade, valor unitário e total.  
- [ ] **CUS-E3** Bloco de logística e operação pronto para o Financeiro lançar.  
- [ ] **CUS-E4** Preço de venda sugerido gerado.

### Fase 2 · Validações

*Carol · Maitê · Diego · Anderson*

- [ ] **CUS-E5** Planilha conferida e validada pela Carol.  
- [ ] **CUS-E6** Logística lançada e preço validado por Maitê e Diego, dentro dos 3 dias.  
- [ ] **CUS-E7** Preço e pré-proposta enviados ao Anderson.

### Fase 3 · Revisões

*Carol · Financeiro · Anderson*

- [ ] **CUS-E8** V2 gerada e Carol notificada, com o motivo da revisão.  
- [ ] **CUS-E9** V2 revisada pela Carol: itens e quantidades conferidos.  
- [ ] **CUS-E10** Novo preço validado pelo Financeiro (também quando o Portal alerta reajuste).  
- [ ] **CUS-E11** Anderson avisado da V2 para emitir a nova proposta.

### Fase 4 · Base de custos

*Carol*

- [ ] **CUS-E12** Planilha mãe atualizada no mês: materiais novos, especificações e preços de mercado.  
- [ ] **CUS-E13** Atualização registrada no Portal para os próximos orçamentos.

### Fase 5 · Adicionais (até 2 dias por etapa)

*Cliente · Comercial · Carol · Financeiro · Anderson*

- [ ] **CUS-E14** Pedido do adicional registrado pelo cliente no Portal.  
- [ ] **CUS-E15** Comercial avaliou o prazo pelo cronograma e respondeu ao cliente.  
- [ ] **CUS-E16** Planilha adicional gerada, separada da planilha do projeto.  
- [ ] **CUS-E17** Preço do adicional validado por Maitê e Diego.  
- [ ] **CUS-E18** Proposta do adicional devolvida ao Comercial.  
- [ ] **CUS-E19** Resposta do cliente registrada; se aprovado, todos os setores avisados.

## 07 · Validar antes de implantar

- Respondido em 28/10: os 3 dias incluem o Financeiro · preço recusado é ajustado pelo próprio Financeiro · a Carol só ajusta a planilha quando o projeto muda · logística e operação continuam lançadas pelo Financeiro · projeto aprovado 1 dia ou mais depois do orçamento gera alerta de reajuste para Maitê e Diego · base de preços atualizada todo mês · adicionais com até 2 dias por etapa · adicional aprovado: o Portal avisa todos os setores.  
- CUS-E4 · Regra do preço de venda sugerido: virá da planilha base que o Diego vai enviar. Pendente.  
- CUS-E5 · Se a planilha gerada pela IA vier com erro, a Carol corrige antes de passar ao Financeiro (inferido).  
- CUS-E12 · De onde vêm os preços de mercado (fornecedores, cotações). Não informado.  
- Códigos: versões ORC-001\_V01, V02… e adicionais ADI-001, ADI-002… (proposta).

---

*Imagine Arquitetura Efêmera · PLANDEM\_FLX-SET04 V03 · proposta a partir do PLANDEM\_FLX-001, do ditado e das respostas de 28/10/2026 · numeração de setores conforme PLANDEM\_SET-001*