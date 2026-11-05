---
id: ERP-SUBSTITUIDOS
titulo: Substituídos: não usar
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Substituídos: não usar

Estes 13 itens ficaram para trás por inteiro. Se um documento de origem disser o que está aqui, vale a decisão indicada. Quais itens contrariam uma decisão é leitura do Claude, marcada a pedido de Diego.

Outros 51 itens têm a etiqueta `substituido-parcial`: parte deles continua valendo, então ficam nos módulos e nas listas, com **Continua valendo** e **Mudou**.

- `UNI-00107` `REG-APROV` `CMP` `substituido` `conf:media` Faixa A até R$ 2.000 e dentro do orçado: comprador; B até R$ 10.000 ou até 5% acima do orçado: Financeiro; C acima disso ou sem linha no ORC: Diretoria. Valores são exemplo a validar. _[DOC-032 · §05 Faixas de aprovação · ITM-00785]_
  - **Decisão (Ver decisão do item 5):** Vale o alerta de preço do ERP-001. **Em aberto:** Quem aprova depois do alerta. Registro: `REGISTROS/decisao__20261104-1043-preco-compras-qfwx.md`
- `UNI-00383` `FLX-MICRO` `FIN` `substituido` Financeiro (Maitê e Diego) lança logística e operação no Portal e forma o preço de venda. _[DOC-009 · CUS-E6 · ITM-00212]_
  - **Decisão (Ver decisão do item 19):** A IA propõe logística e operação pelo histórico, a Maitê valida ou pede alteração, e a IA gera o preço de venda. Registro: `REGISTROS/decisao__20261104-1220-logistica-operacao-custos-67k8.md`
  - Requisitos separados deste item: `UNI-00383.01`
- `UNI-00391` `FLX-MICRO` `CMP` `substituido` `conf:media` Comanda de materiais: cada setor lista o que usará no projeto detalhado e o Planejamento reúne. _[DOC-010 · FIN-E3 · ITM-00241]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`
- `UNI-00395` `FLX-MICRO` `FIN` `substituido` Financeiro faz o repasse aos arquitetos conforme o modelo de remuneração de cada um. _[DOC-010 · FIN-E13 · ITM-00254]_
  - **Decisão (Ver decisão do item 20):** Todos os projetistas são pagos por hora: a Érika estima e atualiza as horas, o sistema calcula, e a Maitê valida e paga. Registro: `REGISTROS/decisao__20261104-1220-pagamento-projetistas-7mwf.md`
  - Requisitos separados deste item: `UNI-00395.01`
- `UNI-00431` `FLX-MICRO` `PRD` `substituido` Setores produtivos, PRD-E3: o líder avalia e solicita os materiais por ficha técnica e por código de item. _[DOC-014 · PRD-E3 · ITM-00396]_
  - **Decisão (Ver decisão do item 21):** Os setores só conferem e ajustam a pré-comanda automática, que substitui a listagem manual. Registro: `REGISTROS/decisao__20261104-1220-comanda-materiais-zhk6.md`
- `UNI-01151` `REG-PRECO` `COM` `desatualizado` Sobre a margem nas alterações de proposta (G1), o ERP-001 já define desconto com margem mínima de 25%; parcelamento e prazo seguem em aberto. _[DOC-090 · §4 linha Margem nas alterações · ITM-01574]_
- `UNI-01152` `REG-PRECO` `CUS` `desatualizado` A regra do preço sugerido já tem resposta no ERP-001: margem de 35%; a planilha base ainda é citada como pendente. _[DOC-090 · §4 linha Regra do preço sugerido · ITM-01575]_
  - Requisitos separados deste item: `UNI-01152.01`, `UNI-01152.02`
- `UNI-01153` `ESC-PERFIL` `CRD` `desatualizado` `conf:media` O responsável pelo Credenciamento, pergunta aberta no SET08, já tem resposta no ERP-001: Alexandra (o cadastro traz "Alessandra"; confirmar se é a mesma pessoa). _[DOC-090 · §4 linha Responsável pelo Credenciamento · ITM-01576]_
  - Requisitos separados deste item: `UNI-01153.01`
- `UNI-01154` `ESC-PERFIL` `EXP` `desatualizado` O responsável pela Expedição, pergunta aberta no SET12, já tem resposta no ERP-001: Suellen no RS e assistente a contratar em SP. _[DOC-090 · §4 linha Responsável pela Expedição · ITM-01577]_
  - Requisitos separados deste item: `UNI-01154.01`
- `UNI-01155` `ESC-PERFIL` `LOG` `desatualizado` A pergunta sobre o responsável pela Logística, aberta no SET12, já tem resposta no ERP-001: Eduardo no RS e Samanta em SP. _[DOC-090 · §4 linha Responsável pela Logística · ITM-01578]_
- `UNI-01156` `ESC-PERFIL` `COM` `desatualizado` O assistente comercial, pergunta aberta no SET06, já tem resposta no ERP-001: Anderson. _[DOC-090 · §4 linha Quem é o assistente comercial · ITM-01579]_
- `UNI-01526` `FLX-MICRO` `COM` `substituido` Assistente comercial, etapa ACM-E4: o vendedor envia a proposta ao cliente, com o assistente em cópia. _[DOC-091 · §5 06 Assistente comercial, ACM-E4 · ITM-01859]_
  - **Decisão (Contraria a decisão do item 7):** O assistente envia, só com autorização do vendedor que fez a proposta. Validade de 7 dias. Registro: `REGISTROS/decisao__20261104-1043-envio-proposta-lm49.md`
- `UNI-01572` `REG-APROV` `CUS` `substituido` O Diego aprova o preço final de venda. _[DOC-091 · §5 04 Custos, CUS-E6 · ITM-01712]_
  - **Decisão (Contraria a decisão do item 1):** Carol aprova a planilha de custos. O preço de venda só Maitê e Diego aprovam. Registro: `REGISTROS/decisao__20261104-1043-aprovacao-custos-preco-v9qz.md`
