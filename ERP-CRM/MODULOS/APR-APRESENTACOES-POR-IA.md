---
id: ERP-MOD-APR
titulo: Módulo Apresentações por IA
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# APR · Apresentações por IA

13 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (6)

- `UNI-00373` `FLX-MICRO` `proposto` Portal gera a apresentação comercial e a argumentação de venda com mood board, storytelling e renders. _[DOC-008 · PRJ-E12 · ITM-00184]_
- `UNI-01549` `FLX-MICRO` `vigente` Depois da reunião de briefing, a IA gera uma versão da apresentação adaptada à necessidade do cliente, a partir da gravação, do Termômetro e do formulário de entrada. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02273]_
- `UNI-01550` `FLX-MICRO` `vigente` A IA identifica na reunião objetivos, desafios, problemas da última feira, objeções e oportunidades, e escreve para cada ponto um texto mostrando como a Imagine resolve aquele problema. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02274]_
- `UNI-01551` `FLX-MICRO` `vigente` A IA seleciona os cases do mesmo segmento, destaca os diferenciais ligados às dores do cliente e retira o que não interessa. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02275]_
- `UNI-01552` `FLX-MICRO` `vigente` A apresentação personalizada é enviada pelo ERP com registro de envio e de abertura e fica no histórico do cliente. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02277]_
- `UNI-01553` `FLX-MICRO` `vigente` Ao personalizar a apresentação, a IA busca as imagens do segmento e do problema do cliente e as aplica nos slides, e o vendedor confere antes do envio. _[DOC-091 · §23 Banco de imagens, Uso na apresentação · ITM-02284]_

## Módulos e telas (1)

- `UNI-01469` `ESC-MODULO` `vigente` A apresentação institucional da Imagine (roteiro PLANDEM_COM-APR-001) fica disponível no ERP para o vendedor abrir em tela cheia na reunião, e o ERP registra a data no histórico do cliente. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02266]_

## Dashboards e indicadores (1)

- `UNI-01644` `ESC-INDIC` `vigente` O ERP registra data e hora do envio, a abertura do e-mail e se o cliente abriu o link da apresentação, quantas vezes e quando. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02268]_

## Prazos (1)

- `UNI-01645` `REG-PRAZO` `vigente` Sem abertura da apresentação em 3 dias, o sistema lembra o vendedor de reenviar ou ligar. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02270]_

## Aprovações e alçadas (2)

- `UNI-01470` `REG-APROV` `vigente` Só a versão oficial da apresentação aprovada pelo Diego fica disponível no ERP, para evitar apresentações desatualizadas. _[DOC-091 · §21 Apresentação institucional dentro do ERP · ITM-02271]_
- `UNI-01472` `REG-APROV` `vigente` O vendedor confere e ajusta a apresentação personalizada antes de enviar, e nada sai sem esse ok. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02276]_

## Qualidade (1)

- `UNI-01646` `REG-QUAL` `vigente` A IA usa só dados reais da Imagine e o que o cliente disse e não inventa números, cases ou promessas. _[DOC-091 · §22 Apresentação personalizada por IA · ITM-02278]_

## Legal e fiscal (1)

- `UNI-00181.01` `REG-LEGAL` `proposto` `conf:media` Cada foto indica se pode ser usada em apresentação externa (autorização do cliente e da marca), e a IA só usa fotos liberadas. _[DOC-091 · §23 Banco de imagens para as apresentações · ITM-02283 · parte de UNI-00181]_

