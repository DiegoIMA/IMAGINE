---
id: ERP-MOD-D3F
titulo: Módulo Impressão 3D
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# D3F · Impressão 3D

17 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (1)

- `UNI-01498` `FLX-MACRO` `proposto` Fluxo 3D Farm: briefing rápido pelo Portal, modelagem e render para aprovação, protótipo pela validação de amostras, produção com acompanhamento no Portal, e entrega ou instalação com o estande. _[DOC-091 · §15 Frente 1 Estúdio 3D Farm, Metodologia · ITM-02207]_

## Etapas do fluxo (3)

- `UNI-01563` `FLX-MICRO` `vigente` O tempo de impressão de cada peça entra no cronograma de produção, com a fila de cada impressora, para o Planejamento ver capacidade e prazos. _[DOC-091 · §36 Impressão 3D, Planejamento · ITM-02399]_
- `UNI-01564` `FLX-MICRO` `vigente` A peça 3D segue o roadmap com QR code, foto e ok em cada etapa: impressão, acabamento, expedição e montagem. _[DOC-091 · §36 Impressão 3D, Checklist até a montagem · ITM-02400]_
- `UNI-01565` `FLX-MICRO` `vigente` O consumo de filamento por projeto alimenta a planilha de custos e a lista de compra de material. _[DOC-091 · §36 Impressão 3D, Custos e compras · ITM-02401]_

## Módulos e telas (2)

- `UNI-00684.01` `ESC-MODULO` `proposto` Estúdio 3D Farm oferece peças customizadas com a marca do cliente: logos 3D, displays, troféus, expositores, decoração, peças de showroom e PDV, brindes e miniaturas. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 1 Estúdio 3D Farm, o que oferecer · ITM-02205 · parte de UNI-00684]_
- `UNI-00755.01` `ESC-MODULO` `proposto` O setor de Impressão 3D é um novo setor produtivo com o mesmo fluxo dos demais: código único, ficha técnica, foto, ok e checklist até a expedição e a montagem. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm) · ITM-02396 · parte de UNI-00755]_

## Perfis e responsáveis (2)

- `UNI-00755` `ESC-PERFIL` `vigente` Impressão 3D fica com o Pedro, usa impressoras Bambu Lab e lê o arquivo fatiado. _[DOC-002 · §35 a 42 Impressão 3D · ITM-00044]_
  - Requisitos separados deste item: `UNI-00755.01`, `UNI-00755.02`, `UNI-00755.03`, `UNI-00755.04`
- `UNI-00755.02` `ESC-PERFIL` `proposto` O responsável pelo setor de Impressão 3D é Pedro, e o equipamento são impressoras Bambu Lab com o software Bambu Studio. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm), responsável e equipamento · ITM-02402 · parte de UNI-00755]_

## Entidades e campos (3)

- `UNI-00684` `ESC-DADOS` `vigente` Briefing de Estúdio 3D Farm: peças (tipo, quantidade, tamanho, material, cor), arquivos, uso e entrega com data, embalagem e pacote anual. _[DOC-019 · Parte B, 5 Estúdio 3D Farm · ITM-00573]_
  - Requisitos separados deste item: `UNI-00684.01`, `UNI-00684.02`, `UNI-00684.03`
- `UNI-00684.03` `ESC-DADOS` `a-conferir` `conf:media` O briefing de 3D Farm pergunta peças, quantidades, tamanho, material, arquivos da marca e uso; o de Produção de evento pergunta formato, local e datas, serviços, fornecedores do cliente, quem paga o quê, licenças e orçamento geral. _[DOC-091 · §41 Categorias de serviço, tabela de perguntas específicas (Estúdio 3D Farm e Produção de evento) · ITM-02456 · parte de UNI-00684]_
  - **Decisão (Ver decisão do item 15):** O formulário de briefing será definido depois, e os dados ficam guardados. **Em aberto:** Quantos blocos e quem preenche. Registro: `REGISTROS/decisao__20261104-1043-formulario-briefing-uw8n.md`
- `UNI-01491` `ESC-DADOS` `vigente` A IA gera a ficha da peça 3D com o mesmo código do projeto: material, quantidade, tempo, custo de material e máquina, acabamento posterior e sequência de setores. _[DOC-091 · §36 Impressão 3D, Ficha técnica 3D · ITM-02398]_

## Integrações (3)

- `UNI-00755.03` `ESC-INTEG` `proposto` O caminho mais simples é o ERP ler o arquivo .gcode.3mf exportado pelo Bambu Studio, que traz por placa tempo, filamento em metros e gramas, material, cor e modelo da impressora, e preencher a ficha quando o Pedro sobe a peça. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm), forma de integração, item 1 · ITM-02403 · parte de UNI-00755]_
- `UNI-00755.04` `ESC-INTEG` `proposto` `conf:media` O controle direto das impressoras Bambu por software de terceiros tem limitações impostas pelo fabricante, e a integração de leitura de dados é a mais segura para começar. _[DOC-091 · §36 Setor de Impressão 3D (3D Farm), forma de integração, item 3 · ITM-02405 · parte de UNI-00755]_
- `UNI-01490` `ESC-INTEG` `vigente` O ERP se conecta ao software de fatiamento ou gerenciador da farm, por integração direta ou leitura de arquivos exportados, e importa arquivo 3D, impressora, material e cor, filamento, tempo, placas e configurações de cada peça. _[DOC-091 · §36 Impressão 3D, Integração com o software da impressora · ITM-02397]_

## Regras operacionais (1)

- `UNI-00684.02` `REG-OPER` `proposto` `conf:media` Venda das peças 3D: opcional na proposta do estande com render e preço, peças fora da feira para showroom ou PDV, e pacote anual com número de peças e preço melhor. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 1 Estúdio 3D Farm, como vender · ITM-02206 · parte de UNI-00684]_

## Pendências (1)

- `UNI-00901` `PEND` `pendente` Impressão 3D: falta definir o modelo das impressoras e o gerenciador de farm. _[DOC-002 · §45 Pendências · ITM-00065]_

## Ideias sem compromisso (1)

- `UNI-01492` `IDEIA` `proposto` Para acompanhar fila e status em tempo real, avaliar gerenciadores de farm com API, como SimplyPrint (API em planos pagos), Bambuddy local ou o Bambu Farm Manager. _[DOC-091 · §36 Impressão 3D, Forma de integração · ITM-02404]_

