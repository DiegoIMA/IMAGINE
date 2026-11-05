---
id: ERP-COMECE-AQUI
titulo: Comece aqui
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# Comece aqui

Este repositório é a especificação do **ERP/CRM da Imagine**, empresa de estandes e eventos. Critério do dono, Diego, em 04/11/2026:

> o que é interessante para nos sao os fluxos, escopo funcional, regras de negocio, escopo funcional.. Estamos desenvolvendo um sistema ERP/CRM, dados de clientes, cases, entram em refinacao e treinamento, nao no desenvolvimento do que precisa ser feito

## Leia nesta ordem

**Base, uma vez:**

1. `ERP-CRM/01_DECISOES-DE-DIEGO.md`: o que já foi decidido e prevalece.
2. `ERP-CRM/TAXONOMIA.md` e `ERP-CRM/09_GLOSSARIO.md`: as etiquetas e os termos do negócio.
3. `ERP-CRM/FLUXOS/00_VISAO-GERAL.md`: o caminho do projeto, de ponta a ponta.
4. `ERP-CRM/07_ENTIDADES.md`, `ERP-CRM/08_PERFIS-E-PERMISSOES.md` e `ERP-CRM/10_ESTADOS-PRINCIPAIS.md`: ponto de partida para o banco de dados, os acessos e os estados.

**Para construir cada parte:**

5. O fluxo, em `ERP-CRM/FLUXOS/`: etapas, transições e responsáveis. Etapa não é estado: só proposta, contrato, comanda e ordem de compra têm estados mapeados.
6. O módulo, em `ERP-CRM/MODULOS/`: telas, campos, regras e notificações.
7. As pendências do módulo, em `ERP-CRM/05_PENDENCIAS-A-DECIDIR.md`, que começa pelo que mais trava.

**Só para consulta, sem ler inteiro:** `02A_ITENS-DE-FLUXO.md`, `03_ESCOPO-FUNCIONAL.md`, `04_REGRAS-DE-NEGOCIO.md` e `06_SUBSTITUIDOS-NAO-USAR.md`. Para programar buscas e filtros, use `ERP-CRM/dados/`.

## O que vale quando há diferença

1. **Decisão de Diego**, nos registros citados. Ela vence qualquer documento mais antigo, inclusive a Especificação.
2. **Fluxo em `ERP-CRM/FLUXOS/`**, para ordem e transições. Ele já traz as decisões aplicadas.
3. **Item `substituido-parcial`:** use o que está em **Continua valendo** e siga a decisão em **Mudou**.
4. **Item `vigente`**, que o documento registra como decidido.
5. **Item `proposto`**, como requisito provisório.
6. **`inferido`, `a-conferir`, `pendente` e `adiado`:** registre a dúvida antes de fechar.
7. **`substituido` e `desatualizado`:** não use.

A primeira regra vem de Diego. A ordem dos demais é proposta do Claude e ainda não foi confirmada por Diego nem pelo Pedro.

## O que fazer e o que não fazer

- Cite o `UNI-` ou a etapa de cada requisito que implementar, e anote em `ERP-CRM/ANDAMENTO/IMPLEMENTADO.md`.
- Registre as perguntas em `ERP-CRM/ANDAMENTO/DUVIDAS.md`. Não decida o que está em aberto.
- Construa permissões por perfil, nunca por nome de pessoa. Os textos citam nomes porque os documentos citam.
- Não deduza regra a partir de dados de clientes. Nomes de cliente, evento e job encontrados foram trocados por `[cliente]`, `[evento]`, `[job]` ou `[projeto]`.
- Itens com `contexto: rotina-anterior` descrevem como o trabalho era feito antes do ERP, com ferramentas como Trello e Drive. Use a regra, e não a ferramenta, e confirme em DUV-045.
- Não trate `IDEIA` como compromisso.
- Use `FONTES/` para conferir a origem, pelo campo `doc_arquivo`. Quando ele estiver vazio, `origem_fora` diz por quê.
- Não altere `FONTES/`, `REGISTROS/` nem `ERP-CRM/dados/itens.jsonl`. Os registros estão como `rascunho`, e só o Pedro muda esse estado.
- Decisão nova de Diego entra em um registro novo e em uma nova versão desta camada.

## O que ainda não está definido

Estão em `ERP-CRM/ANDAMENTO/DUVIDAS.md`: a primeira entrega, a base técnica, o tratamento dos itens `proposto` e o lugar do código.

## Limites

- **Classificação:** agentes leram os itens, e outros agentes releram parte deles. O Claude conferiu os casos de maior risco. Diego e o Pedro não revisaram item a item.
- **Fluxos, entidades e perfis:** foram montados por agentes e pelo Claude a partir dos documentos, sem revisão de Diego nem do Pedro. Quando o caminho entre etapas vem só da sequência do documento, ele aparece como `pela ordem do documento`, com seta pontilhada no diagrama.
- **`substituido-parcial`:** o que continua e o que mudou é leitura do Claude.
- **Dados pessoais e de clientes:** este repositório não deve trazer telefones, e-mails, documentos, sobrenomes nem pessoas de contato de clientes. Onde houver `[PES-nnnnn]`, o dado foi retirado e fica num documento privado fora do git. A separação foi feita por buscas e por agentes, sem revisor humano, então algo pode ter passado. Se achar, avise em `ERP-CRM/ANDAMENTO/DUVIDAS.md`.
- **Texto dos itens:** é o do catálogo, que resume os documentos. Para o detalhe, abra `doc_arquivo`.
- **`vigente`:** reflete o documento, e não uma confirmação recente de Diego.
- **Módulo:** cada item tem um só. Um requisito pode afetar outros módulos.
