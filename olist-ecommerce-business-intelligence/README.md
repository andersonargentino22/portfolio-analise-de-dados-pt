# Olist Brazilian E-Commerce Live Dashboard: 
## [Dashboard de Eficiência Logística e Proteção de Margem](https://app.powerbi.com/view?r=eyJrIjoiMTQ5MTQ3MDAtZTY1ZS00ZjA1LTgzYjktZjk2NGMzMmEzNjRkIiwidCI6IjY1OWNlMmI4LTA3MTQtNDE5OC04YzM4LWRjOWI2MGFhYmI1NyJ9)
---
## Sobre o Projeto:
### Dashboard criado com o intuito de solucionar gargalos financeiros e logísticos de E-commerce, baseado no conjunto de dados Brazilian E-Commerce (Olist).
---
## Perguntas de negócio:

## 1. Visão Comercial e Financeira

 - Qual é o impacto financeiro direto da nossa ineficiência operacional? Quanto da nossa receita está sendo exposta ou perdida devido a quebras de promessa de entrega?

 - O nosso modelo de negócio sobrevive de clientes de compra única ou estamos conseguindo reter e fazer com que eles comprem novamente?

 - Qual é o volume financeiro e absoluto de vendas que fechamos, mas não conseguimos converter em receita real devido a desistências?

 - Como a receita se comporta ao longo dos meses? Existem padrões claros de sazonalidade que exigem reforço de caixa e estoque em períodos específicos?

 - Quais são as categorias de produtos que realmente sustentam a empresa e onde devemos alocar o maior orçamento de marketing?

 - Nossa operação possui uma distribuição de receita saudável pelo país ou estamos dependentes de poucos estados (risco de mercado)?

 - Como podemos otimizar o mix de vendas? Onde estão nossos produtos estrela (alto volume de saída e alto ticket médio) e quais são apenas produtos de entrada?

 - Qual é o perfil de liquidez da empresa? Estamos muito expostos a parcelamentos no cartão de crédito ou temos entrada de dinheiro à vista no boleto?
<img width="4150" height="2400" alt="Dashboard_jpg-1" src="https://github.com/user-attachments/assets/86984c07-c3b5-4e6f-b106-bb67cd9b8c22" />


## 2. Visão Operacional e Logística

 - Qual a proporção de clientes que têm uma experiência frustrada com a nossa marca?

 - Em quais regiões o valor do nosso frete é desproporcional ao preço do produto, criando uma barreira comercial que afugenta o cliente no carrinho?

 - Existe uma correlação matemática direta provando que nossos parceiros logísticos mais lentos são os responsáveis diretos pelos cancelamentos de vendas?

 - Quais estados representam os maiores gargalos logísticos, falhando consistentemente na promessa de entrega?

 - A malha logística atual atende o país de forma equilibrada ou temos clientes aguardando prazos abusivos dependendo do seu CEP?

 - Existem nichos de produtos específicos que sofrem mais com estornos, indicando possíveis problemas crônicos de qualidade do fornecedor ou fragilidade no transporte?
<img width="4150" height="2400" alt="Dashboard_jpg-2" src="https://github.com/user-attachments/assets/c33fd708-75d9-40e8-9fc3-8d4271bfceed" />


## 3. Governança do Projeto: Verifique o [Escopo do Projeto (SOW)](https://github.com/andersonargentino22/portifolio-data-analysis/blob/30d85bb6ea0ca8df1a19e096eccddbc959dc9dc0/olist-ecommerce-business-intelligence/Assets/SOW%20-%20Brazilian%20E-Commerce.pdf) para obter escopo detalhado do projeto, entregáveis e cronograma.
   
## 4. Arquitetura Técnica:

 - Limpeza de Dados: Realizada no SQL Server (Veja as [Consultas SQL](https://github.com/andersonargentino22/portifolio-data-analysis/tree/f67a6520d2b4459617fe1f36f8272577fc9e2560/olist-ecommerce-business-intelligence/sql_scripts)), utilizando de Queries para criar visualizações das tabelas limpas, que foram importadas no Power BI.

 - Modelagem de Dados: Construída sobre um Star Schema (veja o [data_mapping](https://github.com/andersonargentino22/portifolio-data-analysis/blob/6edc0589f32cdf6568ed32a839e3195f6bdd9b89/olist-ecommerce-business-intelligence/Assets/data_mapping)). Transições de contexto de filtro e cenários de "Chasm Trap" entre tabelas Fato (v_fact_orders, v_fact_payments) foram resolvidos usando modelagem avançada em DAX, especificamente a função TREATAS.

 - ETL & Motor: Projetado para evitar Dependências Circulares dentro do motor VertiPaq através da criação de colunas de índice independentes baseadas em DAX para ordenação hierárquica personalizada.

 <img width="841" height="792" alt="405287da-1e1c-416a-8701-d06f6a5f8d3f" src="https://github.com/user-attachments/assets/0a0a030c-062c-4bfb-b497-fe78f3a002a5" />

