---
id: ERP-MOD-INC
titulo: Módulo Incentivo e desempenho
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# INC · Incentivo e desempenho

41 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Decisões de Diego

- **item-23** (Medição de desempenho): Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`

## Fluxo macro (2)

- `UNI-00315` `FLX-MACRO` `proposto` Programa de incentivo tem 5 fases: medição (INC-E1 e E2), apuração (E3 a E5), validação (E6), pagamento (E7) e revisão semestral (E8), com medição pelo Portal e nota do cliente no pós-feira. _[DOC-023 · §01 Fluxo macro · ITM-00607]_
  - Requisitos separados deste item: `UNI-00315.01`
- `UNI-00316` `FLX-MACRO` `proposto` `conf:media` Implantação sugerida: 3 meses só medindo, depois piloto de um trimestre e então o programa completo, revisto a cada semestre. _[DOC-023 · §06 Implantação sugerida · ITM-00625]_

## Etapas do fluxo (9)

- `UNI-00488` `FLX-MICRO` `proposto` INC-E1: o Portal registra os movimentos de cada usuário (notificação, resposta, devolução, retrabalho, prazo cumprido ou perdido). _[DOC-023 · §02 INC-E1 · ITM-00608]_
- `UNI-00489` `FLX-MICRO` `proposto` INC-E2: painel individual e de equipe atualizado todo dia, em que cada pessoa vê os próprios números e os do setor. _[DOC-023 · §02 INC-E2 · ITM-00609]_
- `UNI-00490` `FLX-MICRO` `proposto` INC-E3: no fim do período o Portal calcula o placar de cada setor e pessoa em prazo, qualidade e eficiência, por feira ou por trimestre. _[DOC-023 · §02 INC-E3 · ITM-00610]_
- `UNI-00491` `FLX-MICRO` `proposto` INC-E5: líderes analisam contestações; atraso causado por outro setor não conta contra quem recebeu a tarefa atrasada. _[DOC-023 · §02 INC-E5 · ITM-00612]_
- `UNI-00492` `FLX-MICRO` `proposto` INC-E6: Maitê e Diego validam valores e enquadramento legal (prêmio, PLR ou bônus em contrato) conforme o vínculo de cada pessoa. _[DOC-023 · §02 INC-E6 · ITM-00613]_
- `UNI-00493` `FLX-MICRO` `proposto` INC-E7: pagamento e reconhecimento com prêmio por feira ou trimestre, PLR semestral e destaque da feira no Portal. _[DOC-023 · §02 INC-E7 · ITM-00614]_
  - Requisitos separados deste item: `UNI-00493.01`
- `UNI-00493.01` `FLX-MICRO` `proposto` Pagamento do programa de incentivo: prêmio, PLR ou bônus, formalizado em contrato. _[DOC-091 · §5 Programa de incentivo, INC-E7 · ITM-02023 · parte de UNI-00493]_
- `UNI-00494` `FLX-MICRO` `proposto` INC-E8: revisão semestral de metas e pesos com dados do Portal e do pós-feira. _[DOC-023 · §02 INC-E8 · ITM-00615]_
- `UNI-01582` `FLX-MICRO` `proposto` `conf:media` Com o estudo trimestral a diretoria monta um plano de ação com metas de redução de custos e aumento de performance das equipes, acompanhado nos fechamentos e ligado ao Programa de Incentivo (PRG-001). _[DOC-091 · §5 Estudo orçamentário trimestral · ITM-01833]_

## Pontos de decisão (1)

- `UNI-00576` `FLX-DECISAO` `proposto` INC-E4: se o gatilho financeiro for atingido o fluxo segue; se não, período sem bônus, só com reconhecimento não financeiro e plano de melhoria. _[DOC-023 · §02 INC-E4 · ITM-00611]_

## Módulos e telas (1)

- `UNI-00315.01` `ESC-MODULO` `proposto` Módulo Incentivo (PRG): medição dos movimentos, placar, gatilho e pagamento. _[DOC-091 · §3 Módulos do ERP, Incentivo · ITM-01616 · parte de UNI-00315]_

## Dashboards e indicadores (2)

- `UNI-00631` `ESC-INDIC` `proposto` Indicadores medidos pelo Portal: tempo de resposta, cumprimento da data de corte, primeira vez certa, retrabalho, informação incompleta, checklist com foto e ok, chamados do plantão e nota do cliente por etapa. _[DOC-023 · §04 Medição pelo Portal · ITM-00619]_
  - Requisitos separados deste item: `UNI-00631.01`
- `UNI-00631.01` `ESC-INDIC` `proposto` Dashboard de Incentivo: tempo de resposta, data de corte cumprida, primeira vez certa, retrabalho e informação incompleta. _[DOC-091 · §10 Dashboards e indicadores, Incentivo (INC-E2) · ITM-02144 · parte de UNI-00631]_

## Legal e fiscal (5)

- `UNI-00187` `REG-LEGAL` `proposto` Para CLT, prêmio por desempenho (art. 457) é política interna da empresa, paga por feira ou trimestre, fora da base previdenciária conforme a Solução de Consulta COSIT 10/2026. _[DOC-023 · §05 Forma legal de pagamento · ITM-00620]_
- `UNI-00188` `REG-LEGAL` `proposto` PLR (Lei 10.101/2000) exige negociação com comissão de empregados e sindicato, regras prévias, não pode ser só individual e é paga no máximo 2 vezes por ano com 3 meses de intervalo. _[DOC-023 · §05 Forma legal de pagamento · ITM-00621]_
- `UNI-00189` `REG-LEGAL` `proposto` Para prestadores (PJ ou autônomos) como montadores e plantonistas, o bônus entra por cláusula de desempenho no contrato, por feira. _[DOC-023 · §05 Forma legal de pagamento · ITM-00622]_
- `UNI-00958.01` `REG-LEGAL` `pendente` `conf:media` Regras de fidelidade e indicação e o desenho legal do incentivo dependem de validação financeira, jurídica e contábil. _[DOC-091 · §11 Pendências a validar antes do desenvolvimento · ITM-02155 · parte de UNI-00958]_
- `UNI-01123` `REG-LEGAL` `proposto` Forma de pagamento errada pode transformar o bônus em salário, com encargos; prêmio negociado com empregados deixa de ser prêmio (COSIT 10/2026), por isso o negociado vai pela PLR. _[DOC-023 · §05 Atenção · ITM-00623]_

## Cálculos e critérios (9)

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

## Regras operacionais (3)

- `UNI-00216` `REG-OPER` `proposto` Regras do programa: transparência prévia de regras e pesos, justiça entre setores pela origem do atraso, 3 meses de teste só medindo, teto por pessoa e período definido pela diretoria, aviso por escrito (LGPD) e reconhecimento não financeiro. _[DOC-023 · §06 Regras do programa · ITM-00624]_
  - Requisitos separados deste item: `UNI-00216.01`, `UNI-00216.02`
- `UNI-00216.01` `REG-OPER` `a-conferir` `conf:media` Justiça: cada setor é medido contra a própria meta e histórico, e atraso causado por outro setor não conta contra quem recebeu a tarefa. _[DOC-091 · §5 Custos (bloco após Frota), Índice de Desempenho do Setor, Justiça · ITM-01853 · parte de UNI-00216]_
  - **Decisão (Ver decisão do item 23):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`
- `UNI-00216.02` `REG-OPER` `a-conferir` `conf:media` Premiação: ranking mensal visível no painel e prêmio trimestral ligado ao Programa de Incentivo (PRG-001); os 3 primeiros meses são só de medição, para calibrar as metas. _[DOC-091 · §5 Custos (bloco após Frota), Índice de Desempenho do Setor, Premiação · ITM-01854 · parte de UNI-00216]_
  - **Decisão (Ver decisão do item 23):** Por enquanto, valem o placar do incentivo e o Índice de Desempenho do Setor, com usos diferentes. O assunto não é prioridade. **Em aberto:** Qual é o uso de cada um. Registro: `REGISTROS/decisao__20261104-1220-medicao-desempenho-h60v.md`

## Pendências (7)

- `UNI-00952` `PEND` `pendente` Falta definir quem administra o programa de incentivo: Marketing (endomarketing), RH ou Maitê; não informado. _[DOC-023 · §08 Validar antes de implantar, item 1 · ITM-00626]_
- `UNI-00953` `PEND` `pendente` Falta definir o tamanho do bônus; a sugestão é uma fatia do lucro acima da meta (exemplo 10% do excedente), com teto por pessoa. _[DOC-023 · §08 Validar antes de implantar, item 2 · ITM-00627]_
- `UNI-00954` `PEND` `pendente` Falta saber quantas pessoas são CLT e quantas são prestadoras, o que define a forma de pagamento de cada uma. _[DOC-023 · §08 Validar antes de implantar, item 3 · ITM-00628]_
- `UNI-00955` `PEND` `pendente` Verificar se a convenção coletiva do sindicato da categoria já prevê PLR antes de montar a comissão. _[DOC-023 · §08 Validar antes de implantar, item 4 · ITM-00629]_
- `UNI-00956` `PEND` `pendente` Confirmar se os pesos sugeridos (prazo 40%, qualidade 35%, eficiência 25%; setor 50%, feira 30%, individual 20%) estão bons. _[DOC-023 · §08 Validar antes de implantar, item 5 · ITM-00630]_
- `UNI-00957` `PEND` `pendente` Definir o período de apuração (feira, trimestre ou ambos); a sugestão é prêmio por trimestre e PLR por semestre. _[DOC-023 · §08 Validar antes de implantar, item 6 · ITM-00631]_
- `UNI-00958` `PEND` `pendente` Falta validação jurídica e contábil da forma legal de cada pagamento pela Maitê e pela contabilidade. _[DOC-023 · §08 Validar antes de implantar, item 7 · ITM-00632]_
  - Requisitos separados deste item: `UNI-00958.01`

## Ideias sem compromisso (2)

- `UNI-00857` `IDEIA` `proposto` As métricas por etapa e por setor da pesquisa também podem alimentar o programa de incentivo (PLANDEM_PRG-001). _[DOC-017 · §05 Plano de ação · ITM-00528]_
- `UNI-00860` `IDEIA` `proposto` `conf:media` Modelo sugerido combina placar de três pilares (Balanced Scorecard), divisão do ganho (Gainsharing), PLR pela Lei 10.101/2000 e nota do cliente (NPS) como medida de qualidade. _[DOC-023 · §03 Modelo sugerido · ITM-00618]_

