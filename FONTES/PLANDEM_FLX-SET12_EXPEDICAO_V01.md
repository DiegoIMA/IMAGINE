# Setor 12 · Expedição e controle de qualidade

A Expedição recebe as peças prontas pelo app, faz uma nova verificação de qualidade com foto, embala e cola uma etiqueta com código, nome, foto e QR code. A mesma etiqueta controla o carregamento e, no pavilhão, permite achar cada peça sem desembalar até a hora da montagem.

**DOC** PLANDEM\_FLX-SET12 · **VERSÃO** V01 · proposta · **DATA** 28/10/2026 · **BASE** FLX-001 \+ ditado 28/10

## 01 · Fluxo macro

Cinco fases: recebimento, qualidade, embalagem e etiqueta, carregamento e pavilhão.

- **FASE 1** · Recebimento — EXP-E1 – E2 Peça recebida pelo QR code  
- **FASE 2** · Qualidade — EXP-E3 – E4 Foto e ok no sistema  
- **FASE 3** · Embalagem e etiqueta — EXP-E5 – E7 Etiqueta com foto e código  
- **FASE 4** · Carregamento — EXP-E8 – E9 Carregado × previsto  
- **FASE 5** · Pavilhão — EXP-E10 – E12 Desembalada e instalada  
- *Montagem*

## 02 · Fluxograma detalhado

Cada passagem da peça é registrada pela leitura do QR code.

### FASES 1 E 2 · RECEBIMENTO E QUALIDADE

- *Início · peça concluída no app (PLA-E19)*

**FASE 1 · RECEBIMENTO DAS PEÇAS**

- **EXP-E1** · Portal notifica a Expedição — peça concluída no último setor da cadência  
- **EXP-E2** · Expedição recebe a peça e lê o QR code — confere código, nome e projeto

**FASE 2 · VERIFICAÇÃO DE QUALIDADE**

- **EXP-E3** · Nova verificação de qualidade — foto da peça \+ check de ok no sistema  
- ◆ **EXP-E4** · Peça aprovada? → **se sim** segue  
  - **se não** → Volta para a produção — alerta Eduardo, Marília e Érika; entra no relatório de erros (inferido)  
- Peça liberada para embalar  
- *Segue para embalagem*

### FASES 3 E 4 · EMBALAGEM, ETIQUETA E CARREGAMENTO

**FASE 3 · EMBALAGEM E ETIQUETA**

- **EXP-E5** · Embala a peça — protege o material até a montagem  
- **EXP-E6** · Portal gera a etiqueta de expedição — código · nome do produto · foto legível da peça · QR code  
- **EXP-E7** · Cola a etiqueta na embalagem — identifica a peça sem desembalar

**FASE 4 · CARREGAMENTO**

- **EXP-E8** · Carregamento com leitura do QR code de cada volume — controle do que sobe no caminhão  
- **EXP-E9** · Portal confere carregado × previsto — lista de itens do projeto · aponta o que falta antes de sair (inferido)

### FASE 5 · NO PAVILHÃO DO EVENTO

- **EXP-E10** · Peças descarregadas no pavilhão — ficam organizadas e ainda embaladas  
- **EXP-E11** · Montador localiza a peça pela foto da etiqueta — desembala só quando vai usar  
- **EXP-E12** · Montador lê o QR code no app — peça desembalada (data e hora) e instalada de maneira correta  
- *Segue na Montagem*

## 03 · Etiqueta de expedição

A etiqueta identifica a peça embalada para que ninguém precise abrir a embalagem e manipular o material sem necessidade. Ela serve para o controle de carregamento e para o controle de montagem.

| Campo da etiqueta | Conteúdo |
| :---- | :---- |
| Código | projeto \+ item \+ subitem, o mesmo do memorial (ex.: P0123-015-02) |
| Nome do produto | como está no memorial descritivo |
| Foto | foto legível da peça, tirada na verificação de qualidade, para reconhecer sem abrir |
| QR code | leitura no carregamento e no app do montador |
| Projeto e feira | cliente, evento e estande (inferido) |
| Volume | volume 1 de 3, quando a peça vai em mais de uma embalagem (proposta) |
| Tamanho | razoável para ler de longe no pavilhão · proposta: 10 × 15 cm |

## 04 · Leituras do QR code

O mesmo código acompanha a peça da produção até a instalação. Cada leitura registra onde a peça está e quem a manipulou.

| Leitura do QR code | Quem lê | O que fica registrado |
| :---- | :---- | :---- |
| Peça pronta no setor (PLA-E18) | Líder do setor | baixa com foto e qualidade |
| Recebimento na expedição (EXP-E2) | Expedição | peça chegou à expedição |
| Verificação de qualidade (EXP-E3) | Expedição | foto e ok; ou reprovação |
| Etiqueta colada (EXP-E7) | Expedição | peça embalada e identificada |
| Carregamento (EXP-E8) | Expedição | volume carregado |
| Descarregamento no pavilhão (EXP-E10) | Montagem | volume chegou ao evento (proposta) |
| Desembalada (EXP-E12) | Montador | data e hora em que a peça foi aberta |
| Instalada (EXP-E12) | Montador | peça instalada de maneira correta |

## 05 · Composição no Portal

Quem participa deste processo e o que faz.

| Quem | Papel neste processo |
| :---- | :---- |
| Expedição | recebe as peças, faz a nova verificação de qualidade, embala, etiqueta e controla o carregamento |
| Controle de qualidade · Suellen | a verificação da expedição alimenta o relatório de conformidade (PLA-E22) (inferido) |
| Produção · Eduardo e Marília | recebem as peças reprovadas e decidem refazer |
| Planejamento · Érika | acompanha o status de cada peça e do carregamento |
| Montadores | usam o mesmo app: leem o QR code para registrar peça desembalada e instalada |

## 06 · Checklist passo a passo

O que precisa estar feito em cada fase antes de seguir.

### Fase 1 · Recebimento

*Expedição*

- [ ] **EXP-E1** Notificação de peça concluída recebida.  
- [ ] **EXP-E2** Peça recebida com leitura do QR code.

### Fase 2 · Verificação de qualidade

*Expedição*

- [ ] **EXP-E3** Foto da peça e check de ok no sistema.  
- [ ] **EXP-E4** Peça reprovada devolvida à produção, com alerta.

### Fase 3 · Embalagem e etiqueta

*Expedição*

- [ ] **EXP-E5** Peça embalada.  
- [ ] **EXP-E6** Etiqueta gerada com código, nome, foto e QR code.  
- [ ] **EXP-E7** Etiqueta colada; peça identificável sem desembalar.

### Fase 4 · Carregamento

*Expedição*

- [ ] **EXP-E8** Cada volume carregado com leitura do QR code.  
- [ ] **EXP-E9** Todos os itens do projeto carregados, sem faltas.

### Fase 5 · No pavilhão

*Montagem*

- [ ] **EXP-E10** Volumes descarregados e organizados, ainda embalados.  
- [ ] **EXP-E11** Peças localizadas pela foto e desembaladas só na hora do uso.  
- [ ] **EXP-E12** Cada peça registrada no app como desembalada e instalada.

## 07 · Validar antes de implantar

- Responsável · Quem é o responsável pela Expedição, e se a verificação de qualidade da expedição é feita pela Suellen ou pela equipe da expedição. Não informado.  
- EXP-E4 · Peça reprovada volta para o setor que fez, com alerta ao Eduardo, à Marília e à Érika, e entra no relatório de erros. Inferido.  
- EXP-E4 · Prazo para a produção corrigir uma peça reprovada na expedição. Não informado.  
- EXP-E6 · Tamanho da etiqueta (proposta: 10 × 15 cm), tipo de impressora, e se uma peça em várias embalagens leva “volume 1 de 3”. Proposta.  
- EXP-E9 · O Portal bloqueia a saída do caminhão quando falta item do projeto? Proposta.  
- EXP-E10 · Leitura do QR code no descarregamento, para registrar a chegada de cada volume ao pavilhão. Proposta.  
- Logística · Transporte, frete, motorista e horários de saída e chegada não foram detalhados. Entram neste setor ou em um setor de logística próprio? Não informado.  
- Etiqueta de produção · Quem cola a etiqueta com QR code na peça durante a produção (pergunta aberta no SET07). Não informado.  
- Montagem · Os registros de peça desembalada e instalada (EXP-E12) seguem no documento da Montagem. Na Montagem V02 (MON-E4), o QR code é lido só ao desembalar e a instalação é registrada pelo checklist (MON-E5); ajustar esta etapa na próxima revisão.

---

*Imagine Arquitetura Efêmera · PLANDEM\_FLX-SET12 V01 · proposta a partir do PLANDEM\_FLX-001 e do ditado de 28/10/2026 · numeração de setores conforme PLANDEM\_SET-001*