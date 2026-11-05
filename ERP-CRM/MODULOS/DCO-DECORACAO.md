---
id: ERP-MOD-DCO
titulo: Módulo Decoração
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# DCO · Decoração

8 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Etapas do fluxo (2)

- `UNI-01566` `FLX-MICRO` `vigente` Quando o projeto tem itens de decoração, o sistema abre a demanda do setor de Decoração, com o mesmo código único e prazos do cronograma reverso. _[DOC-091 · §37 Decoração, Demanda automática · ITM-02409]_
- `UNI-01567` `FLX-MICRO` `vigente` Cada item de decoração segue com QR code, foto e ok em produção, montagem decorativa, embalagem, expedição e montagem no local, com atenção especial à embalagem de itens frágeis. _[DOC-091 · §37 Decoração, Checklist até a montagem · ITM-02413]_

## Módulos e telas (1)

- `UNI-00756.01` `ESC-MODULO` `proposto` O setor de Decoração é um novo setor produtivo para itens artesanais e decorativos, principalmente em projetos de Natal e cenografia temática. _[DOC-091 · §37 Setor de Decoração · ITM-02407 · parte de UNI-00756]_

## Perfis e responsáveis (1)

- `UNI-00756` `ESC-PERFIL` `vigente` `conf:media` Decoração é do André (itens artesanais de Natal e temáticos); criação gráfica é do Beto (facas, preparação e correção de arquivos). _[DOC-002 · §35 a 42 Decoração e criação gráfica · ITM-00045]_
  - Requisitos separados deste item: `UNI-00756.01`, `UNI-00756.02`

## Entidades e campos (2)

- `UNI-00681` `ESC-DADOS` `vigente` Briefing de Cenografia e decoração: local, normas do local, conceito, público e uso, itens, e segurança e operação (laudos, plantão, seguro, desmontagem). _[DOC-019 · Parte B, 2 Cenografia e decoração · ITM-00570]_
- `UNI-01493` `ESC-DADOS` `vigente` A ficha de decoração de cada item traz medidas, materiais, cores e acabamentos, quantidade, foto de referência, processo artesanal e quem executa (costureira, decorador, montagem de objetos). _[DOC-091 · §37 Decoração, Ficha técnica de decoração · ITM-02410]_

## Cálculos e critérios (1)

- `UNI-01667` `REG-CALC` `vigente` A IA calcula os materiais por item de decoração (tecidos, fitas, enchimento, galhos, adornos, colas, fixações) e soma por projeto para a base de compras. _[DOC-091 · §37 Decoração, Materiais e compras · ITM-02411]_

## Regras operacionais (1)

- `UNI-01668` `REG-OPER` `vigente` `conf:media` Costureiras e decoradores, próprios ou terceirizados, entram na escala e no pagamento como os demais terceirizados. _[DOC-091 · §37 Decoração, Mão de obra · ITM-02412]_

