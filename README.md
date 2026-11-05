# Imagine: especificação do ERP/CRM

| Quero | Vá para |
|---|---|
| Desenvolver o sistema | `ERP-CRM/00_COMECE-AQUI.md` |
| Ver as decisões de Diego | `ERP-CRM/01_DECISOES-DE-DIEGO.md` |
| Ver os fluxos em ordem | `ERP-CRM/FLUXOS/00_VISAO-GERAL.md` |
| Ver entidades e perfis | `ERP-CRM/07_ENTIDADES.md` e `ERP-CRM/08_PERFIS-E-PERMISSOES.md` |
| Registrar uma dúvida ou o que foi implementado | `ERP-CRM/ANDAMENTO/` |
| Saber o que mudou nesta versão | `ERP-CRM/MUDANCAS-V02.md` |
| Conferir um documento de origem | `FONTES/` |
| Ver o registro de uma decisão | `REGISTROS/` |

Dados de clientes, cases, planilhas, PDFs e dados pessoais ficam de propósito fora deste repositório. Eles são usados depois, em refinamento e treinamento.

## Ferramentas

- `ferramentas/instalar-protecao.ps1`: instala a verificação de dados pessoais antes de cada commit neste computador.
- `ferramentas/verificar-dados-pessoais.ps1`: a verificação em si.
- `ferramentas/gerar-visoes.ps1`: refaz as listas em Markdown a partir de `ERP-CRM/dados/`.
