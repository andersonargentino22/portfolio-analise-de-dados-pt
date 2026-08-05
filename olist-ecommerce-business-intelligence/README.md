# portifolio-data-analysis


Live Dashboard: https://app.powerbi.com/view?r=eyJrIjoiMTQ5MTQ3MDAtZTY1ZS00ZjA1LTgzYjktZjk2NGMzMmEzNjRkIiwidCI6IjY1OWNlMmI4LTA3MTQtNDE5OC04YzM4LWRjOWI2MGFhYmI1NyJ9


English Version


Dashboard created to solve financial and logistical bottlenecks in e-commerce, based on the Brazilian E-Commerce (Olist) dataset. Answering the following business questions:


1. Commercial and Financial Overview

 - What is the direct financial impact of our operational inefficiency? How much of our revenue is exposed or lost due to delivery promise breaches?

 - Does our business model survive on single-purchase customers, or are we successfully retaining them for repeat purchases?

 - What is the absolute and financial volume of sales we close but fail to convert into actual revenue due to cancellations?

 - How does revenue behave across the months? Are there clear seasonality patterns requiring cash and inventory reinforcement in specific periods?

 - Which product categories truly sustain the company, and where should we allocate the largest marketing budget?

 - Does our operation have a healthy revenue distribution across the country, or are we dependent on a few states (market risk)?

 - How can we optimize our sales mix? Where are our star products (high volume and high average ticket), and which ones are merely entry-level?

 - What is the company's liquidity profile? Are we highly exposed to credit card installments, or do we have upfront cash flow via boleto?
   

2. Operational and Logistics Overview

 - What is the true size of our logistics liability? What proportion of customers have a frustrating experience with our brand?

 - On average, how long is our customer's capital tied up waiting for the purchased product?

 - In which regions is our freight cost disproportionate to the product price, creating a commercial barrier that scares the customer away at the cart?

 - Is there a direct mathematical correlation proving that our slowest logistics partners are directly responsible for sales cancellations?

 - Which states represent the biggest logistics bottlenecks, consistently failing to meet delivery promises?

 - Does the current logistics network serve the country evenly, or are customers waiting abusive timeframes depending on their zip code?

 - Are there specific product niches suffering more from chargebacks, indicating potential chronic supplier quality issues or shipping fragility?

 - How much of our working capital is currently floating and invisible on the streets, tied up in goods in transit, internal processing, or unresolved cancellations?
   

<img width="743" height="236" alt="3fd90610-85ae-4408-9aa9-b1e0fbe851be" src="https://github.com/user-attachments/assets/28317839-f7f2-4317-a939-d11688273881" />
<img width="368" height="606" alt="646dc649-ad86-47b5-9c4c-c95959c67ace" src="https://github.com/user-attachments/assets/39fb7609-a8be-4211-9962-77283e968122" />
<img width="336" height="238" alt="d3e5b230-48da-4679-be93-2c1aebae1429" src="https://github.com/user-attachments/assets/ab7e70f0-4241-44a9-94c3-85d1b79b30f4" />

3. Technical Architecture:

 - Data Cleaning: Performed in SQL Server, using Queries to create views of the cleaned tables, which were imported into Power BI.

 - Data Modeling: Built upon a Star Schema (see the [data_dictionary](https://github.com/andersonargentino22/portifolio-data-analysis/blob/daa84383a0bfb58481313bb41ea51a6b2f2305d2/olist-ecommerce-business-intelligence/Assets/data_dictionary)). Filter context transitions and "Chasm Trap" scenarios between Fact tables (v_fact_orders, v_fact_payments) were resolved using advanced DAX modeling, specifically the TREATAS function.

 - ETL & Engine: Engineered to avoid Circular Dependencies within the VertiPaq engine by creating independent DAX-based index columns for custom hierarchical sorting.

 <img width="841" height="792" alt="405287da-1e1c-416a-8701-d06f6a5f8d3f" src="https://github.com/user-attachments/assets/0a0a030c-062c-4bfb-b497-fe78f3a002a5" />
 

Versão em Português

Dashboard criado com o intuito de solucionar gargalos financeiros e logísticos de E-commerce, baseado no conjunto de dados Brazilian E-Commerce (Olist).
Respondendo as seguintes perguntas de negócio:

1. Visão Comercial e Financeira

 - Qual é o impacto financeiro direto da nossa ineficiência operacional? Quanto da nossa receita está sendo exposta ou perdida devido a quebras de promessa de entrega?

 - O nosso modelo de negócio sobrevive de clientes de compra única ou estamos conseguindo reter e fazer com que eles comprem novamente?

 - Qual é o volume financeiro e absoluto de vendas que fechamos, mas não conseguimos converter em receita real devido a desistências?

 - Como a receita se comporta ao longo dos meses? Existem padrões claros de sazonalidade que exigem reforço de caixa e estoque em períodos específicos?

 - Quais são as categorias de produtos que realmente sustentam a empresa e onde devemos alocar o maior orçamento de marketing?

 - Nossa operação possui uma distribuição de receita saudável pelo país ou estamos dependentes de poucos estados (risco de mercado)?

 - Como podemos otimizar o mix de vendas? Onde estão nossos produtos estrela (alto volume de saída e alto ticket médio) e quais são apenas produtos de entrada?

 - Qual é o perfil de liquidez da empresa? Estamos muito expostos a parcelamentos no cartão de crédito ou temos entrada de dinheiro à vista no boleto?

2. Visão Operacional e Logística

 - Qual é o tamanho real do nosso passivo logístico? Qual a proporção de clientes que têm uma experiência frustrada com a nossa marca?

 - Em média, quanto tempo nosso cliente fica com o capital retido esperando pelo produto que comprou?

 - Em quais regiões o valor do nosso frete é desproporcional ao preço do produto, criando uma barreira comercial que afugenta o cliente no carrinho?

 - Existe uma correlação matemática direta provando que nossos parceiros logísticos mais lentos são os responsáveis diretos pelos cancelamentos de vendas?

 - Quais estados representam os maiores gargalos logísticos, falhando consistentemente na promessa de entrega?

 - A malha logística atual atende o país de forma equilibrada ou temos clientes aguardando prazos abusivos dependendo do seu CEP?

 - Existem nichos de produtos específicos que sofrem mais com estornos, indicando possíveis problemas crônicos de qualidade do fornecedor ou fragilidade no transporte?

 - Quanto do nosso capital de giro no momento está flutuando e invisível na rua, preso em mercadorias em trânsito, processamento interno ou cancelamentos não resolvidos?

<img width="743" height="236" alt="3fd90610-85ae-4408-9aa9-b1e0fbe851be" src="https://github.com/user-attachments/assets/28317839-f7f2-4317-a939-d11688273881" />
<img width="368" height="606" alt="646dc649-ad86-47b5-9c4c-c95959c67ace" src="https://github.com/user-attachments/assets/39fb7609-a8be-4211-9962-77283e968122" />
<img width="336" height="238" alt="d3e5b230-48da-4679-be93-2c1aebae1429" src="https://github.com/user-attachments/assets/ab7e70f0-4241-44a9-94c3-85d1b79b30f4" />

3. Arquitetura Técnica:

 - Limpeza de Dados: Realizada no SQL Server, utilizando de Queries para criar visualizações das tabelas limpas, que foram importadas no Power BI.

 - Modelagem de Dados: Construída sobre um Star Schema (vea o [data_dictionary](https://github.com/andersonargentino22/portifolio-data-analysis/blob/daa84383a0bfb58481313bb41ea51a6b2f2305d2/olist-ecommerce-business-intelligence/Assets/data_dictionary)). Transições de contexto de filtro e cenários de "Chasm Trap" entre tabelas Fato (v_fact_orders, v_fact_payments) foram resolvidos usando modelagem avançada em DAX, especificamente a função TREATAS.

 - ETL & Motor: Projetado para evitar Dependências Circulares dentro do motor VertiPaq através da criação de colunas de índice independentes baseadas em DAX para ordenação hierárquica personalizada.

 <img width="841" height="792" alt="405287da-1e1c-416a-8701-d06f6a5f8d3f" src="https://github.com/user-attachments/assets/0a0a030c-062c-4bfb-b497-fe78f3a002a5" />

