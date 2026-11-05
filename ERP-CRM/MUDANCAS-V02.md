---
id: ERP-MUDANCAS-V02
titulo: O que mudou na V02
tipo: GUIA-PARA-IA
versao: V01
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
---

# O que mudou na V02

Revisão final pedida por Diego em 04/11/2026, olhando o material como quem constrói o sistema. A lista item a item está em `ERP-CRM/dados/mudancas-V02.jsonl`. O histórico do git começa nesta versão, para que nomes de clientes e links do Drive da V01 não vão ao servidor. A V01 fica guardada fora do repositório.

| # | Problema na V01 | O que mudou | Onde |
|---:|---|---|---|
| 1 | Itens marcados como "não usar", embora a decisão mudasse só uma parte, como a sigla. | 46 dos 53 substituídos viraram `substituido-parcial`, com **Continua valendo** e **Mudou**. Os outros 7 continuam fora por inteiro. Outros 5 requisitos separados também têm essa etiqueta. | `dados/itens.jsonl`, `06_SUBSTITUIDOS-NAO-USAR.md` |
| 2 | Fluxos só por tipo e módulo, sem ordem e sem as decisões aplicadas. | 20 fluxos com 274 etapas em ordem de execução, diagrama, responsável, perfis, prazo, gatilho, próxima etapa, decisões e itens. | `FLUXOS/`, `dados/fluxos.jsonl` |
| 3 | 387 requisitos presos no campo `complemento`, invisíveis nos filtros. | Cada um virou item próprio, como `UNI-00752.03`, com tipo, módulo e vigência. O total de itens passou de 1.119 para 1.503. | `dados/itens.jsonl` |
| 4 | Sem lista de entidades, de perfis nem de estados. | 109 entidades, 41 perfis com matriz por módulo, e estados de proposta, contrato, comanda e ordem de compra. São proposta provisória. | `07_ENTIDADES.md`, `08_PERFIS-E-PERMISSOES.md`, `10_ESTADOS-PRINCIPAIS.md` |
| 5 | 102 itens sem origem no repositório e 3 itens de job real. | Dois extratos limpos deram origem a 84 itens, e os 15 restantes dizem por que a origem ficou fora. Os 3 itens de job foram para treinamento. | `FONTES/`, campo `origem_fora` |
| 6 | Entrada pesada, títulos vazios, aviso errado sobre a verificação e pendências sem prioridade. | Nova ordem de leitura, por módulo. Títulos corrigidos. Instalador e verificação no servidor. Pendências por impacto. Glossário e pasta de andamento. | `00_COMECE-AQUI.md`, `05_PENDENCIAS-A-DECIDIR.md`, `09_GLOSSARIO.md`, `ANDAMENTO/`, `ferramentas/` |
| 7 | Nomes de cliente, evento e job em itens e fontes, além de links do Drive. | Nomes trocados por `[cliente]`, `[evento]`, `[job]` e `[projeto]`. Campo `registro_drive` retirado, porque `registro` aponta para `REGISTROS/`. A verificação passa a barrar links. | `dados/`, `FONTES/`, `ferramentas/` |
| 8 | Rotina anterior ao ERP misturada aos requisitos, e registros de escopo sem citação. | Etiqueta `rotina-anterior` nos itens do IMG-PAD-002. Registros de escopo em `01_DECISOES-DE-DIEGO.md`. | `dados/itens.jsonl`, `01_DECISOES-DE-DIEGO.md` |

## Alteração em `FONTES/`

`FONTES/` são cópias de trabalho: os originais continuam com Diego. Nesta versão, entraram dois extratos, e cinco arquivos tiveram só a troca de nomes de cliente, evento e job.

## Quem fez o quê

- **Substituídos parciais:** leitura do Claude, item a item, corrigida depois da revisão independente.
- **Requisitos separados e impacto das pendências:** classificados por agentes.
- **Fluxos, entidades e perfis:** montados por agentes, com passagens entre setores conferidas pelo Claude.
- **Estados principais:** escritos pelo Claude a partir dos itens e dos fluxos.
- **Extratos:** revisados linha por linha por um agente, que tirou nomes de clientes, jobs, links e identificadores.
- **Revisão independente:** um agente testou a construção e conferiu amostras. Os achados altos e médios foram tratados. Amostra não mede a taxa de erro do conjunto.
- **Revisão humana:** nenhuma. Diego e o Pedro ainda não conferiram esta versão.

## Mudanças de arquivo

- `02_FLUXOS.md` agora é o índice dos fluxos. A lista antiga foi para `02A_ITENS-DE-FLUXO.md`.
- O campo `complemento` ficou vazio. Use `filhos` e `pai`.
- Os campos `registro_drive` saíram de `itens.jsonl` e `decisoes.jsonl`.
