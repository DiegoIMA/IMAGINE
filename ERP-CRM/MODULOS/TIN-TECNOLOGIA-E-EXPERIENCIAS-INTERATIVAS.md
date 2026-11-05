---
id: ERP-MOD-TIN
titulo: Módulo Tecnologia e experiências interativas
tipo: GUIA-PARA-IA
versao: V02
criado_em: 2026-11-04
criado_por: Claude (a pedido de Diego [PES-00001])
base: IMG-CAD-006 V10
---

# TIN · Tecnologia e experiências interativas

32 itens de desenvolvimento. Como ler as etiquetas: `ERP-CRM/TAXONOMIA.md`. A ordem das etapas está em `ERP-CRM/FLUXOS/`.

## Fluxo macro (1)

- `UNI-00273` `FLX-MACRO` `proposto` Desenvolvimento digital tem 11 fases (0 a 10): entrada, descoberta, proposta, desenho da experiência, arquitetura, desenvolvimento, testes, publicação, operação no evento, encerramento e biblioteca. _[DOC-004 · Visão geral das fases · ITM-00084]_

## Etapas do fluxo (13)

- `UNI-00333` `FLX-MICRO` `proposto` Fase 0: a demanda é aberta no ERP a partir do projeto, com código do projeto e data do evento; prazos das fases são calculados de trás para frente a partir da instalação. _[DOC-004 · Fase 0 Entrada da demanda · ITM-00086]_
  - Requisitos separados deste item: `UNI-00333.01`
- `UNI-00333.01` `FLX-MICRO` `proposto` `conf:media` Quando o projeto prevê uma experiência interativa, o sistema abre a demanda ao Bruno, com prazo pelo cronograma reverso. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, fase 0 · ITM-02422 · parte de UNI-00333]_
- `UNI-00334` `FLX-MICRO` `proposto` Fase 1: briefing técnico com perguntas obrigatórias sobre objetivo, usuário, jornada, dados coletados, destino da informação, identidade visual, duração, volume diário e internet no local com plano B. _[DOC-004 · Fase 1 Descoberta · ITM-00088]_
- `UNI-00335` `FLX-MICRO` `proposto` Fase 2: proposta traz escopo, cronograma por fase, custos (horas, ferramentas, APIs, hospedagem, equipamentos) e riscos, e precisa de aprovação do Comercial e do Diego antes de ir ao cliente. _[DOC-004 · Fase 2 Proposta · ITM-00089]_
- `UNI-00336` `FLX-MICRO` `proposto` Fase 3: fluxo do usuário tela por tela, wireframe e layout final, textos de cada tela e tela de consentimento (LGPD e uso de imagem) quando houver coleta; cliente aprova pelo Portal. _[DOC-004 · Fase 3 Desenho da experiência · ITM-00090]_
- `UNI-00337` `FLX-MICRO` `proposto` Fase 5: código versionado em repositório da empresa, ambiente de teste separado, entregas parciais semanais com vídeo curto e status atualizado no ERP. _[DOC-004 · Fase 5 Desenvolvimento · ITM-00093]_
- `UNI-00338` `FLX-MICRO` `proposto` Fase 6: testes de fluxo completo, celulares e navegadores, carga, sem internet, consentimento e exclusão de dados, e no equipamento real antes de embalar; relatório anexado no ERP. _[DOC-004 · Fase 6 Testes · ITM-00094]_
- `UNI-00339` `FLX-MICRO` `proposto` Fase 7: publicação com domínio, SSL e métricas, ou instalação de totem com teste final com o produtor de montagem; foto e vídeo anexados no ERP e manual rápido para o cliente. _[DOC-004 · Fase 7 Publicação ou instalação · ITM-00095]_
- `UNI-00340` `FLX-MICRO` `proposto` Fase 8: monitoramento diário de funcionamento e uso, contato de suporte com produtor de montagem e cliente, e plano de contingência para queda de internet, tela ou integração. _[DOC-004 · Fase 8 Operação no evento · ITM-00096]_
- `UNI-00341` `FLX-MICRO` `proposto` Fase 9: relatório de uso enviado pelo Comercial, entrega de dados ao cliente conforme LGPD, desligamento ou manutenção conforme contrato e exclusão dos dados pessoais no prazo combinado. _[DOC-004 · Fase 9 Encerramento · ITM-00097]_
- `UNI-00342` `FLX-MICRO` `proposto` Fase 10: a solução é registrada com nome, descrição, mídia, ferramentas, custo real e tempo, com indicação de reaproveitamento e sugestão de preço como adicional. _[DOC-004 · Fase 10 Biblioteca de soluções · ITM-00098]_
  - Requisitos separados deste item: `UNI-00342.01`
- `UNI-00342.01` `FLX-MICRO` `proposto` `conf:media` Cada aplicação desenvolvida fica registrada para ser reaproveitada e oferecida em novos projetos como adicional. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, fase 10 · ITM-02427 · parte de UNI-00342]_
- `UNI-00757.02` `FLX-MICRO` `proposto` Ao abrir a demanda, a IA lê o briefing e propõe o caminho técnico (ferramentas, integrações, soluções já feitas, prazo, custo e riscos), seguindo o passo a passo PLANDEM_TEC-001. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, assistente técnico da IA · ITM-02428 · parte de UNI-00757]_

## Módulos e telas (3)

- `UNI-00013` `ESC-MODULO` `vigente` Inovação e Tecnologia inclui Estúdio 3D Farm, leads, contagem de público, mapa de calor e fornecedores em cotação. _[DOC-003 · Mapa, rodapé Inovação e Tecnologia · ITM-00082]_
  - Requisitos separados deste item: `UNI-00013.01`, `UNI-00013.02`, `UNI-00013.03`, `UNI-00013.04`
- `UNI-00013.01` `ESC-MODULO` `proposto` Nova divisão de Inovação e Tecnologia, em duas frentes (Estúdio 3D Farm e tecnologia de performance do estande), oferecida ao cliente que já compra estandes, feiras e eventos. _[DOC-091 · §15 Divisão de Inovação e Tecnologia Imagine · ITM-02204 · parte de UNI-00013]_
- `UNI-00013.02` `ESC-MODULO` `proposto` Frente 2, tecnologia de performance: painel no Portal ao fim da feira com captação de leads por QR code do crachá, contagem de público, mapa de calor com IA e fluxo no pavilhão. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 tecnologia de performance · ITM-02208 · parte de UNI-00013]_

## Perfis e responsáveis (3)

- `UNI-00757` `ESC-PERFIL` `vigente` Tecnologia é do Bruno: experiências interativas, assistente técnico da IA e passo a passo PLANDEM_TEC-001. _[DOC-002 · §35 a 42 Tecnologia · ITM-00046]_
  - Requisitos separados deste item: `UNI-00757.01`, `UNI-00757.02`, `UNI-00757.03`
- `UNI-00757.01` `ESC-PERFIL` `proposto` O responsável pelo setor de Tecnologia e Experiências Interativas é Bruno, setor complementar com demandas paralelas no mesmo fluxo de planejamento, integrado à Divisão de Inovação e Tecnologia. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas · ITM-02421 · parte de UNI-00757]_
- `UNI-01406` `ESC-PERFIL` `vigente` `conf:media` `rotina-anterior` Bruno [PES-00007]: Growth Solutions (EQP-006). _[DOC-033 · §5.6.2 EQP-006 · ITM-01032]_
  - Origem fora do repositório: Cadastro de equipe: dado pessoal, fica fora de propósito.

## Entidades e campos (2)

- `UNI-00683` `ESC-DADOS` `vigente` Briefing de Tecnologia: objetivo e tipo, usuário e volume por dia, dados coletados e responsável LGPD, infraestrutura e plano B, duração e suporte. _[DOC-019 · Parte B, 4 Tecnologia · ITM-00572]_
- `UNI-01494` `ESC-DADOS` `vigente` A ficha técnica da solução tem objetivo da experiência, roteiro do usuário, telas, integrações (WhatsApp, Instagram, IA), equipamentos, fornecedores e custos. _[DOC-091 · §39 Tecnologia, Ficha técnica da solução · ITM-02423]_

## Dashboards e indicadores (1)

- `UNI-00633` `ESC-INDIC` `proposto` `conf:media` Métricas pedidas: entradas por horário, tempo de permanência, mapa de calor interno e, se possível, passantes versus entradas. _[DOC-024 · Texto, O que precisamos medir · ITM-00636]_
  - Origem fora do repositório: E-mail a fornecedor: não entrou no repositório.

## Requisitos técnicos (3)

- `UNI-00013.04` `TEC` `proposto` `conf:media` Recomendação ajustada: fluxo no pavilhão por Wi-Fi e Bluetooth perde força; priorizar câmeras com IA para contagem e mapa de calor. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 · ITM-02213 · parte de UNI-00013]_
- `UNI-00737` `TEC` `proposto` Caminho recomendado por tipo: landing page em construtor ou site estático com RD Station; site em CMS; WhatsApp com IA via API oficial; totem em web app modo quiosque; app só se web app não resolver. _[DOC-004 · Fase 4 Arquitetura · ITM-00091]_
- `UNI-00738` `TEC` `proposto` Checklist técnico: contas em nome da empresa ou do cliente, domínio e SSL, integrações documentadas, chaves no cofre de senhas e plano para internet ruim (modo offline, fila de envio, roteador 4G). _[DOC-004 · Fase 4 Checklist técnico · ITM-00092]_

## Prazos (1)

- `UNI-00068` `REG-PRAZO` `proposto` Prazo mínimo recomendado: 30 dias antes do evento para totens e automações e 45 dias para aplicativos. _[DOC-004 · Fase 0 Entrada da demanda · ITM-00087]_

## Aprovações e alçadas (3)

- `UNI-00100` `REG-APROV` `proposto` Cada fase termina com ok do Bruno no ERP; aprovam também Comercial e Diego (proposta), cliente (desenho), Produção (publicação) e Comercial (encerramento). _[DOC-004 · Visão geral das fases · ITM-00085]_
  - Requisitos separados deste item: `UNI-00100.01`
- `UNI-00100.01` `REG-APROV` `proposto` `conf:media` As etapas da experiência interativa são pesquisa e proposta, aprovação interna e do cliente, desenvolvimento, teste interno, teste no local, operação no evento e relatório de uso, cada uma com ok do Bruno no sistema. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas · ITM-02424 · parte de UNI-00100]_
- `UNI-00757.03` `REG-APROV` `proposto` `conf:media` O Bruno avalia, ajusta e decide a proposta técnica sugerida pela IA, que aprende com as escolhas e resultados de cada projeto. _[DOC-091 · §39 Setor de Tecnologia e Experiências Interativas, assistente técnico da IA · ITM-02429 · parte de UNI-00757]_

## Legal e fiscal (1)

- `UNI-00178.01` `REG-LEGAL` `proposto` `conf:media` LGPD: contagem e mapa de calor de forma anônima; identificação só com aviso e consentimento do visitante; validar com a Maitê. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 · ITM-02209 · parte de UNI-00178]_

## Pendências (1)

- `UNI-00013.03` `PEND` `pendente` Desenvolver ou contratar está a decidir: leads podem ser internos com IA, contagem e mapa de calor em modelo híbrido, fluxo no pavilhão com fornecedor especializado; pesquisa de custos pendente. _[DOC-091 · §15 Divisão de Inovação e Tecnologia, Frente 2 · ITM-02210 · parte de UNI-00013]_

