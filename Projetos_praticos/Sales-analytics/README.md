EM PRODUÇÃO!

📋 Descrição Geral

Este projeto tem como objetivo aplicar conceitos de engenharia de dados e análise exploratória utilizando Python, SQL (BigQuery) e visualizações com Matplotlib e Seaborn. O foco é compreender padrões de vendas, lucratividade e comportamento de clientes a partir de um dataset corporativo.

🧹 Limpeza e Preparação dos Dados:

- Uniformização de valores string (colunas categóricas padronizadas).

- Conversão da coluna sales_date de object para datetime.

- Criação da coluna derivada year_month para análises temporais futuras.

🗄️ Consultas SQL (BigQuery):

As seguintes consultas foram executadas para análise de métricas-chave:

- [Top 10 produtos mais lucrativos](sql/query2_top_vendas_produtos.sql)
- [Lucro por setor de venda](sql/query3_vendas_categoria.sql)
- [Lucro por região](sql/query4_vendas_região.sql)
- [Lucro por representante de venda](sql/query5_vendas_rep.sql)
- [Outras Queries](https://github.com/MacViniDss/DataScience-projects/tree/main/Projetos_praticos/Sales-analytics/sql)
- [Resultados das Queries](https://github.com/MacViniDss/DataScience-projects/tree/main/Projetos_praticos/Sales-analytics/resultado_consultas)

📊 Visualizações (Matplotlib & Seaborn):
Foram gerados diversos gráficos para auxiliar na análise:

<img src= "plots/lucro_rep.png" width="400">

<img src= "plots/qtde_vendas_rep.png" width="400">

<img src= "plots/qtde_vendas_região.png" width="400">

Entre outras em: [Plots](https://github.com/MacViniDss/DataScience-projects/tree/main/Projetos_praticos/Sales-analytics/plots)

🧩 Ferramentas Utilizadas:

Python 3.10+

Pandas (limpeza e agregações)

Matplotlib / Seaborn (visualizações)

Google BigQuery (armazenamento e consultas SQL)

Jupyter Notebook (ambiente de análise)

📈 Principais Conclusões
🔹 A partir das consultas SQL:

- O produto id_1090 é o mais vendido, porém o mais lucrativo é o id_1099, na 4ª posição em volume.

- O representante David lidera em lucro e volume de vendas; Eve e Bob seguem logo atrás. Charlie apresenta desempenho inferior, recomenda-se treinamento.

- A Região Norte é a mais lucrativa. Já o Sul apresenta baixo volume de vendas — é necessário investigar causas e criar estratégias regionais.

- Roupas e móveis são os setores mais rentáveis; o setor alimentício precisa de reavaliação.

- Vendas online e físicas possuem desempenho semelhante.

- Janeiro mostra alta lucratividade, mas há uma queda de ~97% ao longo de 12 meses, possivelmente devido a falhas de dados ou decisões de negócio equivocadas.

🔹 A partir da análise MultiIndex (Pandas):

- Clientes novos gastam mais com roupas que clientes recorrentes.

- Região Norte se beneficia de novos clientes, enquanto clientes antigos preferem lojas físicas.

- Norte lidera em vendas de roupas (1939 itens), seguido pelo Oeste com destaque em móveis (1889 itens).

- Setor alimentício é mais forte no Leste e Sul (3040 itens) contra 2568 (Norte/Oeste).

- Desempenho por representante e região:

  - Oeste: Bob → David

  - Sul: David → Bob

  - Norte: Eve → Charlie

  - Leste: Bob → Daniel

- Alice apresenta desempenho fraco em quase todas as regiões.

- David é líder em vendas online, Bob em vendas físicas.

- Clientes usuais apresentam queda nas visitas mensais (de ~1000 para 800 ao longo do ano).
