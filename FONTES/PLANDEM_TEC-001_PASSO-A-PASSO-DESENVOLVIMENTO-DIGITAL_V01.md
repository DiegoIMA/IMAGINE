# Passo a passo · Desenvolvimento de soluções digitais

**DOC** PLANDEM\_TEC-001 · **VERSÃO** V01 · **DATA** 01/11/2026 · **RESPONSÁVEL** Bruno · Setor de Tecnologia e Experiências Interativas

Roteiro padrão para desenvolver as soluções digitais dos projetos da Imagine: totens interativos, automações de WhatsApp com IA, aplicativos, sites e landing pages. Cada fase termina com um ok do Bruno no ERP, e as fases com aprovação exigem o ok de quem está indicado.

---

## Visão geral das fases

| Fase | Nome | Entrega | Quem aprova |
| :---- | :---- | :---- | :---- |
| 0 | Entrada da demanda | demanda aberta no ERP | sistema |
| 1 | Descoberta | briefing técnico | Bruno |
| 2 | Proposta | escopo, prazo e custo | Comercial e Diego |
| 3 | Desenho da experiência | fluxo e telas | cliente |
| 4 | Arquitetura | ferramentas e integrações | Bruno |
| 5 | Desenvolvimento | versão funcionando | Bruno |
| 6 | Testes | relatório de testes | Bruno |
| 7 | Publicação ou instalação | solução no ar ou no local | Bruno e Produção |
| 8 | Operação no evento | suporte e monitoramento | Bruno |
| 9 | Encerramento | relatório de uso | Comercial |
| 10 | Biblioteca | solução registrada | Bruno |

---

## Fase 0 · Entrada da demanda

- [ ] A demanda é aberta no ERP a partir do projeto, com o código do projeto e a data do evento.  
- [ ] O prazo de cada fase é calculado de trás para frente, a partir da data de instalação.  
- [ ] Prazo mínimo recomendado: 30 dias antes do evento para totens e automações; 45 dias para aplicativos.

## Fase 1 · Descoberta (briefing técnico)

Perguntas obrigatórias:

- [ ] Qual o objetivo? (engajamento, captação de leads, venda, informação, entretenimento)  
- [ ] Quem é o usuário e em que situação ele usa? (visitante em pé no estande, cliente em casa, celular, totem)  
- [ ] O que a pessoa faz, passo a passo, do começo ao fim?  
- [ ] Que dados são coletados? (nome, telefone, e-mail, foto, vídeo)  
- [ ] Onde a informação chega? (WhatsApp, Instagram, e-mail, painel do cliente, RD Station)  
- [ ] Qual é a identidade visual e o tom de voz da marca?  
- [ ] Qual a duração? (só no evento ou permanente)  
- [ ] Quantas pessoas devem usar por dia? (define capacidade e infraestrutura)  
- [ ] Existe internet garantida no local? Qual o plano B?

## Fase 2 · Proposta

- [ ] Escopo: o que está incluído e o que não está.  
- [ ] Cronograma por fase.  
- [ ] Custos: horas de desenvolvimento, ferramentas e assinaturas, APIs (WhatsApp, IA), hospedagem, equipamentos.  
- [ ] Riscos: dependências de terceiros, aprovações de plataformas, internet no local.  
- [ ] Aprovação do Comercial e do Diego antes de ir ao cliente.

## Fase 3 · Desenho da experiência

- [ ] Fluxo do usuário em diagrama simples (tela por tela).  
- [ ] Rascunho das telas (wireframe) e depois o layout final com a marca.  
- [ ] Textos de cada tela, incluindo mensagens de erro e de agradecimento.  
- [ ] Tela de consentimento (LGPD e uso de imagem) quando houver coleta de dados ou gravação.  
- [ ] Aprovação do cliente pelo Portal.

## Fase 4 · Arquitetura e escolha de ferramentas

Escolher o caminho mais simples que resolve:

| Tipo de projeto | Caminho recomendado |
| :---- | :---- |
| Landing page | construtor de páginas ou site estático, com formulário ligado ao RD Station |
| Site institucional | CMS (ex.: WordPress) ou construtor, com domínio e SSL |
| Automação de WhatsApp com IA | API oficial do WhatsApp Business por um provedor autorizado \+ modelo de IA \+ fluxo de conversa |
| Totem interativo | aplicação web em tela cheia (modo quiosque), rodando num computador ou tablet |
| Gravação de vídeo e publicação | aplicação web com câmera \+ armazenamento em nuvem \+ envio por WhatsApp ou link; publicação em rede social pela conta da marca |
| Aplicativo | primeiro avaliar se um web app resolve; app de loja só quando for permanente e exigir recursos do celular |

Checklist técnico:

- [ ] Contas e acessos criados em nome da empresa ou do cliente, nunca em conta pessoal.  
- [ ] Domínio, hospedagem e certificado de segurança (SSL).  
- [ ] Integrações documentadas (o que cada uma faz e qual chave usa).  
- [ ] Chaves e senhas guardadas no cofre de senhas da empresa.  
- [ ] Plano de funcionamento sem internet ou com internet ruim (modo offline, fila de envio, roteador 4G).

## Fase 5 · Desenvolvimento

- [ ] Código e arquivos versionados num repositório da empresa (ex.: GitHub da Imagine).  
- [ ] Ambiente de teste separado do ambiente final.  
- [ ] Entregas parciais a cada semana, com vídeo curto mostrando o andamento.  
- [ ] Atualização do status no ERP a cada entrega.

## Fase 6 · Testes

- [ ] Teste de fluxo completo, do começo ao fim, várias vezes.  
- [ ] Teste em diferentes celulares e navegadores (para LP, site e web app).  
- [ ] Teste de carga: muitas pessoas usando ao mesmo tempo.  
- [ ] Teste sem internet ou com internet lenta.  
- [ ] Teste do consentimento e da exclusão de dados.  
- [ ] Teste no equipamento real (totem, tela, câmera), antes de embalar.  
- [ ] Relatório de testes anexado no ERP.

## Fase 7 · Publicação ou instalação

- [ ] Publicação do site ou da LP com domínio, SSL e métricas configuradas.  
- [ ] Para totens: instalação no local, teste com a energia e a internet do evento, teste final com o produtor de montagem.  
- [ ] Foto e vídeo da solução funcionando, anexados no ERP.  
- [ ] Manual rápido de uso para a equipe do cliente no estande.

## Fase 8 · Operação no evento

- [ ] Monitoramento diário: está funcionando? quantas pessoas usaram?  
- [ ] Contato de suporte com o produtor de montagem e com o cliente.  
- [ ] Plano de contingência: o que fazer se cair a internet, travar a tela ou falhar a integração.

## Fase 9 · Encerramento

- [ ] Relatório de uso: número de interações, leads, vídeos, mensagens e destaques.  
- [ ] Entrega dos dados ao cliente, conforme o combinado e a LGPD.  
- [ ] Desligamento ou manutenção da solução, conforme o contrato.  
- [ ] Exclusão dos dados pessoais no prazo combinado.  
- [ ] Relatório enviado pelo Comercial ao cliente.

## Fase 10 · Biblioteca de soluções

- [ ] Registro da solução com nome, descrição, fotos, vídeo, ferramentas usadas, custo real e tempo de desenvolvimento.  
- [ ] Indicação do que pode ser reaproveitado em outros projetos.  
- [ ] Sugestão de preço para oferecer como adicional.

---

## Regras gerais

1. **LGPD e uso de imagem:** toda solução que coleta dados, grava vídeo ou publica em rede social precisa de consentimento claro na tela e de regras validadas pela Maitê.  
2. **Contas da empresa:** nada é criado em conta pessoal.  
3. **Sem controle paralelo:** todo o andamento fica no ERP.  
4. **Plataformas de terceiros:** WhatsApp e redes sociais têm regras próprias e aprovações que levam tempo; isso entra no prazo.  
5. **Segurança:** senhas no cofre da empresa, acessos removidos ao fim do projeto quando for o caso.

---

*Imagine Espaços Criativos · PLANDEM\_TEC-001 V01*