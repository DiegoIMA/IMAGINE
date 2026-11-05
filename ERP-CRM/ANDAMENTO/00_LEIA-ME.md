# Andamento do desenvolvimento

É aqui que quem constrói o sistema conversa com a especificação, sem alterar os dados de origem.

| Arquivo | Para quê | Quem escreve |
|---|---|---|
| `DUVIDAS.md` | Perguntas que só Diego ou o Pedro podem responder | IA que desenvolve; Diego responde |
| `IMPLEMENTADO.md` | Quais requisitos já têm código, e onde | IA que desenvolve |

## Regras

1. Encontrou item `pendente`, `inferido`, `a-conferir`, `adiado`, ou duas regras que brigam: registre em `DUVIDAS.md`. Não decida por conta própria.
2. Enquanto espera, construa o que não depende da resposta. Quando a dúvida é de parâmetro, como prazo ou percentual, deixe configurável e siga.
3. Resposta de Diego em `DUVIDAS.md` serve para continuar o trabalho. Para valer como decisão, ela entra em um registro novo e em nova versão de `ERP-CRM/01_DECISOES-DE-DIEGO.md`.
4. Não edite `ERP-CRM/dados/itens.jsonl`, `FONTES/` nem `REGISTROS/`.
5. Não coloque dados pessoais nem dados de clientes nestes arquivos.
