---
id: ERP-MOD-AUD
titulo: Módulo Audiovisual
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# AUD · Audiovisual

25 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (1)

- `UNI-01615` `FLX-MACRO` `vigente` Credenciamento e logística do audiovisual seguem o fluxo dos outros setores, mas as demandas são originadas pelo próprio Audiovisual. _[DOC-091 · §5 09 Audiovisual; §Respostas · ITM-01955]_

## Etapas do fluxo (10)

- `UNI-00437` `FLX-MICRO` `vigente` Audiovisual, AUD-E1 e E2: analisa o projeto (telas, som, luz e imagem) e alinha com o cliente o objetivo de uso e o modo de operar dos equipamentos. _[DOC-014 · AUD-E1 e AUD-E2 · ITM-00410]_
  - Requisitos separados deste item: `UNI-00437.01`
- `UNI-00437.01` `FLX-MICRO` `proposto` Audiovisual, etapa AUD-E1: análise do projeto pelo Christian, depois da abertura automática da demanda (AUD-E0). _[DOC-091 · §5 Setores produtivos, AUD-E1 · ITM-01937 · parte de UNI-00437]_
- `UNI-00438` `FLX-MICRO` `vigente` Audiovisual, AUD-E3: pré-ajusta o rider técnico de equipamentos, que é o pedido de material do setor (PRD-E3). _[DOC-014 · AUD-E3 · ITM-00411]_
- `UNI-00439` `FLX-MICRO` `vigente` Audiovisual, AUD-E4: conferência de medidas com a equipe de montagem por checklist com foto de cada item, compatível com os outros setores do stand. _[DOC-014 · AUD-E4 · ITM-00412]_
- `UNI-00440` `FLX-MICRO` `vigente` Audiovisual, AUD-E6 e E7: envia ao cliente as fichas técnicas dos equipamentos (resolução, proporção, formato) e o cliente produz e publica os conteúdos na aba do cliente. _[DOC-014 · AUD-E6 e AUD-E7 · ITM-00414]_
- `UNI-00441` `FLX-MICRO` `vigente` Audiovisual, AUD-E8: testa os conteúdos do cliente quanto a qualidade e resolução nos equipamentos. _[DOC-014 · AUD-E8 · ITM-00415]_
- `UNI-00442` `FLX-MICRO` `vigente` Audiovisual, AUD-E10: organiza e programa os arquivos nos equipamentos, que entram como itens do checklist de montagem e entrega (MON-E5 e MON-E8). _[DOC-014 · AUD-E10 · ITM-00417]_
- `UNI-01532` `FLX-MICRO` `proposto` Audiovisual, etapa AUD-E0: a demanda é aberta automaticamente quando o Planejamento identifica equipamento de AV (PLA-E6), e o sistema notifica o Christian. _[DOC-091 · §5 09 Audiovisual, AUD-E0 · ITM-01951]_
- `UNI-01533` `FLX-MICRO` `vigente` Audiovisual, etapa AUD-E11: planejamento financeiro, que define estoque ou sublocação e planeja frete dos equipamentos com Eduardo (RS) ou Samanta (SP). _[DOC-091 · §5 09 Audiovisual, AUD-E11; §Respostas · ITM-01952]_
- `UNI-01534` `FLX-MICRO` `vigente` Audiovisual, etapa AUD-E12: o Christian valida a planilha de custos do AV com o Financeiro. _[DOC-091 · §5 09 Audiovisual, AUD-E12; §Respostas · ITM-01954]_

## Pontos de decisão (2)

- `UNI-00569` `FLX-DECISAO` `vigente` Audiovisual, AUD-E5: se as medidas são compatíveis segue; se não, Audiovisual, setor envolvido e Planejamento corrigem a ficha ou o rider e fazem nova conferência. _[DOC-014 · AUD-E5 · ITM-00413]_
- `UNI-00570` `FLX-DECISAO` `vigente` Audiovisual, AUD-E9: se o conteúdo está apto segue; se não, o Portal avisa o cliente com os problemas apontados e abre nova conferência. _[DOC-014 · AUD-E9 · ITM-00416]_

## Perfis e responsáveis (2)

- `UNI-00747.01` `ESC-PERFIL` `vigente` Audiovisual técnico e operação: o responsável é o Christian, que planeja os projetos do Rio Grande do Sul e de São Paulo; a montagem de AV é sempre de equipe terceirizada. _[DOC-091 · Respostas do Diego, Audiovisual técnico e operação · ITM-01956 · parte de UNI-00747]_
  - **Decisão (Ver decisão do item 18):** Seguem os responsáveis definidos. Diego define Marketing depois. **Em aberto:** Responsável pelo Pós-feira. Registro: `REGISTROS/decisao__20261104-1043-responsaveis-fluxo-frpn.md`
- `UNI-01412` `ESC-PERFIL` `vigente` `rotina-anterior` Walter [PES-00014]: produtor técnico audiovisual (EQP-014). _[DOC-033 · §5.6.2 EQP-014 · ITM-01040]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

## Documentos gerados (2)

- `UNI-00669` `ESC-DOC` `vigente` Rider técnico do Audiovisual: equipamento, quantidade e especificação, uso combinado com o cliente, conteúdo com status do teste e montagem (onde fica e quem programa e testa). _[DOC-014 · §05 Rider técnico · ITM-00425]_
  - Requisitos separados deste item: `UNI-00669.01`
- `UNI-00669.01` `ESC-DOC` `proposto` Rider técnico: equipamento, especificação, uso, conteúdo e posição na montagem. _[DOC-091 · §4 Entidades e dados principais, Rider técnico; §5 Setores produtivos, AUD-E3 · ITM-01636 · parte de UNI-00669]_

## Entidades e campos (3)

- `UNI-00670` `ESC-DADOS` `vigente` Conferência de medidas do Audiovisual com a montagem, com foto: telas e nichos, suportes e fixações, elétrica e cabos, som e luz, acesso e ventilação. _[DOC-014 · §05 Conferência de medidas · ITM-00426]_
- `UNI-00682` `ESC-DADOS` `vigente` Briefing de Audiovisual, som e luz: evento, vídeo (LED, telas, projeção), som, luz e infraestrutura. _[DOC-019 · Parte B, 3 Audiovisual, som e luz · ITM-00571]_
  - Requisitos separados deste item: `UNI-00682.01`
- `UNI-00682.01` `ESC-DADOS` `a-conferir` `conf:media` O briefing de Audiovisual pergunta tipo de evento, público, palco ou estande, LED, som, luz, conteúdos, operação e energia; o de Tecnologia pergunta objetivo, usuário, dados coletados, integrações, internet e duração. _[DOC-091 · §41 Categorias de serviço, tabela de perguntas específicas (Audiovisual e Tecnologia) · ITM-02455 · parte de UNI-00682]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`

## Qualidade (1)

- `UNI-01122` `REG-QUAL` `proposto` `conf:media` Audiovisual: sem a conferência de medidas, elas podem não bater na feira, causando atraso ou retrabalho para o Audiovisual e para os outros setores. _[DOC-014 · §05 Conferência de medidas · ITM-00427]_

## Regras operacionais (1)

- `UNI-01634` `REG-OPER` `vigente` Locação de audiovisual tem o mesmo controle completo (cotação, pesquisa de preços com alerta acima de 10%, aprovação da Maitê, conferência com foto); avarias e conferências não registradas alertam o Christian e a Maitê. _[DOC-091 · §18 Locações, divisão · ITM-02234]_

## Pendências (3)

- `UNI-00935` `PEND` `pendente` AUD-E10: no ditado constou que a comunicação visual dá o ok nos vídeos; entendeu-se que é o Audiovisual, a confirmar. _[DOC-014 · §07 item 8 (AUD-E10) · ITM-00435]_
- `UNI-00936` `PEND` `pendente` AUD-E7: não foi informada a data limite para o cliente entregar os conteúdos antes da montagem. _[DOC-014 · §07 item 9 (AUD-E7) · ITM-00436]_
- `UNI-00937` `PEND` `pendente` AUD-E4: confirmar quem da montagem confere as medidas e quando; a sugestão é que seja antes de as fichas dos outros setores entrarem em produção. _[DOC-014 · §07 item 10 (AUD-E4) · ITM-00437]_

